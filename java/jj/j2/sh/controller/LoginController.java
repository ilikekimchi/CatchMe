package jj.j2.sh.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.github.scribejava.core.model.OAuth2AccessToken;

import jj.j2.sh.model.Customer;

import jj.j2.sh.model.KakaoProfile;
import jj.j2.sh.model.OAuthToken;
import jj.j2.sh.service.CustomerService;

@JsonIgnoreProperties(ignoreUnknown = true)

@Controller
public class LoginController {

	@Autowired
	CustomerService service;

//서비스에서 암호넣기

// 네이버 로그인
// ===========================================================================================

	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;

	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

// 로그인 첫 화면 요청 메소드
	@RequestMapping("/naverLogin")
	public String naverlogin(Model model, HttpSession session, HttpServletRequest request) {
		// 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);

		System.out.println("네이버:" + naverAuthUrl);

		// 네이버
		model.addAttribute("url", naverAuthUrl);

		// 생성한 인증 URL을 View로 전달
		return "/socialLogin";
	}

// 네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "/naverSuccess", method = { RequestMethod.GET, RequestMethod.POST }) // value 수정
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session,
			Customer item) throws IOException, ParseException {

		// 토근 발급
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);

		// 로그인 사용자 정보를 읽어온다.
		apiResult = naverLoginBO.getUserProfile(oauthToken); // 제이슨 데이터의 사용자 정보를 읽어옴

		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;

		// 3. 데이터 파싱
		// Top레벨 단계 _response 파싱
		JSONObject response_obj = (JSONObject) jsonObj.get("response");

		String customerId = (String) response_obj.get("email");

		if (service.item(customerId) == null) {

			String customerNnm = "닉네임을 설정해 주세요.";
			final String customerPw = "naverD23n4^CDE354j%@($?yq997Jdred@";

			item.setCustomerId(customerId);
			item.setCustomerNnm(customerNnm);
			item.setCustomerPw(customerPw);

			service.add(item);

			return "redirect:/"; // 디비연결된후 다시 테스트
		} else {
			return "<script>alert('사용중인 이메일입니다.');</script> redirect:/";
		}

	}

// 카카오 로그인 ===========================================================================================

	@GetMapping("auth/kakao/callback")
// jsp에서 카카오 서버로 요청한 값을 code로 응답받음
	public @ResponseBody String kakaoCallback(String code, Customer item) {

		// http 통신에 유용하게 쓸 수 있는 템플릿
		RestTemplate rt = new RestTemplate();

		// HttpHeader 오브젝트 생성
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

		// HttpBody 오브젝트 생성
		// rest api키, uri 변수에 담아 사용할 것
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "3c5da69fe95e1794f127087d909f8e24"); // 발급받은 restapi key 넣으세요.
		params.add("redirect_uri", "<http://localhost:8090/auth/kakao/callback>"); // 사이트에 기입해놓은 콜백 주소
		// code는 일정하지 않음
		params.add("code", code);

		// 생성한 header, body를 하나의 오브젝트에 담음
		HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest = new HttpEntity<MultiValueMap<String, String>>(
				params, headers);

		// Http 요청하기 = Post방식 - response 변수에 응답받음
		ResponseEntity<String> response = rt.exchange("<https://kauth.kakao.com/oauth/token>", HttpMethod.POST,
				kakaoTokenRequest, String.class);

		ObjectMapper objectMapper = new ObjectMapper();
		OAuthToken oauthToken = null;

		try {
			oauthToken = objectMapper.readValue(response.getBody(), OAuthToken.class);
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		System.out.println("카카오 엑세스 토큰 : " + oauthToken.getAccess_token());

		RestTemplate rt2 = new RestTemplate();

		// HttpHeader
		HttpHeaders headers2 = new HttpHeaders();
		headers2.add("Authorization", "Bearer " + oauthToken.getAccess_token());
		headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

		// 생성한 header, body를 하나의 오브젝트로
		HttpEntity<MultiValueMap<String, String>> kakaoProfileRequest2 = new HttpEntity<>(headers2);

		// Http 요청하기 = Post방식 - response2 변수에 응답받음
		ResponseEntity<String> response2 = rt2.exchange("<https://kapi.kakao.com/v2/user/me>", HttpMethod.POST,
				kakaoProfileRequest2, String.class);

		ObjectMapper objectMapper2 = new ObjectMapper();
		KakaoProfile kakaoProfile = null;

		try {
			kakaoProfile = objectMapper2.readValue(response2.getBody(), KakaoProfile.class);
		} catch (JsonMappingException e) {

			e.printStackTrace();

		} catch (JsonProcessingException e) {

			e.printStackTrace();

		}
		// 1. add 할 유저 오브젝트 만들기
		// 2. 기본키로 사용하는 이메일로 가입자 비가입자 체크 (서비스 생성)
		// 3. 가입자면 로그인처리
		// 4. 소셜 가입자들은 암호변경 못하게 막아놔야함.(여러가지 방법으로 암호를 임의 설정)
		// 5. 세션으로 로그인정보 유지

		String customerId = kakaoProfile.getKakao_account().toString();

		if (service.item(customerId) == null) {

			String customerNnm = "닉네임을 설정해 주세요.";
			final String customerPw = "kakaoD23n4^CDE354j%@($?yq997Jdred@";

			item.setCustomerId(customerId);
			item.setCustomerNnm(customerNnm);
			item.setCustomerPw(customerPw);

			service.add(item);

			return "redirect:.";

		} else { // 디비연결된후 다시 테스트

			return "<script>alert('사용중인 이메일입니다.'); history.back(-1); </script>";
		}

	}

// 로그아웃 ===========================================================================================

	@RequestMapping("/logOut")
	String logout(String id, HttpSession session) {
		session.invalidate();
	
		return ""; // 뒤로 보내기
	}

}