/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLiSinhVien.Model;

/**
 *
 * @author Sonlanggtu
 */
public class Khoa {
    private String MaKhoa;
    private String TenKhoa;
    private String DienThoai;
    
    // set get MaKhoa
    public String GetMaKhoa(){
        return MaKhoa;
    }
    
    public void SetMaKhoa(String MaKhoa){
        this.MaKhoa = MaKhoa;
    }
    
     // set get TenKhoa
    public String GetTenKhoa(){
        return TenKhoa;
    }
    
    public void SetTenKhoa(String TenKhoa){
        this.TenKhoa = TenKhoa;
    }
    
    // DienThoai
      public String GetDienThoai(){
        return DienThoai;
    }
    
    public void SetDienThoai(String DienThoai){
        this.DienThoai = DienThoai;
    }
   
}
