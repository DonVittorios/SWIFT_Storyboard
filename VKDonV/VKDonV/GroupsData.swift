//
//  GroupsData.swift
//  VKDonV
//
//  Created by Виктор on 10.01.2022.
//

import UIKit

class GroupsData: NSObject {
    var nameGroup: String!
    var imagePathGroup: String!

    convenience init(nameGroup: String, imagePathGroup: String)
    {
        self.init()

        self.nameGroup = nameGroup
        self.imagePathGroup = imagePathGroup
    }

    func getImage() -> UIImage?
    {
        return UIImage(named: self.imagePathGroup)
    }

}
