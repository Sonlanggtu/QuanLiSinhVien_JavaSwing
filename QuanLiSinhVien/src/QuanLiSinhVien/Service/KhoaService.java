/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLiSinhVien.Service;

import QuanLiSinhVien.DAL.KhoaDAL;
import QuanLiSinhVien.Model.Khoa;
import java.util.List;

/**
 *
 * @author Sonlanggtu
 */
public class KhoaService {
     KhoaDAL khoaDAL;
    public KhoaService()
    {
        khoaDAL = new KhoaDAL();
    }
    
    public List<Khoa> GetAllKhoa()
    {
        return khoaDAL.GetAllKhoa();
    }
    
    public void AddKhoa(Khoa khoa)
    {
         khoaDAL.AddKhoa(khoa);
    }
    
    public void UpdateKhoa(Khoa khoa)
    {
         khoaDAL.UpdateKhoa(khoa);
    }
    
    public Khoa GetKhoaByMaKhoa(String MaKhoa)
    {
        return khoaDAL.GetKhoaByMaKhoaDAL(MaKhoa);
    }
    
    public void DelKhoa(String MaKhoa)
    {
         khoaDAL.DeleteKhoa(MaKhoa);
    }
}
