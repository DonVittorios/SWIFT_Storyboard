//
//  FriendsTableViewController.swift
//  VKDonV
//
//  Created by Виктор on 30.12.2021.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    var friendsData = [FriendsData]()
    var photo = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        friendsData += [
            FriendsData(name: "Владимир",
                        imagePath: "LuckyFriend"),
            FriendsData(name: "Антон",
                        imagePath: "Antoshka"),
            FriendsData(name: "Денис",
                        imagePath: "DenisDevil"),
            FriendsData(name: "Андрей",
                        imagePath: "AndreyBoss"),
            FriendsData(name: "Егор",
                        imagePath: "Gogy"),
            FriendsData(name: "Сергей",
                        imagePath: "Serge"),

        ]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Получаю ячейку из пула
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath) as! FriendsTableViewCell

        // Получаю имя друга для конкретной строки
        let friend = friendsData[indexPath.row]

        // Устанавливаю имя друга в надпись ячейки и фото
        cell.nameFriendLable?.text = friend.name
        cell.imageFriendsView?.image = friend.getImage()

        return cell
    }
    //Переход на PhotoFriendsCollectionViewController по клику на строчку таблицы
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let photoFriendsCollectionViewController = storyboard.instantiateViewController(withIdentifier: "photosStoryboard") as? PhotoFriendsCollectionViewController else {return}
        //Подтягиваю фото в ячейку
        photoFriendsCollectionViewController.photoCollectionViewController = friendsData[indexPath.row].getImage()!
        //Добавляю кнопку возврата назад на страницу Friends
        self.navigationController?.pushViewController(photoFriendsCollectionViewController, animated: true)
    }
}
