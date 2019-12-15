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
public class Diem {
    private String MaSV;
    private String MaMH;
    private int HocKy;
    private int DiemLan1;
    private int DiemLan2;
    
    // set get MaSV
    public String GetMaSV(){
        return MaSV;
    }
    public void SetMaSV(String MaSV){
        this.MaSV = MaSV;
    }
    
    // set get MaMH
    public String GetMaMH(){
        return MaMH;
    }
    public void SetMaMH(String MaMH){
        this.MaMH = MaMH;
    }
    
    // set get Hoc Ki
    public int GetHocKy(){
        return HocKy;
    }
    public void SetHocKy(int HocKy){
        this.HocKy = HocKy;
    }
    
    // set get DiemLan1
    public int GetDiemLan1(){
        return DiemLan1;
    }
    public void SetDiemLan1(int DiemLan1){
        this.DiemLan1 = DiemLan1;
    }
    
    // set get DiemLan2
     public int GetDiemLan2(){
        return DiemLan2;
    }
    public void SetDiemLan2(int DiemLan2){
        this.DiemLan2 = DiemLan2;
    }
}
