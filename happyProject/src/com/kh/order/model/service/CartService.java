package com.kh.order.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.order.model.dao.CartDao;
import com.kh.order.model.vo.Cart;

public class CartService {
	
	public int insertCart(Cart c) {
		
		Connection conn = getConnection();
		
		int result = new CartDao().insertCart(conn, c);
		
		if(result == 1) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
	}

}
