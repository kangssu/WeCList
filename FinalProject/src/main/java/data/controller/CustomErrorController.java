package data.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CustomErrorController implements ErrorController {

    @GetMapping("/error")
    public String errorHandler(HttpServletRequest request) {
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);

        if (status != null) {
            int statusCode = Integer.valueOf(status.toString());

            if (statusCode == HttpStatus.NOT_FOUND.value()) {return "/errors/404";}
            if (statusCode == HttpStatus.FORBIDDEN.value()) {return "/errors/403";}
            if (statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()) {return "/errors/500"; }
        }
        return "error";
    }


}
