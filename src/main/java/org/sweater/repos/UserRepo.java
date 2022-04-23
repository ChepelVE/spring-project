package org.sweater.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.sweater.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
