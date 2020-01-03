/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLiSinhVien.Service;

import QuanLiSinhVien.DAL.KhoaHocDAL;
import QuanLiSinhVien.Model.KhoaHoc;
import java.util.List;

/**
 *
 * @author Sonlanggtu
 */
public class KhoaHocService {
     KhoaHocDAL khoaHocDAL;
    public KhoaHocService()
    {
        khoaHocDAL = new KhoaHocDAL();
    }
    
    public List<KhoaHoc> GetAllKhoaHoc()
    {
        return khoaHocDAL.GetAllKhoaHoc();
    }
    
    public void AddKhoaHoc(KhoaHoc khoaHoc)
    {
         khoaHocDAL.AddKhoaHoc(khoaHoc);
    }
    
    public void UpdateKhoaHoc(KhoaHoc khoaHoc)
    {
         khoaHocDAL.UpdateKhoaHoc(khoaHoc);
    }
    
    public KhoaHoc GetKhoaHocByMaKH(String MaKH)
    {
        return khoaHocDAL.GetKhoaHocByMaKHDAL(MaKH);
    }
    
    public void DelKhoaHoc(String MaKH)
    {
         khoaHocDAL.DeleteKhoaHoc(MaKH);
    }
}
