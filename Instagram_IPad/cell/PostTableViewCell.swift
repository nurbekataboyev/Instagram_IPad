//
//  PostTableViewCell.swift
//  Instagram_IPad
//
//  Created by Nurbek on 21/11/23.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var fullname: UILabel!
    @IBOutlet weak var post1: UIImageView!
    @IBOutlet weak var post2: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
