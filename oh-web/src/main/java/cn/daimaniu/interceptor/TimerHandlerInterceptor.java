package cn.daimaniu.interceptor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 时间统计拦截器
 *
 * @author keepcleargas
 */
public class TimerHandlerInterceptor implements HandlerInterceptor {

    private final String TIMER_HANDLER_START_KEY = "_timer_handler_start";
    private Logger logger = LoggerFactory.getLogger(getClass());

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {
        if (logger.isDebugEnabled()) {
            logger.debug(String.format("A new request for %s", request.getRequestURI()));
        }
        request.setAttribute(TIMER_HANDLER_START_KEY, System.currentTimeMillis());
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
    }

    @Override
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        Object obj = request.getAttribute(TIMER_HANDLER_START_KEY);
        long task = System.currentTimeMillis() - (Long) obj;
        logger.info(String.format("The request takes %d ms.", task));
    }
}
