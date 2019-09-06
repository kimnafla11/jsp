package my.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Cookie;
import java.util.Map;
import java.net.URLEncoder; 
import java.net.URLDecoder; 
import java.io.IOException; 

public class CookieBox {
    
    private Map<String, Cookie> cookieMap = new java.util.HashMap<String, Cookie>();
    
    public CookieBox(HttpServletRequest request) {//클래스 이름=메소드 이름 :생성자
        Cookie[] cookies = request.getCookies();//쿠키 배열을 가져와서 cookies에 넣음
        if (cookies != null) {
            for (int i = 0 ; i < cookies.length ; i++) {
                cookieMap.put(cookies[i].getName(), cookies[i]);//그 가져온 값을 멤버변수인 cookieMap에 넣어줌
            }
        }
    }
    
    public static Cookie createCookie(String name, String value)//createCookie -> 한글에 대해서 신경쓰지않아도됨
    throws IOException {
        return new Cookie(name, URLEncoder.encode(value, "utf-8"));
    }

    public static Cookie createCookie(String name, String value, String path, 
        int maxAge) throws IOException {//이름은 같지만 변수가 다름 : 메소드 오버로딩 파라미터로 path와 maxAge 유효시간도 줄 수 있다.
        Cookie cookie = new Cookie(name, URLEncoder.encode(value, "utf-8"));
        cookie.setPath(path);
        cookie.setMaxAge(maxAge);
        return cookie;
    }
    
    public static Cookie createCookie(String name, String value, String domain,
            String path, int maxAge) throws IOException {//도메인 명도 지정해 줄 수 있다.
        Cookie cookie = new Cookie(name, URLEncoder.encode(value, "utf-8"));
        cookie.setDomain(domain);
        cookie.setPath(path);
        cookie.setMaxAge(maxAge);
        return cookie;
    }
    
    public Cookie getCookie(String name) {
        return cookieMap.get(name); 
    }
    
    public String getValue(String name) throws IOException {
        Cookie cookie = cookieMap.get(name);
        if (cookie == null) {
            return null;
        }
        return URLDecoder.decode(cookie.getValue(), "utf-8");
    }

    public boolean exists(String name) {
        return cookieMap.get(name) != null;
    }
}
