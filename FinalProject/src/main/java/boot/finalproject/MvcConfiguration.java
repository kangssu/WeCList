package boot.finalproject;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfiguration implements WebMvcConfigurer {

  @Value("${file.upload.image}")
  String imagePath;

  @Override
  public void addResourceHandlers(ResourceHandlerRegistry registry) {
    /* '/js/**'로 호출하는 자원은 '/static/js/' 폴더 아래에서 찾는다. */
    registry.addResourceHandler("/js/**").addResourceLocations("classpath:/static/js/")
        .setCachePeriod(60 * 60 * 24 * 365);
    /* '/css/**'로 호출하는 자원은 '/static/css/' 폴더 아래에서 찾는다. */
    registry.addResourceHandler("/css/**").addResourceLocations("classpath:/static/css/")
        .setCachePeriod(60 * 60 * 24 * 365);
    /* '/img/**'로 호출하는 자원은 '/static/img/' 폴더 아래에서 찾는다. */
    registry.addResourceHandler("/img/**").addResourceLocations("classpath:/static/img/")
        .setCachePeriod(60 * 60 * 24 * 365);
    /* '/fonts/**'로 호출하는 자원은 '/static/fonts/' 폴더 아래에서 찾는다. */
    registry.addResourceHandler("/fonts/**").addResourceLocations("classpath:/static/fonts/")
        .setCachePeriod(60 * 60 * 24 * 365);
    /* '/photo/**' 로 호출하는 자원은 '~/backup/photo/' (리눅스)폴더 아래에서 찾는다. */
    registry.addResourceHandler("/photo/**").addResourceLocations("file:" + imagePath)
        .setCachePeriod(60 * 60 * 24 * 365);
  }
}
