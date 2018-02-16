//
//  BizCell.swift
//  Yelp
//
//  Created by Samba on 2/14/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BizCell: UITableViewCell {

    @IBOutlet weak var distLabel: UILabel!
    @IBOutlet weak var ratingImage: UIImageView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var revLabel: UILabel!
    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    
    
    var business : Business!{
        didSet{
            nameLabel.text = business.name
            distLabel.text = business.distance
            ratingImage.setImageWith(business.ratingImageURL!)
            addressLabel.text = business.address
            revLabel.text = "\(business.reviewCount!) Reviews"
            imageV.setImageWith(business.imageURL!)
            descLabel.text = business.categories
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        imageV.layer.cornerRadius = 3
        imageV.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
