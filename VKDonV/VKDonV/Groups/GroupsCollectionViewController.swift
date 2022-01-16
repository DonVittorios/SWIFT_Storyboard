//
//  GroupsCollectionViewController.swift
//  VKDonV
//
//  Created by Виктор on 10.01.2022.
//

import UIKit

class GroupsCollectionViewController: UICollectionViewController {
    var groupsData = [GroupsData]()

    override func viewDidLoad() {
        super.viewDidLoad()
        groupsData += [
            GroupsData(nameGroup: "Чудаки",
                        imagePathGroup: "Chudaki"),
            GroupsData(nameGroup: "Рыбалка",
                       imagePathGroup: "Fishing"),
            GroupsData(nameGroup: "Путешествия",
                       imagePathGroup: "Trevels"),
            GroupsData(nameGroup: "Тачки",
                       imagePathGroup: "Cars"),
            GroupsData(nameGroup: "Охота",
                       imagePathGroup: "Hunting"),
            GroupsData(nameGroup: "Музыка",
                       imagePathGroup: "Music"),

        ]

    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return groupsData.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupsCell", for: indexPath) as! GroupsCollectionViewCell
        // Получаю имя группы для конкретной строки
        let group = groupsData[indexPath.row]

        // Устанавливаю имя группы в надпись ячейки и фото
        cell.nameFriendLable?.text = group.nameGroup
        cell.imageFriendsView?.image = group.getImage()

        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
