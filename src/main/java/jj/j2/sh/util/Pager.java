package jj.j2.sh.util;

import java.util.ArrayList;
import java.util.List;

public class Pager {
	
	int page = 1;
	int perPage = 9;
	float total;
	int perGroup = 5; //getter, setter 생성 필요 없음
	
	int search = 0;
	String keyword;
	
	public int getOffset() {
		return (page - 1) * perPage;
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
	
	
	
	

	public float getTotal() {
		return total;
	}
	
	public void setTotal(float total) {
		this.total = total;
	}
	
	public int getPage() {
		return page;
	}
	
	public void setPage(int page) {
		this.page = page;
	}
	
	public int getPerPage() {
		return perPage;
	}
	
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	
	public int getPrev() { // 삼항연산자 사용하여 첫 페이지 잡아주기
		 return page <= perGroup - 4 ? 1 : page -1;
	}
	
	public int getNext() { // 삼항연산자 사용하여 마지막 페이지 잡아주기
		int next = (perGroup * 0)+(page + 1); // 다음을 누르1페이지씩 이동
		
		int last = getLast();
		
		return next < last ? next : last;
	}
	
	public int getLast() {
		return (int)Math.ceil(total / perPage); // 반올림 한 실수를 int형으로 캐스팅하여 반환
	}
	
	public List<Integer> getList(){
		ArrayList<Integer> list = new ArrayList<Integer>();
		
		// 현재 소속 된 perGroup의 첫 페이지가 나옴 
		int startPage = (((page - 1) / perGroup) + 0) * perGroup + 1;
		int last = getLast();
		
		for(int index = startPage; index < (startPage + perGroup) && index <= last ; index++) 
			list.add(index);
		
		//페이지목록이 안나오는 버그가 발생해서, 만약 list(도서목록)가 비어있으면, list에 1을 추가함(비어있으면 페이지목록에 1페이지가 나옴)
		if(list.isEmpty())
			list.add(1);
			
		return list;
	}
		
	public String getQuery() {	//검색 후 pagination 유지
		
		if(search > 0 && search <= 4)
			return "search=" + search + "&keyword=" + keyword;
		
		else if (page == 0)  {
			return "board/list";
		}
		
		return "search=" + search + "&keyword=" + keyword;		
				
	}

}
