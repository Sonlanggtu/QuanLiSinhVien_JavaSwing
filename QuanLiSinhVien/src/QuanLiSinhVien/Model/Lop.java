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
public class Lop {
    private String MaLop;
    private String TenLop;
    private String MaKhoa;
    private String MaHeDT;
    private String MaKhoaHoc;
    
    // set get MaLop
    public String GetMaLop(){
        return MaLop;
    }
    public  void SetMaLop(String MaLop){
        this.MaLop = MaLop;
    }
    
    // get set TenLop
     public String GetTenLop(){
        return TenLop;
    }
    public  void SetTenLop(String TenLop){
        this.TenLop = TenLop;
    }
    
    // set get MaKhoa
    public String GetMaKhoa(){
        return MaKhoa;
    }
    public  void SetMaKhoa(String MaKhoa){
        this.MaKhoa = MaKhoa;
    }
    
    // set get MaHeDT
      public String GetMaHeDT(){
        return MaHeDT;
    }
    public  void SetMaHeDT(String MaHeDT){
        this.MaHeDT = MaHeDT;
    }
    // MaKhoaHoc
       public String GetMaKhoaHoc(){
        return MaKhoaHoc;
    }
    public  void SetMaKhoaHoc(String MaKhoaHoc){
        this.MaKhoaHoc = MaKhoaHoc;
    }
}
