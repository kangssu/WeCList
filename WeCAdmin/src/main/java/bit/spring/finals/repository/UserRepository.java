package bit.spring.finals.repository;

import java.util.Optional;
import bit.spring.finals.domain.UserInfo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<UserInfo, Long> {
  Optional<UserInfo> findByEmail(String email);
}
