package repository;

import dbUtil.DBStore;
import pojo.Medicine;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MedicinesRepositoryImpl implements MedicineRepository{
    @Override
    public List<Medicine> getAllMedicines() {
        Connection connection = null;
        String selectSql = "select *\n" +
                "from med.medicine order by id;";
        List<Medicine> medicineList = new ArrayList<>();
        Medicine temp = null;
        try{
            connection = DBStore.getDataSource().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(selectSql);

            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                temp = new Medicine();
                temp.setId(resultSet.getInt("id"));
                temp.setName(resultSet.getString("medname"));
                temp.setPrice(resultSet.getFloat("price"));
                temp.setMadeBy(resultSet.getString("madeby"));
                temp.setDetail(resultSet.getString("detail"));

                medicineList.add(temp);
            }
            connection.commit();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return medicineList;
    }
}
