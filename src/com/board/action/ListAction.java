
package com.board.action;
  
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.board.beans.Board;
import com.board.controller.CommandAction;
import com.board.dao.BoardDao;
 

public class ListAction implements CommandAction {
 
     @Override

    public String requestPro(HttpServletRequest request,
 
            HttpServletResponse response) throws Throwable {
    	request.setCharacterEncoding("euc-kr"); 
        int page = 0;                                            // 기본 페이지번호를 0으로 설정하고
        
        if(request.getParameter("page") != null){     // 넘어온 파라미터가 있다면 
 
            page = Integer.parseInt(request.getParameter("page"));  
 
        }
             ArrayList<Board> articleList = BoardDao.getInstance().getArticleList(page);  
  
            request.setAttribute("articleList", articleList);   // 셋팅된 리스트를 뷰에 포워드합니다.
 
            request.setAttribute("page", page); // 페이지번호를 뷰에서 보기위해 표시합니다.
        return "list.jsp";
 
        } 
 
}