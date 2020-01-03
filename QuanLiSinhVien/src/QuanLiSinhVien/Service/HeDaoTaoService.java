/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLiSinhVien.Service;

import QuanLiSinhVien.DAL.HeDaoTaoDAL;
import QuanLiSinhVien.Model.HeDT;
import java.util.List;

/**
 *
 * @author Sonlanggtu
 */
public class HeDaoTaoService {
     HeDaoTaoDAL heDaoTaoDAL;
    public HeDaoTaoService()
    {
        heDaoTaoDAL = new HeDaoTaoDAL();
    }
    
    public List<HeDT> GetAllHeDaoTao()
    {
        return heDaoTaoDAL.GetAllKhoaHoc();
    }
    
    public void AddHeDaoTao(HeDT heDT)
    {
         heDaoTaoDAL.AddHeDaoTao(heDT);
    }
    
    public void UpdateHeDaoTao(HeDT heDT)
    {
        heDaoTaoDAL.UpdateHeDaoTao(heDT);
    }
    
    public HeDT GetHeDTByMaHDT(String MaHDT)
    {
        return heDaoTaoDAL.GetHeDaoTaoByMaHDT_DAL(MaHDT);
    }
    
    public void DelHeDaoTao(String MaHDT)
    {
         heDaoTaoDAL.DeleteHeDaoTao(MaHDT);
    }
}
