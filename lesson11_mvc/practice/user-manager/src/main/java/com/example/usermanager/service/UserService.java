package com.example.usermanager.service;

import com.example.usermanager.model.User;
import com.example.usermanager.repository.IUserRepository;
import com.example.usermanager.repository.UserRepository;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    IUserRepository userRepository = new UserRepository();

    @Override
    public void insertUser(User user) throws SQLException {
        userRepository.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return userRepository.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return userRepository.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return userRepository.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return userRepository.updateUser(user);
    }

    @Override
    public List<User> searchByCountry(String country) throws SQLException {
        return userRepository.searchByCountry(country);
    }
}
