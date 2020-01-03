/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLiSinhVien.DAL;

import QuanLiSinhVien.Model.Diem;
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
public class SinhVienDAL {
     // Get SinhVien
    public List<SinhVien> GetAllSinhVien() {
        List<SinhVien> listSinhVien = new ArrayList<SinhVien>();
        Connection connection = JDBCMSSQL.GetConnect();

        String sql = "select * from SinhVien";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            ResultSet result = preparedStatement.executeQuery();

            while (result.next()) {
                SinhVien sinhViensql = new SinhVien();
                sinhViensql.SetMaSV(result.getString("MaSV"));
                sinhViensql.SetTenSV(result.getString("TenSV"));
                sinhViensql.SetGioiTinh(result.getBoolean("GioiTinh"));
                sinhViensql.SetNgaySinh(result.getString("NgaySinh"));
                sinhViensql.SetQueQuan(result.getString("QueQuan"));
                sinhViensql.SetMaLop(result.getString("MaLop"));               
                listSinhVien.add(sinhViensql);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listSinhVien;
    }

    // Add SinhVien
    public void AddSinhVien(SinhVien sinhVien) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "insert into SinhVien(MaSV, TenSV, GioiTinh, NgaySinh, QueQuan, MaLop) values (?,?, ?, ?, ?, ?)";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, sinhVien.GetMaSV());
            preparedStatement.setString(2, sinhVien.GetTenSV());
            preparedStatement.setBoolean(3, sinhVien.GetGioiTinh());
            preparedStatement.setString(4, sinhVien.GetNgaySinh());
            preparedStatement.setString(5, sinhVien.GetQueQuan());
            preparedStatement.setString(6, sinhVien.GetMaLop());

            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
            //
        }
    }

    // Update SinhVien

    public void UpdateSinhVien(SinhVien sinhVien) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "update SinhVien set TenSV = ?, GioiTinh = ?, NgaySinh = ?, QueQuan = ?, MaLop = ? where MaSV = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, sinhVien.GetTenSV());
            preparedStatement.setBoolean(2, sinhVien.GetGioiTinh());
            preparedStatement.setString(3, sinhVien.GetNgaySinh());
            preparedStatement.setString(4, sinhVien.GetQueQuan());
            preparedStatement.setString(5, sinhVien.GetMaLop());
            preparedStatement.setString(6, sinhVien.GetMaSV());

            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Del SinhVien
    public void DeleteSinhVien(String maSV) {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "Delete SinhVien where MaSV = ?";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, maSV);
            int result = preparedStatement.executeUpdate();
            System.out.println(result);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public SinhVien GetDiemByMasvDAL(String maSV) 
    {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "Select * from SinhVien where Masv = ?";

        try 
        {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, maSV);
            ResultSet result = preparedStatement.executeQuery();

            while (result.next()) {
                SinhVien sinhViensql = new SinhVien();
              
                sinhViensql.SetMaSV(result.getString("MaSV"));
                sinhViensql.SetTenSV(result.getString("TenSV"));
                sinhViensql.SetGioiTinh(result.getBoolean("GioiTinh"));
                sinhViensql.SetNgaySinh(result.getString("NgaySinh"));
                sinhViensql.SetQueQuan(result.getString("QueQuan"));
                sinhViensql.SetMaLop(result.getString("MaLop"));   
                return sinhViensql;
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return  null;
    }
    
    
   public List<String> GetOnlyMalopDAL()
   {
        List<String> listMalop = new ArrayList<String>();
        Connection connection = JDBCMSSQL.GetConnect();

        String sql = "Select MaLop from Lop";

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet result = preparedStatement.executeQuery();

            while (result.next()) {
                listMalop.add(result.getString("MaLop"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listMalop;
    }
   
   
}
