//
//  FriendsData.swift
//  VKDonV
//
//  Created by Виктор on 08.01.2022.
//

import UIKit

class FriendsData: NSObject {
    var name: String!
    var imagePath: String!

    convenience init(name: String, imagePath: String)
    {
        self.init()

        self.name = name
        self.imagePath = imagePath
    }

    func getImage() -> UIImage?
    {
        return UIImage(named: self.imagePath)
    }

}
