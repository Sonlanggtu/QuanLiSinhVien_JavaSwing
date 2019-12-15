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
public class KhoaHoc {
    private String MaKhoaHoc;
    private String TenKhoaHoc;
    
    //set get MaKhoaHoc
    public String GetMaKhoaHoc(){
        return MaKhoaHoc;
    }
    
    public void SetMaKhoaHoc(String MaKhoaHoc){
        this.MaKhoaHoc = MaKhoaHoc;
    }
    
    // get set TenKhoaHoc
    public String GetTenKhoaHoc(){
        return TenKhoaHoc;
    }
    
    public void SetTenKhoaHoc(String TenKhoaHoc){
        this.TenKhoaHoc = TenKhoaHoc;
    }
}
