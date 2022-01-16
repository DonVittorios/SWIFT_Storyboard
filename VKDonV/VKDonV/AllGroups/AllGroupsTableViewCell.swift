//
//  AllGroupsTableViewCell.swift
//  VKDonV
//
//  Created by Виктор on 16.01.2022.
//

import UIKit

class AllGroupsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameAllGroupsLabel: UILabel!
    @IBOutlet weak var imageAllGroupsView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
