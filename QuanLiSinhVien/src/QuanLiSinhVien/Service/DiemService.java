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
    
}
