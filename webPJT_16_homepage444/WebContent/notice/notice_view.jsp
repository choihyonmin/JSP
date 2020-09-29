<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="dao.*, dto.*"%>

<%
   Notice_dao dao = new Notice_dao();
   String no = request.getParameter("t_no");
   dao.setHitCount(String no);
   Notice_dto dto = dao.getNoticeView(no);
%>

<%@ include file="/common/common_subpage_head.jsp"%>
		<div id="b_left">
			<P>NOTICE & NEWS</P>
			<ul>
				<li><a href="/notice/notice_list.jsp"><span class="fnt"><i class="fas fa-apple-alt"></i></span> NOTICE</a></li>
				<li><a href="/news/news_list.jsp">News</a></li>
				<li><a href="/qanda/qanda_list.jsp">Q & A</a></li>
				<li><a href="/freeboard/freeboard_list.jsp">Free Board</a></li>
				<li><a href="">Etc</a></li>
			</ul>
		</div>v>

		<div id="b_right">
			<p class="n_title">
				NOTICE
			</p>

			<table class="boardForm">
				<colgroup>
					<col width="15%">
					<col width="55%">
					<col width="10%">
					<col width="20%">
				</colgroup>
				<tbody>
					<tr>
						<th>Title</th>

						<td colspan="2"><%=dto.getTitle() %></td>
						<td> <i class="far fa-eye"></i> 152</td>
					</tr>
					<tr>
						<th>Content</th>
						<td colspan="3"><%=dto.getContent() %>
							<textarea class="textArea_H250_noBorder" readonly>구매 절차 과정 안내 드립니다.구매 절차 과정 안내 드립니다.구매 절차 과정 안내 드립니다.</textarea>
						</td>
					</tr>

					<tr>
						<th>Writer</th>
						<td><%=dto.getReg_name() %></td>
						<th>RegDate</th>
						<td><%=dto.getReg_date() %></td>
					</tr>

				</tbody>
			</table>
			<div class="buttonGroup">
				<a href="" class="butt">Delete</a>
				<a href="notice_update.html" class="butt">Update</a>
				<a href="notice_list.html" class="butt">List</a>
			</div>
		</div>

<%@ include file="/common/common_subpage_bottom.jsp" %>
	</div>
</body>
</html>






