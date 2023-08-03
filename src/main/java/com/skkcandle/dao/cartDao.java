package com.skkcandle.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.skkcandle.dto.Cart;

@Mapper
public interface cartDao {
    public List<Cart> cartMoney();
    public void insert(Cart cart); //장바구니 추가
    public List<Cart> listCart(String userid); //장바구니 목록
    public void delete(int cart_id); //장바구니 개별 삭제
    public void deleteAll(String userid); //장바구니 비우기
    public void update(int cart_id); 
    public int sumMoney(String userid); //장바구니 금액 합계
    public int countCart(String userid, int product_id); //장바구니 상품 갯수
    public void updateCart(Cart cart); //장바구니 수정 
    public void modifyCart(Cart cart);
}
