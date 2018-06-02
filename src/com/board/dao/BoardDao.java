package com.board.dao;

import java.sql.SQLException;

import java.util.ArrayList;
import com.board.beans.Board;


public class BoardDao extends CommonDao {

	    public static BoardDao getInstance() {   // 기존에 구현했던 getInstance메서드
		 
	    BoardDao _instance = new BoardDao();
	 
	    _instance.SetDB();                // 이 코드 한줄이 추가되었습니다.
	 
	    return _instance;
	 
	}  
	 
	 public  ArrayList<Board> getArticleList(int page) throws SQLException{
	 
		 @SuppressWarnings("unchecked")
		ArrayList<Board> articleList = (ArrayList<Board>)GetDB().queryForList("getArticleList", null, page, 10);
		return articleList;
	 }
	    

}