//
//  MovieInformation.swift
//  MovieApp
//
//  Created by Daniel Kwak on 14/12/2018.
//  Copyright © 2018 Daniel Kwak. All rights reserved.
//

import Foundation
/*
 [{
 grade: 12,
 thumb: "http://movie.phinf.naver.net/20171201_181/1512109983114kcQVl_JPEG/movie_image.jpg?type=m99_141_2",
 reservation_grade: 1, title: "신과함께-죄와벌", reservation_rate: 35.5, user_rating: 7.98, date: "2017-12-20",
 id: "5a54c286e8a71d136fb5378e"
 },
 {
 grade: 12,
 thumb: "http://movie2.phinf.naver.net/20170925_296/150631600340898aUX_JPEG/movie_image.jpg?type=m99_141_2",
 reservation_grade: 2,
 title: "저스티스 리그", reservation_rate: 12.63, user_rating: 7.8,
 date: "2017-11-15",
 id: "5a54c1e9e8a71d136fb5376c"
 }]
 */

struct MovieInformation: Codable{
    
    let grade: Int
    let thumb: String
    let reservationGrade: Int //키 값이 다름
    let title: String
    let reservationRate: Double //키 값이 다름
    let userRating: Double //키 값이 다름
    let date: String
    
    enum CodingKeys: String, CodingKey {
        case reservationGrade = "reservation_grade"
        case reservationRate = "reservation_rate"
        case userRating = "user_rating"
    }
}
