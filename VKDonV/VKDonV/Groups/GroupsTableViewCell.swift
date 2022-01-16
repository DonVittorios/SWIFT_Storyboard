//
//  GroupsTableViewCell.swift
//  VKDonV
//
//  Created by Виктор on 16.01.2022.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameGroupsLabel: UILabel!
    @IBOutlet weak var imageGroupsView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
