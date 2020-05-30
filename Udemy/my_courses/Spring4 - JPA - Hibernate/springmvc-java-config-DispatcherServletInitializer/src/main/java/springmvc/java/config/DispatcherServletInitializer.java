package springmvc.java.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;

import org.springframework.web.filter.DelegatingFilterProxy;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class DispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		
		/**
		 * 
		 * ApplicationContext Services
		 * 
		 */
		
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		
		/**
		 * MVC Config Classes
		 * Paths will be mapped inside this configuration class
		 */
		
		return new Class[] {WebConfig.class};
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] {"/"};
	}

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		
	/*	 <filter>
		    <filter-name>springSecurityFilterChain</filter-name>
		    <filter-class>org.springframework.web.filter.DelegatingFilterProxy</filter-class>
		  </filter>
		  <filter-mapping>
		    <filter-name>springSecurityFilterChain</filter-name>
		    <url-pattern>/*</url-pattern>
		  </filter-mapping>  */
		
		servletContext.addFilter("springSecurityFilterChain", new DelegatingFilterProxy("springSecurityFilterChain"))
				.addMappingForUrlPatterns(null, false, "/*");
		
		super.onStartup(servletContext);
	}
}
