/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLiSinhVien.Service;

import QuanLiSinhVien.DAL.SinhVienDAL;
import QuanLiSinhVien.Model.SinhVien;
import java.util.List;

/**
 *
 * @author Sonlanggtu
 */
public class SinhVienService {
    SinhVienDAL sinhVienDAL;
    public SinhVienService()
    {
        sinhVienDAL = new SinhVienDAL();
    }
    
    public List<SinhVien> GetAllSinhVien()
    {
        return sinhVienDAL.GetAllSinhVien();
    }
    
    public void AddSinhVien(SinhVien sinhVien)
    {
         sinhVienDAL.AddSinhVien(sinhVien);
    }
    
    public void UpdateSinhVien(SinhVien sinhVien)
    {
         sinhVienDAL.UpdateSinhVien(sinhVien);
    }
    
    public SinhVien GetSinhVienByMaSV(String MaSV)
    {
        return sinhVienDAL.GetDiemByMasvDAL(MaSV);
    }
    
    public void DelSinhVien(String maSV)
    {
         sinhVienDAL.DeleteSinhVien(maSV);
    }
    
    public List<String> GetMaLop()
    {
       return sinhVienDAL.GetOnlyMalopDAL();
    }
    
}
