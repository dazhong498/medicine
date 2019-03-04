package repository;

import dbUtil.DBStore;
import pojo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserRepositoryImpl implements UserRepository{

    @Override
    public User addUser(User user) {
        Connection connection = null;
        String insertSql = "INSERT INTO med.users (username, pass, email, phone)\n" +
                "VALUES (?, ?, ?, ?) returning id;";
        try{
            connection = DBStore.getDataSource().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(insertSql);

            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getPhoneNumber());

            ResultSet resultSet = preparedStatement.executeQuery();

            if(resultSet.next()){
                user.setId(resultSet.getInt("id"));
            }


            connection.commit();


        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }
        return user;
    }

    @Override
    public User loginUser(User user) {
        Connection connection = null;
        String selectSql = "select *\n" +
                "from med.users\n" +
                "where username = ? and pass = ?;";

        try{
            connection = DBStore.getDataSource().getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(selectSql);

            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2, user.getPassword());

            ResultSet resultSe = preparedStatement.executeQuery();
            if(resultSe.next()){
                user.setId(resultSe.getInt("id"));
                user.setEmail(resultSe.getString("email"));
                user.setPhoneNumber(resultSe.getString("phone"));
            }else{
                return null;
            }
            connection.commit();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return user;
    }
}
