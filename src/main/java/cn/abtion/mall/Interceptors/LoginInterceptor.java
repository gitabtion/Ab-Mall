package cn.abtion.mall.Interceptors;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

/**
 * @author abtion
 * @since 2018/7/14 16:46
 * email abtion@outlook.com
 */
public class LoginInterceptor implements HandlerInterceptor {


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
        //判断用户是否登录，如果登录放行，否则拦截并跳转到登录页面
        HttpSession session = request.getSession();

        if(session.getAttribute("member") != null){
            //登录了
            return true;
        }else {
            //没登录
            response.sendRedirect("/account");
            return false;
        }
    }
}
