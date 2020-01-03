/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLiSinhVien.DAL;

import QuanLiSinhVien.Model.MonHoc;
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


public class MonHocDAL {
     // Get MonHoc
    public List<MonHoc> GetAllMonHoc() {
        List<MonHoc> listMonHoc = new ArrayList<MonHoc>();
        Connection connection = JDBCMSSQL.GetConnect();

        String sql = "select * from MonHoc";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            ResultSet result = preparedStatement.executeQuery();

            while (result.next()) {
                MonHoc monHocsql = new MonHoc();
                monHocsql.SetMaMH(result.getString("MaMH"));
                monHocsql.SetTenMH(result.getString("TenMH"));
                monHocsql.SetSoTrinh(result.getInt("SoTrinh"));       
                listMonHoc.add(monHocsql);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listMonHoc;
    }

    // Add monHoc
    public void AddMonHoc(MonHoc monHoc) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "insert into MonHoc(MaMH, TenMH, SoTrinh) values (?,?,?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, monHoc.GetMaMH());
            preparedStatement.setString(2, monHoc.GetTenMH());
            preparedStatement.setInt(3, monHoc.GetSoTrinh());

            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
            //
        }
    }

    // Update monHoc

    public void UpdateMonHoc(MonHoc monHoc) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "update MonHoc set TenMH = ?, SoTrinh = ? where MaMH = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, monHoc.GetTenMH());
            preparedStatement.setInt(2, monHoc.GetSoTrinh());
            preparedStatement.setString(3, monHoc.GetMaMH());

            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Del MonHoc
    public void DeleteMonHoc(String maMH) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "delete MonHoc where MaMH = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, maMH);
            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public MonHoc GetMonHocByMaMH_DAL(String maMH) 
    {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "select * from MonHoc where MaMH = ?";

        try 
        {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, maMH);
            ResultSet result = preparedStatement.executeQuery();

            while (result.next()) {
                MonHoc monHocsql = new MonHoc();
              
                monHocsql.SetMaMH(result.getString("MaMH"));
                monHocsql.SetTenMH(result.getString("TenMH"));
                monHocsql.SetSoTrinh(result.getInt("SoTrinh"));   
                return monHocsql;
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return  null;
    }
    
   
}
