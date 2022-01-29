package com.ea.webclient.security;
/*
import lombok.extern.java.Log;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Log
public class LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {
    public LoginSuccessHandler(String defaultTargetUrl) {
        setDefaultTargetUrl(defaultTargetUrl);
    }

    /**
     * 인증에 성공할 경우 아래 매서드로 이동.
     */
   /* @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        String dateTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
        int sessionTime = 1200;
        
        session.setAttribute("dateTime", dateTime);
        session.setAttribute("sessionTime", sessionTime);
        
        System.out.println("testjun"+dateTime);
        if (session != null) {
        	String redirectUrl = "/";
			/* String redirectUrl = (String) session.getAttribute("prevPage"); */
           /* if (redirectUrl != null) {
                session.removeAttribute("prevPage");
                getRedirectStrategy().sendRedirect(request, response, redirectUrl);
            } else {
                super.onAuthenticationSuccess(request, response, authentication);
            }
        } else {
            super.onAuthenticationSuccess(request, response, authentication);
        }
    }
}*/
