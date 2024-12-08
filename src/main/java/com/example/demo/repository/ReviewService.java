package com.example.demo.repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Review;

import java.util.List;

@Service
public class ReviewService {

    @Autowired
    private ReviewRepository reviewRepository;

    public List<Review> saveReviews(List<Review> reviews) {
        return reviewRepository.saveAll(reviews);
    }

    public List<Review> getAllReviews() {
        return reviewRepository.findAll();
    }
}