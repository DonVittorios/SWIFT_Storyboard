//
//  AllGroupsData.swift
//  VKDonV
//
//  Created by Виктор on 15.01.2022.
//

import UIKit

class AllGroupsData: NSObject {
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
