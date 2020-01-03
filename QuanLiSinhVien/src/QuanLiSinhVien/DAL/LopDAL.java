/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLiSinhVien.DAL;

import QuanLiSinhVien.Model.Lop;
import QuanLiSinhVien.Model.SinhVien;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sonlanggtu
 */

public class LopDAL {
     // Get Lop
    public List<Lop> GetAllLop() {
        List<Lop> listLop = new ArrayList<Lop>();
        Connection connection = JDBCMSSQL.GetConnect();

        String sql = "select * from Lop";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            ResultSet result = preparedStatement.executeQuery();

            while (result.next()) {
                Lop lopsql = new Lop();
                lopsql.SetMaLop(result.getString("MaLop"));
                lopsql.SetTenLop(result.getString("TenLop"));
                lopsql.SetMaKhoa(result.getString("MaKhoa"));
                lopsql.SetMaHeDT(result.getString("MaHeDT"));
                lopsql.SetMaKhoaHoc(result.getString("MaKhoaHoc"));              
                listLop.add(lopsql);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listLop;
    }

    // Add Lop
    public void AddLop(Lop lop) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "insert into lop(MaLop, TenLop, MaKhoa, MaHeDT, MaKhoaHoc) values (?,?,?,?, ?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, lop.GetMaLop());
            preparedStatement.setString(2, lop.GetTenLop());
            preparedStatement.setString(3, lop.GetMaKhoa());
            preparedStatement.setString(4, lop.GetMaHeDT());
            preparedStatement.setString(5, lop.GetMaKhoaHoc());
      
            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
            //
        }
    }

    // Update Lop

    public void UpdateLop(Lop lop) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "update Lop set TenLop = ?, MaKhoa = ?, MaHeDT = ? , MaKhoaHoc = ? where Malop = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, lop.GetTenLop());
            preparedStatement.setString(2, lop.GetMaKhoa());
            preparedStatement.setString(3, lop.GetMaHeDT());
            preparedStatement.setString(4, lop.GetMaKhoaHoc());
            preparedStatement.setString(5, lop.GetMaLop());

            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Del Lop
    public void DeleteLop(String maLop) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "delete lop where MaLop = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, maLop);
            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Lop GetLopByMalopDAL(String Malop) 
    {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "select * from Lop where MaLop = ?";

        try 
        {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, Malop);
            ResultSet result = preparedStatement.executeQuery();

            while (result.next()) {
                Lop lopSql = new Lop();             
                lopSql.SetMaLop(result.getString("MaLop"));
                lopSql.SetTenLop(result.getString("TenLop"));
                lopSql.SetMaKhoa(result.getString("MaKhoa"));
                lopSql.SetMaHeDT(result.getString("MaHeDT"));
                lopSql.SetMaKhoaHoc(result.getString("MaKhoaHoc"));
                return lopSql;
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return null;
    }
    
    
   public List<String> GetOnlyKhoaDAL()
   {
        List<String> listMaKhoa = new ArrayList<String>();
        Connection connection = JDBCMSSQL.GetConnect();

        String sql = "select MaKhoa from Khoa";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet result = preparedStatement.executeQuery();

            while (result.next()) {
                listMaKhoa.add(result.getString("MaKhoa"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listMaKhoa;
    }
   
   public List<String> GetOnlyKhoaHocDAL()
   {
        List<String> listMaKhoaHoc = new ArrayList<String>();
        Connection connection = JDBCMSSQL.GetConnect();

        String sql = "select MaKhoaHoc from KhoaHoc";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet result = preparedStatement.executeQuery();

            while (result.next()) {
                listMaKhoaHoc.add(result.getString("MaKhoaHoc"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listMaKhoaHoc;
    }
   
   
   public List<String> GetOnlyMaHDTDAL()
   {
        List<String> listMaHDT = new ArrayList<String>();
        Connection connection = JDBCMSSQL.GetConnect();

        String sql = "select MaHeDT from HeDT";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet result = preparedStatement.executeQuery();

            while (result.next()) {
                listMaHDT.add(result.getString("MaHeDT"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listMaHDT;
    }
   
}
