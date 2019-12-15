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
public class HeDT {
   private String MaHeDT;
   private String TenHeDT;
   
   // set get MaHeDT
   public String GetMaHeDT(){
       return MaHeDT;
   }
   public void SetMaHeDT(String MaHeDT){
       this.MaHeDT = MaHeDT;
   }
   
   // TenHeDT
    public String GetTenHeDT(){
       return TenHeDT;
   }
    public void SetTenHeDT(String TenHeDT){
       this.TenHeDT = TenHeDT;
   }
}
