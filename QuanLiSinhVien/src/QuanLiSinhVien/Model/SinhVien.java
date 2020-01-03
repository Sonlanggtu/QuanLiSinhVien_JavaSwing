/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLiSinhVien.Model;

import java.sql.Date;

/**
 *
 * @author Sonlanggtu
 */
public class SinhVien {
    private String MaSV;
    private String TenSV;
    private Boolean GioiTinh;
    private String GioiTinhString;
    private String NgaySinh;
    private String QueQuan;
    private String MaLop;
    
    // set get MaSV
    public String GetMaSV(){
        return MaSV;
    }
    
    public void SetMaSV(String MaSV){
        this.MaSV = MaSV;
    }
    
     // set get TenSV
    public String GetTenSV(){
        return TenSV;
    }
    
     public void SetTenSV(String TenSV){
        this.TenSV = TenSV;
    }
     
     // set get GioiTinh
      public String GetGioiTinhString(){
         if(GioiTinh == true)
         {
             GioiTinhString = "Nam";
         }
         else
         {
            GioiTinhString = "Nữ";
         }
         return GioiTinhString;
         
         
    }
      
      public Boolean GetGioiTinh(){
         return GioiTinh;
    }
    
     public void SetGioiTinh(Boolean GioiTinh){
        this.GioiTinh = GioiTinh;
    }
     
     // set get NgaySinh
       public String GetNgaySinh(){
        return NgaySinh;
    }
    
     public void SetNgaySinh(String NgaySinh){
        this.NgaySinh = NgaySinh;
    }
     
     // set get QueQuan
       public String GetQueQuan(){
        return QueQuan;
    }
    
     public void SetQueQuan(String QueQuan){
        this.QueQuan = QueQuan;
    }
     
     // set get MaLop
     public String GetMaLop(){
        return MaLop;
    }
    
     public void SetMaLop(String MaLop){
        this.MaLop = MaLop;
    }

}   
