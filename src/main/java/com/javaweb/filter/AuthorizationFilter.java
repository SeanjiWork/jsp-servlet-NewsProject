package com.javaweb.filter;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaweb.constant.SystemConstant;
import com.javaweb.model.UserModel;
import com.javaweb.utils.SessionUtil;

public class AuthorizationFilter implements Filter{
	
	private ServletContext context;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.context = filterConfig.getServletContext();
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		 HttpServletRequest request = (HttpServletRequest) servletRequest;
	     HttpServletResponse response = (HttpServletResponse) servletResponse;
	     String url = request.getServletPath();
	        if (url.startsWith("/admin")) {
	            UserModel model = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
	           
//	            test
	            if (model == null) {
	                System.out.println("Authorization - User chưa đăng nhập!");
	            } else {
	                System.out.println("Authorization - User đã đăng nhập với quyền: " + model.getRole().getCode());
	            }
//	            end test
	            
	            if (model != null) {
	            	
	            	
	                if (model.getRole().getCode().equals(SystemConstant.ADMIN)) {
	                    filterChain.doFilter(servletRequest, servletResponse);
	                } else if (model.getRole().getCode().equals(SystemConstant.USER)) {
	                    response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=not_permission&alert=danger");
	                }
	                
	                
	            } else {
	                response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=not_login&alert=danger");
	            }
	            
	            
	        } else {
	            filterChain.doFilter(servletRequest, servletResponse);
	        }
	}

	@Override
	public void destroy() {
		
	}

}
