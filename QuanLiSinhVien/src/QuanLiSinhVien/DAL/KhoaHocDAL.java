/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLiSinhVien.DAL;

import QuanLiSinhVien.Model.KhoaHoc;
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

    
public class KhoaHocDAL {
     // Get KhoaHoc
    public List<KhoaHoc> GetAllKhoaHoc() {
        List<KhoaHoc> listKhoaHoc = new ArrayList<KhoaHoc>();
        Connection connection = JDBCMSSQL.GetConnect();

        String sql = "select * from KhoaHoc";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            ResultSet result = preparedStatement.executeQuery();

            while (result.next()) {
                KhoaHoc khoaHocsql = new KhoaHoc();
                khoaHocsql.SetMaKhoaHoc(result.getString("MaKhoaHoc"));
                khoaHocsql.SetTenKhoaHoc(result.getString("TenKhoaHoc"));
                listKhoaHoc.add(khoaHocsql);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listKhoaHoc;
    }

    // Add KhoaHoc
    public void AddKhoaHoc(KhoaHoc khoaHoc) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "insert into KhoaHoc(MaKhoaHoc, TenKhoaHoc ) values (?,?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, khoaHoc.GetMaKhoaHoc());
            preparedStatement.setString(2, khoaHoc.GetTenKhoaHoc());          
            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
            //
        }
    }

    // Update khoaHoc

    public void UpdateKhoaHoc(KhoaHoc khoahoc) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "update KhoaHoc set TenKhoaHoc = ? where MaKhoaHoc = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, khoahoc.GetTenKhoaHoc());
            preparedStatement.setString(2, khoahoc.GetMaKhoaHoc());
   

            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Del KhoaHoc
    public void DeleteKhoaHoc(String maKH) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "delete KhoaHoc where MaKhoaHoc = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, maKH);
            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public KhoaHoc GetKhoaHocByMaKHDAL(String maKH) 
    {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "select * from KhoaHoc where MaKhoaHoc = ?";

        try 
        {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, maKH);
            ResultSet result = preparedStatement.executeQuery();

            while (result.next()) {
                KhoaHoc khoaHocsql = new KhoaHoc();
              
                khoaHocsql.SetMaKhoaHoc(result.getString("MaKhoaHoc"));
                khoaHocsql.SetTenKhoaHoc(result.getString("TenKhoaHoc"));
                return khoaHocsql;
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return  null;
    }
    
  
}
