/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuanLiSinhVien.Service;

import QuanLiSinhVien.DAL.LopDAL;
import QuanLiSinhVien.Model.Lop;
import java.util.List;

/**
 *
 * @author Sonlanggtu
 */
public class LopService {
    LopDAL lopDAL;
    public LopService()
    {
        lopDAL = new LopDAL();
    }
    
    public List<Lop> GetAllLop()
    {
        return lopDAL.GetAllLop();
    }
    
    public void AddLop(Lop lop)
    {
         lopDAL.AddLop(lop);
    }
    
    public void UpdateLop(Lop lop)
    {
         lopDAL.UpdateLop(lop);
    }
    
    public Lop GetLopByMaLop(String MaLop)
    {
        return lopDAL.GetLopByMalopDAL(MaLop);
    }
    
    public void DelLop(String Malop)
    {
         lopDAL.DeleteLop(Malop);
    }
    
    public List<String> GetOnlyMaKhoa()
    {
       return lopDAL.GetOnlyKhoaDAL();
    }
    
      public List<String> GetOnlyMaHDT()
    {
       return lopDAL.GetOnlyMaHDTDAL();
    }
      
       public List<String> GetOnlyMaKhoaHoc()
    {
       return lopDAL.GetOnlyKhoaHocDAL();
    }
}
