//
//  FriendFollowTableViewCell.swift
//  Assignment2
//
//  Created by tunlukhant on 8/6/19.
//  Copyright © 2019 tunlukhant. All rights reserved.
//

import UIKit

class FriendFollowTableViewCell: UITableViewCell {
    
    static let identifier = "FriendFollowTableViewCell"

    @IBOutlet weak var viewFollow: UIView!
    @IBOutlet weak var ivLuffy: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblRow: UILabel!
    @IBOutlet weak var lblFavorite: UILabel!
    @IBOutlet weak var lblFollow: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
        viewFollow.layer.cornerRadius = 13
        viewFollow.layer.borderWidth = 1.0
        ivLuffy.layer.cornerRadius = ivLuffy.frame.height/2
        //image.layer.masksToBounds = false
        //image.layer.borderColor = UIColor.black.cgColor
        //image.layer.cornerRadius = image.frame.height/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
