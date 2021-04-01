package jj.j2.sh.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
/*import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;*/
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;


@Controller
public class LoginController {
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	//로그인 첫 화면 요청 메소드
	@RequestMapping("/naverLogin")
	public String login(Model model, HttpSession session, HttpServletRequest request) {
		// 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
						
				
		System.out.println("네이버:" + naverAuthUrl);
		
		//네이버 
		model.addAttribute("url", naverAuthUrl); 

		// 생성한 인증 URL을 View로 전달
		return "/socialLogin";
	}

	//네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "/naverSuccess", method = { RequestMethod.GET, RequestMethod.POST }) // value 수정
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {
		
		//토근 발급
		OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);
        
        //로그인 사용자 정보를 읽어온다.
	    apiResult = naverLoginBO.getUserProfile(oauthToken);
	    
	    JSONParser parser = new JSONParser();
	    Object obj = parser.parse(apiResult);
	    JSONObject jsonObj = (JSONObject) obj;
	    
	    //3. 데이터 파싱
	    //Top레벨 단계 _response 파싱
	    JSONObject response_obj = (JSONObject)jsonObj.get("response");
	    
	    //response의 nickname값 파싱
	    String nickname = (String)response_obj.get("nickname");
	    
	    System.out.println(nickname);
	    
	    //4.파싱 닉네임 세션으로 저장
	    session.setAttribute("sessionId",nickname); //세션 생성
	   
	    // 사용자 정보 출력해도 안나온다. 제이슨데이터 이므로 바꿔줘야함
	    model.addAttribute("result", apiResult);
		
		return "redirect:."; //성공시 나올 페이지
	}

	@RequestMapping("/logOut")
	String logout(String id, HttpSession session) {
		session.invalidate();
		
		return ""; // 뒤로 보내기
	}


}
