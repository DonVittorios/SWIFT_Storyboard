//
//  PhotoFriendsCollectionViewController.swift
//  VKDonV
//
//  Created by Виктор on 08.01.2022.
//

import UIKit

class PhotoFriendsCollectionViewController: UICollectionViewController {
    var photoCollectionViewController = UIImage()


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        //Получаю ячейку из пула
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotosFriend", for: indexPath) as! PhotoFriendsCollectionViewCell

        // Устанавливаю фото
        cell.imageFriendPreview?.image = photoCollectionViewController

        return cell
    }
    //Обновляю collectionView
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }
}
