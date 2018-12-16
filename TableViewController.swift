//
//  TableViewController.swift
//  MovieApp
//
//  Created by Daniel Kwak on 14/12/2018.
//  Copyright © 2018 Daniel Kwak. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var movies:[Movie] = []
    @IBOutlet weak var tableView: UITableView!
    let cellIdentifier = "Movie"
    
    let timeFormatter: DateFormatter = {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /** 뷰가 뷰 계층에 추가되어 화면에 호출되면 나타나는 메소드 **/
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
        
        guard let url: URL = URL(string: "https://connect-boxoffice.run.goorm.io/movies?order_type=0") else { return }
        
        let session: URLSession = URLSession(configuration: .default)
        let dataTask: URLSessionDataTask = session.dataTask(with: url){ (data, response , error ) in
            
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let data = data else{ return }
            do{
                let apiResponse: APIResponse = try JSONDecoder().decode(APIResponse.self, from: data)
                self.movies = apiResponse.movies
                self.tableView.reloadData()
            }catch (let err){
                print(err.localizedDescription)
            }
        }
        dataTask.resume()
    }
    
    func requestMovieListCompletionHandler(data: Data? , response: URLResponse? , error: Error? ) {
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: MovieCell  = self.tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath) as! MovieCell //강제캐스팅
        let movie: Movie = movies[indexPath.row]
        print(movie.title)
        
        //cell의 데이터 설정
        // 이미지, 영화제목 , 관람등급 , 평점 , 예매순위 , 예매율 , 개봉일
        
        guard let thumbURL: URL = URL(string: movie.thumb) else { return cell }
//        print(movie.thumb)
        guard let imageData: Data = try? Data(contentsOf: thumbURL) else { return cell }
        cell.thumbImage?.image = UIImage(data: imageData)
        
//        cell.titleLabel?.text = movie.title
//        switch movie.grade {
//        case 12:
//            cell.movieGrade?.image = UIImage(named: "ic_12")
//        case 15:
//            cell.movieGrade?.image = UIImage(named: "ic_15")
//        case 19 :
//            cell.movieGrade?.image = UIImage(named: "ic_19")
//        default:
//            return cell
//        }
//        cell.userRatingLabel?.text = "평점 : \(movie.user_rating)"
//        cell.reservationGradeLabel?.text = "예매순위 : \(movie.reservation_grade)"
//        cell.rerservationRateLabel?.text = "예매율 : \(movie.reservation_rate)"
//        cell.dateLabel?.text = "개봉일 : \(movie.date)"

        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
