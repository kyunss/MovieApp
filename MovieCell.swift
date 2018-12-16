//
//  MovieCell.swift
//  MovieApp
//
//  Created by Daniel Kwak on 15/12/2018.
//  Copyright © 2018 Daniel Kwak. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet var thumbImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var movieGrade: UIImageView!
    @IBOutlet var userRatingLabel: UILabel! //평점
    @IBOutlet var reservationGradeLabel: UILabel! //예매순위
    @IBOutlet var rerservationRateLabel: UILabel! //예매율
    @IBOutlet var dateLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
