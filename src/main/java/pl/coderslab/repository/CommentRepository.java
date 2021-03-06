package pl.coderslab.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.coderslab.model.Comment;
import pl.coderslab.model.Tweet;

public interface CommentRepository extends JpaRepository<Comment, Long> {

	List<Comment> findByTweetOrderByCreatedDesc(Tweet post);

	List<Comment> findByTweetIdOrderByCreatedDesc(Long id);
}
