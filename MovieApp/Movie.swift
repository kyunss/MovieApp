//
//  Movie.swift
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
struct APIResponse: Codable{
    let movies: [Movie]
}

struct Movie: Codable {

/*
    {"movies":[{"id":"5a54c286e8a71d136fb5378e","user_rating":7.98,"reservation_rate":35.5,"title":"신과함께-죄와벌","grade":12,"date":"2017-12-20","thumb":"http://movie.phinf.naver.net/20171201_181/1512109983114kcQVl_JPEG/movie_image.jpg?type=m99_141_2","reservation_grade":1},{"id":"5a54c1e9e8a71d136fb5376c","user_rating":7.8,"reservation_rate":12.63,"title":"저스티스 리그","grade":12,"date":"2017-11-15","thumb":"http://movie2.phinf.naver.net/20170925_296/150631600340898aUX_JPEG/movie_image.jpg?type=m99_141_2","reservation_grade":2},{"id":"5a54c1f2e8a71d136fb5376e","user_rating":9.8,"reservation_rate":6.73,"title":"토르:라그나로크","grade":12,"date":"2017-10-25","thumb":"http://movie2.phinf.naver.net/20170928_85/1506564710105ua5fS_PNG/movie_image.jpg?type=m99_141_2","reservation_grade":3},{"id":"5a54c1fbe8a71d136fb53770","user_rating":8.5,"reservation_rate":3.82,"title":"러빙 빈센트","grade":15,"date":"2017-11-09","thumb":"http://movie2.phinf.naver.net/20171013_210/1507861351048TMJcR_JPEG/movie_image.jpg?type=m99_141_2","reservation_grade":4},{"id":"5a54c207e8a71d136fb53772","user_rating":3.4,"reservation_rate":2.37,"title":"범죄도시","grade":19,"date":"2017-10-03","thumb":"http://movie2.phinf.naver.net/20170915_299/1505458505658vbKcN_JPEG/movie_image.jpg?type=m99_141_2","reservation_grade":5},{"id":"5a54be21e8a71d136fb536a1","user_rating":6.4,"reservation_rate":61.69,"title":"꾼","grade":15,"date":"2017-11-22","thumb":"http://movie2.phinf.naver.net/20171107_251/1510033896133nWqxG_JPEG/movie_image.jpg?type=m99_141_2","reservation_grade":6},{"id":"5a54c2f8e8a71d136fb537a7","user_rating":8.01,"reservation_rate":14.93,"title":"쥬만지: 새로운 세계","grade":12,"date":"2018-01-03","thumb":"http://movie.phinf.naver.net/20171127_196/1511757905894vduNA_JPEG/movie_image.jpg?type=m99_141_2","reservation_grade":7},{"id":"5a54df5ee8a71d136fb53d75","user_rating":9.2,"reservation_rate":1.93,"title":"뽀로로 극장판 공룡섬 대모험","grade":0,"date":"2017-12-07","thumb":"http://movie.phinf.naver.net/20171102_209/1509602233507BiJrs_JPEG/movie_image.jpg?type=m99_141_2","reservation_grade":8}],"order_type":0}
*/

    
    let id: String
    let user_rating: Double
    let reservation_rate: Double
    let title: String
    let grade: Int
    let date: String
    let thumb: String
    let reservation_grade: Int
    
//    var userRatingFullText: String {
//        return "평점 :  + \(self.reservation_rate)"
//    }
//    var reservationGradeFullText: String {
//        return "예매순위 :  + \(self.reservation_grade)"
//    }
//    var reservationRateFullText: String {
//        return "예매율 : + \(self.reservation_rate)"
//    }
//    var dateFullText: String {
//        return "개봉일 : + \(date)"
//    }
    
//    enum CodingKeys: String, CodingKey {
//        case reservationGrade = "reservatin_grade"
//        case reservationRate = "reservatin_rate"
//        case userRating = "user_rating"
//    }
    
    
}
