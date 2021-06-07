package jj.j2.sh.util;

import java.util.ArrayList;
import java.util.List;

public class Pager {
   
   int page = 1; //첫 페이지
   int perPage = 10; //페이지당 개시물 수
   float total; // 가져온 정보의 총 개수
   int perGroup = 5; //보여질 페이지 그룹 수
   int search = 0;   //검색 분류(명, 번호, 가격)
   String keyword; //검색내용 저장
   String area; //검색내용 저장

   
   public int getPerPage() {
      return perPage;
   }

   public void setPerPage(int perPage) {
      this.perPage = perPage;
   }

   public int getSearch() {
      return search;
   }

   public void setSearch(int search) {
      this.search = search;
   }

   public String getKeyword() {
      return keyword;
   }

   public void setKeyword(String keyword) {
      this.keyword = keyword;
   } 

   public String getArea() {
      return area;
   }
   
   public void setArea(String area) {
      this.area = area;
   }

   public float getTotal() {
      return total;
   }

   public void setTotal(float total) { // 개수가 57이라 가정하면 57.0으로 저장 됨 
      this.total = total;
   }

   public int getPage() {
      return page;
   }

   public void setPage(int page) {
      this.page = page;
   }


   
   public int getPrev() {   //이전 페이지 불러오기 
      return page <= perGroup ? 1 : (((page - 1) / perGroup) - 1) * perGroup + 1;
   }

   public int getNext() {   //다음 페이지 불러오기
      int next = (((page - 1) / perGroup) + 1) * perGroup + 1;
      int last = getLast();

      return next < last ? next : last;
   }

   public int getLast() {   //마지막 페이지 불러오기
      return (int) Math.ceil(total / perPage);   //total(도서정보의 총 개수) 261 / 10 = 26.1 math.ceil로 소수점 때고 반환함
   }

   public List<Integer> getList() {
      ArrayList<Integer> list = new ArrayList<Integer>(); 

      int startPage = (((page - 1) / perGroup) + 0) * perGroup + 1;
      int last = getLast();

      for (int index = startPage; index < (startPage + perGroup) && index <= last; index++)
         list.add(index);
      
      if(list.isEmpty()) 
         list.add(1); 
      return list;
   }
   // 목록을 불러와 페이징 처리
   // list 배열객체 생성
   // startPage = 1 : 변수는 시작 페이지 저장 = 1 저장
   // last = 6 :변수는 total에 현재 (가정)57.0 / 10 = 5.7을 값 올림 하여 6.0 에서 형 변환 후 6이 저장 
   // for문을 디버깅 해보면  1 < 6 && 1 <= 6 
   // list 객체에 1씩 5번 저장됨
   // isEmpty 메서드는 비어있을때
   // 위 결과가 참이면 list객체에 1 추가
   // list에는 1씩 5번이 저장된 상태 이므로 1을 추가하지 않고 반환

   public String getQuery() { //검색 결과
      if (area != null) {
         return "area = " + area + "& keyword = " + keyword; 
      }
      return "";
   }
   // 검색 카테고리 1~4까지 존재함 (0보다 크고 5보다 작을 때 )
   // search = 1 & keyword = 내용. 
   // 1~4에 해당하지 않으면 빈 문자열을 반환
}