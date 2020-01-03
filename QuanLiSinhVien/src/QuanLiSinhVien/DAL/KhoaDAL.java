/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLiSinhVien.DAL;

import QuanLiSinhVien.Model.Khoa;
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



public class KhoaDAL {
      // Get Khoa
    public List<Khoa> GetAllKhoa() {
        List<Khoa> listKhoa = new ArrayList<Khoa>();
        Connection connection = JDBCMSSQL.GetConnect();

        String sql = "select * from Khoa";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            ResultSet result = preparedStatement.executeQuery();

            while (result.next()) {
                Khoa khoasql = new Khoa();
                khoasql.SetMaKhoa(result.getString("MaKhoa"));
                khoasql.SetTenKhoa(result.getString("TenKhoa"));
                khoasql.SetDienThoai(result.getString("DienThoai"));            
                listKhoa.add(khoasql);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listKhoa;
    }

    // Add Khoa
    public void AddKhoa(Khoa khoa) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "insert into Khoa(MaKhoa, TenKhoa, DienThoai) values (?,?,?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, khoa.GetMaKhoa());
            preparedStatement.setString(2, khoa.GetTenKhoa());
            preparedStatement.setString(3, khoa.GetDienThoai());

            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
            //
        }
    }

    // Update khoa
    public void UpdateKhoa(Khoa khoa) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "update Khoa set TenKhoa = ?, DienThoai = ? where MaKhoa = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, khoa.GetTenKhoa());
            preparedStatement.setString(2, khoa.GetDienThoai());
            preparedStatement.setString(3, khoa.GetMaKhoa());
            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Del khoa
    public void DeleteKhoa(String maKhoa) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "delete Khoa where MaKhoa = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, maKhoa);
            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    
    public Khoa GetKhoaByMaKhoaDAL(String maKhoa) 
    {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "select * from Khoa where MaKhoa = ?";

        try 
        {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, maKhoa);
            ResultSet result = preparedStatement.executeQuery();

            while (result.next()) {
                Khoa khoasql = new Khoa();
              
                khoasql.SetMaKhoa(result.getString("MaKhoa"));
                khoasql.SetTenKhoa(result.getString("TenKhoa"));
                khoasql.SetDienThoai(result.getString("DienThoai"));
               
                return khoasql;
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return  null;
    }
}
