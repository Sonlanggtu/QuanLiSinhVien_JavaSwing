/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLiSinhVien.Service;

import QuanLiSinhVien.DAL.MonHocDAL;
import QuanLiSinhVien.Model.MonHoc;
import java.util.List;

/**
 *
 * @author Sonlanggtu
 */
public class MonHocService {
     MonHocDAL mobHocDAL;
    public MonHocService()
    {
        mobHocDAL = new MonHocDAL();
    }
    
    public List<MonHoc> GetAllMonHoc()
    {
        return mobHocDAL.GetAllMonHoc();
    }
    
    public void AddMonHoc(MonHoc monHoc)
    {
         mobHocDAL.AddMonHoc(monHoc);
    }
    
    public void UpdateMonHoc(MonHoc monHoc)
    {
         mobHocDAL.UpdateMonHoc(monHoc);
    }
    
    public MonHoc GetMonHocByMaMH(String MaMH)
    {
        return mobHocDAL.GetMonHocByMaMH_DAL(MaMH);
    }
    
    public void DelSinhVien(String maMH)
    {
         mobHocDAL.DeleteMonHoc(maMH);
    }
   
}
