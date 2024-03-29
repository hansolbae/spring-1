<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../_head.jsp" %>
<article>
        <form action="#" method="post" enctype="multipart/form-data">
          <h1>새상품 등록창</h1>
          <div class="tab_container">
            <!-- 내용 들어 가는 곳 -->
            <div class="tab_container" id="container">
              <ul class="tabs">
                <li class="active"><a href="#tab1">상품정보</a></li>
                <li class=""><a href="#tab2">상품목차</a></li>
                <li class=""><a href="#tab3">상품저자소개</a></li>
                <li class=""><a href="#tab4">상품소개</a></li>
                <li class=""><a href="#tab5">출판사 상품 평가</a></li>
                <li class=""><a href="#tab6">추천사</a></li>
                <li class=""><a href="#tab7">상품이미지</a></li>
              </ul>
              <div class="tab_container">
                <div class="tab_content" id="tab1" style="display: block;">
                  <table>
                    <tbody>
                      <tr>
                        <td width="200">제품분류</td>
                        <td width="500"><select name="goods_sort">
                            <option value="컴퓨터와 인터넷" selected="">컴퓨터와 인터넷
                            </option>
                            <option value="디지털 기기">디지털 기기
                            </option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td>제품이름</td>
                        <td><input name="goods_title" type="text" size="40"></td>
                      </tr>

                      <tr>
                        <td>저자</td>
                        <td><input name="goods_writer" type="text" size="40"></td>
                      </tr>
                      <tr>
                        <td>출판사</td>
                        <td><input name="goods_publisher" type="text" size="40"></td>
                      </tr>
                      <tr>
                        <td>제품정가</td>
                        <td><input name="goods_price" type="text" size="40"></td>
                      </tr>

                      <tr>
                        <td>제품판매가격</td>
                        <td><input name="goods_sales_price" type="text" size="40"></td>
                      </tr>


                      <tr>
                        <td>제품 구매 포인트</td>
                        <td><input name="goods_point" type="text" size="40"></td>
                      </tr>

                      <tr>
                        <td>제품출판일</td>
                        <td><input name="goods_published_date" type="date" size="40"></td>
                      </tr>

                      <tr>
                        <td>제품 총 페이지수</td>
                        <td><input name="goods_total_page" type="text" size="40"></td>
                      </tr>

                      <tr>
                        <td>ISBN</td>
                        <td><input name="goods_isbn" type="text" size="40"></td>
                      </tr>
                      <tr>
                        <td>제품 배송비</td>
                        <td><input name="goods_delivery_price" type="text" size="40"></td>
                      </tr>
                      <tr>
                        <td>제품 도착 예정일</td>
                        <td><input name="goods_delivery_date" type="date" size="40"></td>
                      </tr>

                      <tr>
                        <td>제품종류</td>
                        <td>
                          <select name="goods_status">
                            <option value="bestseller">베스트셀러</option>
                            <option value="steadyseller">스테디셀러</option>
                            <option value="newbook" selected="">신간</option>
                            <option value="on_sale">판매중</option>
                            <option value="buy_out">품절</option>
                            <option value="out_of_print">절판</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <br>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="tab_content" id="tab2" style="display: none;">
                  <h4>책목차</h4>
                  <table>
                    <tbody>
                      <tr>
                        <td>책목차</td>
                        <td><textarea rows="50" cols="80" name="goods_contents_order"></textarea></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="tab_content" id="tab3" style="display: none;">
                  <h4>제품 저자 소개</h4>
                  <table>
                    <tbody>
                      <tr>
                        <td>제품 저자 소개</td>
                        <td><textarea rows="50" cols="80" name="goods_writer_intro"></textarea></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="tab_content" id="tab4" style="display: none;">
                  <h4>제품소개</h4>
                  <table>
                    <tbody>
                      <tr>
                        <td>제품소개</td>
                        <td><textarea rows="50" cols="80" name="goods_intro"></textarea></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="tab_content" id="tab5" style="display: none;">
                  <h4>출판사 제품 평가</h4>
                  <table>
                    <tbody>
                      <tr>
                        <td>출판사 제품 평가</td>
                        <td><textarea rows="50" cols="80" name="goods_publisher_comment"></textarea></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="tab_content" id="tab6" style="display: none;">
                  <h4>추천사</h4>
                  <table>
                    <tbody>
                      <tr>
                        <td>추천사</td>
                        <td><textarea rows="50" cols="80" name="goods_recommendation"></textarea></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="tab_content" id="tab7" style="display: none;">
                  <h4>상품이미지</h4>
                  <table>
                    <tbody>
                      <tr>
                        <td align="right">이미지파일 첨부</td>

                        <td align="left"> <input type="button" value="파일 추가"></td>
                        <td>
                          <div id="d_file">
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="clear"></div>
            <center>
              <table>
                <tbody>
                  <tr>
                    <td align="center">
                      <input type="submit" value="상품 등록하기">
                    </td>
                  </tr>
                </tbody>
              </table>
            </center>
          </div>
        </form>
      </article>
<%@ include file="../../_tail.jsp" %>
