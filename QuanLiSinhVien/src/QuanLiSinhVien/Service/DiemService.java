/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLiSinhVien.Service;

import QuanLiSinhVien.DAL.DiemDAL;
import QuanLiSinhVien.Model.Diem;
import java.util.List;

/**
 *
 * @author Sonlanggtu
 */
public class DiemService {
    private DiemDAL diemDAL;
    
    public DiemService(){
        diemDAL = new DiemDAL();
    }
    
    public List<Diem> GetAllDiem( ){
        return diemDAL.GetAllDiem();
    }
    
    public void AddDiem(Diem diem){
        diemDAL.AddDiem(diem);
    }
    
    public void UpdateDiem(Diem diem){
        diemDAL.UpdateDiem(diem);
    }
    
    public void DeleteDiem(String id, String maMH, int hocKi){
        diemDAL.DeleteDiem(id, maMH, hocKi);
    }
    
    public Diem GetDiemByMasv(String id, String maMH, int hocKi)
    {
        return diemDAL.GetDiemByMasvDAL(id, maMH, hocKi);
    }
    
    public List<String> GetGetOnlyMasvAll()
    {
        return diemDAL.GetOnlyMasvAllDAL();
    }
    
     public List<String> GetGetOnlyMaMHAll()
    {
        return diemDAL.GetOnlyMaMHAllDAL();
    }
    
    
    
    
    
}
