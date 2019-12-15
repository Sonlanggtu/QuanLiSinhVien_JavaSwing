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
public class MonHoc {
    private String MaMH;
    private String TenMH;
    private int SoTrinh;
    
    // set get MaMH
    public String GetMaMH(){
        return MaMH;
    }
    public void SetMaMH(String MaMH){
        this.MaMH = MaMH;
    }
    
    // set get TenMH
    public String GetTenMH(){
        return TenMH;
    }
    public void SetTenMH(String TenMH){
        this.TenMH = TenMH;
    }
    
    // set get SoTrinh
    public int GetSoTrinh(){
        return SoTrinh;
    }
    public void SetSoTrinh(int SoTrinh){
        this.SoTrinh = SoTrinh;
    }
}
