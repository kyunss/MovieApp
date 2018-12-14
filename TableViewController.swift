//
//  TableViewController.swift
//  MovieApp
//
//  Created by Daniel Kwak on 14/12/2018.
//  Copyright © 2018 Daniel Kwak. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    let cellIdentifier = "Movie"
//    var movies:[Movie] = [Movie]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath)
        
        //cell의 데이터 설정
        // 이미지, 영화제목 , 관람등급 , 평점 , 예매순위 , 예매율 , 개봉일
        
        let thumb: String
        let title: String
        let grade: Int
        let userRating: Double
        let reservationGrade: Int
        let reservationRate: Double
        let date: String

        
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
