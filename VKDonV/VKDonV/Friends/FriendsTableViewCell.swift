//
//  FriendsTableViewCell.swift
//  VKDonV
//
//  Created by Виктор on 06.01.2022.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {

    @IBOutlet weak var nameFriendLable: UILabel!
    @IBOutlet weak var imageFriendsView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
