package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;

import common.DBConnectionOracle;
import dto.Notice_dto;

public class Notice_dao {
	DBConnectionOracle common= new DBConnectionOracle();
	Connection connection = null;
	PreparedStatement ps  = null;
	ResultSet         rs  = null;









	//조회
public ArrayList<Notice_dto> getNoticeList(){
	ArrayList<Notice_dto> arr = new ArrayList<Notice_dto>();
	String query=" select no, title, attach, reg_name, to_char(reg_date, 'yyyy-MM-dd'), hit\r\n" +
			     " from h16_notice\r\n" +
			     " where "+select+" like '%"+search+"%'"+
			     " order by no desc";
		     try {
					connection = common.getConnection();
					ps  = connection.prepareStatement(query);
					rs  = ps.executeQuery();
					while(rs.next()) {
						String no 		= rs.getString(1);
						String title 	= rs.getString(2);
						String attach 	= rs.getString(3);
						String reg_name = rs.getString(4);
						String reg_date = rs.getString(5);
						int hit 		= rs.getInt(6);
						Notice_dto dto = new Notice_dto(no,title,"",attach,reg_name,reg_date,hit);
						arr.add(dto);
					}
				}catch(SQLException se) {
					System.out.println("getNoticeList() query 오류: "+query);
				}catch(Exception ee) {
					System.out.println("getNoticeList() 오류");
				}finally {
					common.close(connection, ps, rs);
				}
				return arr;
	}

	// 등록
	public int saveNotice(Notice_dto dto) {
		int result =0;
		String query ="insert into h00_notice \r\n" +
				"(no,title,content,attach,reg_name,reg_date) \r\n" +
				"values \r\n" +
				"('"+dto.getNo()+"','"+dto.getTitle()+"','"+dto.getContent()+"','"+dto.getAttach()+"','"+dto.getReg_name()+"','"+dto.getReg_date()+"')";
		try {
			connection = common.getConnection();
			ps  = connection.prepareStatement(query);
			result  = ps.executeUpdate();
		}catch(SQLException se) {
			System.out.println("saveNotice() query 오류: "+query);
		}catch(Exception ee) {
			System.out.println("saveNotice() 오류");
		}finally {
			common.close(connection, ps, rs);
		}
		return result;
	}


	// 번호생성
	public String getNoticeNo() {
		String maxNo="";
		String query=" select max(no) from h00_notice ";
		try {
			connection = common.getConnection();
			ps  = connection.prepareStatement(query);
			rs  = ps.executeQuery();
			if(rs.next()) {
				maxNo = rs.getString(1);
			}
			if(maxNo == null) {
				maxNo ="N001";
			} else {
				String n = maxNo.substring(1);
				int i = Integer.parseInt(n);
				i = i + 1;
				DecimalFormat df = new DecimalFormat("000");
				String newNo = df.format((double)i);
				maxNo = "N"+newNo; //
			}
		}catch(SQLException se) {
			System.out.println("getNoticeNo() query 오류: "+query);
		}catch(Exception ee) {
			System.out.println("getNoticeNo() 오류");
		}finally {
			common.close(connection, ps, rs);
		}
		return maxNo;
	}
}







