package springmvc.java.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * 
 * Configuration class dispatcher-servlet.xml
 *
 */
@EnableWebMvc
@Configuration
@Import(value=SecurityConfig.class)
public class WebConfig extends WebMvcConfigurerAdapter {
	
	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		//index mapping 
		// / - > index.jsp
		registry.addViewController("/").setViewName("index");
		
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	
	}
	
	@Bean
	public InternalResourceViewResolver internalResourceViewResolver() {
		  InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		  resolver.setPrefix("/WEB-INF/pages/");
		  resolver.setSuffix(".jsp");		  
		  return resolver;		  		
	}
	

}
