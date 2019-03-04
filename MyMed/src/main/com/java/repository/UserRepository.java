package repository;

import pojo.User;

public interface UserRepository {
    public User addUser(User user);

    public User loginUser(User user);

}
