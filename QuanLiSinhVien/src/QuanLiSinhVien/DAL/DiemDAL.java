/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLiSinhVien.DAL;

import QuanLiSinhVien.Model.Diem;
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
public class DiemDAL {
    
    // Get Diem
    public List<Diem> GetAllDiem()
    {
        List<Diem> diem = new ArrayList<Diem>();
        Connection connection = JDBCMSSQL.GetConnect();
        
        String sql = "Select * from Diem";
        
        try
        {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            
            ResultSet result = preparedStatement.executeQuery();
            
            while(result.next())
            {
               Diem diemsql = new Diem();
               diemsql.SetMaMH(result.getString("MaMH"));
               diemsql.SetMaSV(result.getString("MaSV"));
               diemsql.SetHocKy(result.getInt("HocKy"));
               diemsql.SetDiemLan1(result.getInt("DiemLan1"));
               diemsql.SetDiemLan2(result.getInt("DiemLan2"));
               
               diem.add(diemsql);     
            }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        return diem;
    }
    
    // Add Diem
     
    
    // Update Điểm
    public void UpdateDiem(Diem diem)
    {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "Update Diem Set MaMH = ?, HocKy = ?, DiemLan1 = ?, DiemLan2 = ? Where MaSV = ?";
        
        try
        {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
               preparedStatement.setString(1, diem.GetMaMH());
               preparedStatement.setInt(2, diem.GetHocKy());
               preparedStatement.setInt(3, diem.GetDiemLan1());
               preparedStatement.setInt(4, diem.GetDiemLan2());
               preparedStatement.setString(5 ,diem.GetMaSV());
              
               int result = preparedStatement.executeUpdate();
               System.out.println(result);
         }
        
        catch(SQLException e)
        {
            e.printStackTrace();
        }
    }
    
    // Del Diem
    public void DeleteDiem(String id)
    {
        Connection connection = JDBCMSSQL.GetConnect();
        String sql = "Delete Diem Where MaSV = ?";
        
        try
        {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
               preparedStatement.setString(1 ,id);
              
               int result = preparedStatement.executeUpdate();
               System.out.println(result);
         }
        
        catch(SQLException e)
        {
            e.printStackTrace();
        }
    }
}
