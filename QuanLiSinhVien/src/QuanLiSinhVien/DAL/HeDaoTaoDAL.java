/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLiSinhVien.DAL;

import QuanLiSinhVien.Model.HeDT;
import QuanLiSinhVien.Model.KhoaHoc;
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


public class HeDaoTaoDAL {
      // Get KhoaHoc
    public List<HeDT> GetAllKhoaHoc() {
        List<HeDT> listHeDaoTao = new ArrayList<HeDT>();
        Connection connection = JDBCMSSQL.GetConnect();

        String sql = "select * from HeDT";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            ResultSet result = preparedStatement.executeQuery();

            while (result.next()) {
                HeDT heDTsql = new HeDT();
                heDTsql.SetMaHeDT(result.getString("MaHeDT"));
                heDTsql.SetTenHeDT(result.getString("TenHeDT"));
                listHeDaoTao.add(heDTsql);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listHeDaoTao;
    }

    // Add HeDaoTao
    public void AddHeDaoTao(HeDT heDT) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "insert into HeDT(MaHeDT, TenHeDT) values (?,?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, heDT.GetMaHeDT());
            preparedStatement.setString(2, heDT.GetTenHeDT());          
            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
            //
        }
    }

    // Update HeDaoTao

    public void UpdateHeDaoTao(HeDT heDT) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "update HeDT set TenHeDT = ? where MaHeDT = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, heDT.GetTenHeDT());
            preparedStatement.setString(2, heDT.GetMaHeDT());
            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Del HeDaoTao
    public void DeleteHeDaoTao(String MaHDT) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "delete HeDT where MaHeDT = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, MaHDT);
            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public HeDT GetHeDaoTaoByMaHDT_DAL(String maHDT) 
    {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "select * from HeDT where MaHeDT = ?";

        try
        {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, maHDT);
            ResultSet result = preparedStatement.executeQuery();

            while (result.next()) {
                HeDT heDTsql = new HeDT();
              
                heDTsql.SetMaHeDT(result.getString("MaHeDT"));
                heDTsql.SetTenHeDT(result.getString("TenHeDT"));
                return heDTsql;
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return  null;
    }
    
}
