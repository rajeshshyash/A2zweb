package com.a2z.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.social.MissingAuthorizationException;
import org.springframework.social.connect.support.ConnectionFactoryRegistry;
import org.springframework.social.google.api.impl.GoogleTemplate;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.social.twitter.api.TimelineOperations;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@RequestMapping(value = "/social/google")
@Controller
public class GooglePlusController<GoogleApi> {

	private static final String PUBLISH_SUCCESS = "success";

	private static final String GOOGLE = "google";

	@Autowired
	private ConnectionFactoryRegistry connectionFactoryRegistry;

	@Autowired
	private OAuth2Parameters oAuth2Parameters;

	@Value("${google.callback}")
	private String callback;

	@RequestMapping(value = "/signin", method = RequestMethod.GET)
	public ModelAndView signin(HttpServletRequest request,HttpServletResponse response) throws Exception {

		GoogleConnectionFactory googleConnectionFactory = (GoogleConnectionFactory) connectionFactoryRegistry.getConnectionFactory(GOOGLE);
		OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations();
		oAuth2Parameters.setScope("profile");
		String authorizeUrl = oauthOperations.buildAuthenticateUrl(GrantType.AUTHORIZATION_CODE, oAuth2Parameters);
		RedirectView redirectView = new RedirectView(authorizeUrl, true, true,true);

		return new ModelAndView(redirectView);
	}

	@RequestMapping(value = "/callback", method = RequestMethod.GET)
	@ResponseBody
	public String springSocialCallback(
			@RequestParam("oauth_token") String oauthToken,
			@RequestParam("oauth_verifier") String oauthVerifier,
			HttpServletRequest request, HttpServletResponse response)throws Exception {
	  try {
			GoogleTemplate googleTemplate = new GoogleTemplate(oauthToken);
			TimelineOperations timelineOperations = (TimelineOperations) googleTemplate.plusOperations();
			timelineOperations.updateStatus("Hello Google!");
		} catch (MissingAuthorizationException me) {
			
		}
		return PUBLISH_SUCCESS;
	}
}
