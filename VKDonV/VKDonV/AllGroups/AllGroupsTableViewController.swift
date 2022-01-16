//
//  AllGroupsTableViewController.swift
//  VKDonV
//
//  Created by Виктор on 15.01.2022.
//

import UIKit

class AllGroupsTableViewController: UITableViewController {
    
    
    
    var allGroupsData = [AllGroupsData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allGroupsData += [
            AllGroupsData(nameGroup: "Чудаки",
                        imagePathGroup: "Chudaki"),
            AllGroupsData(nameGroup: "Рыбалка",
                       imagePathGroup: "Fishing"),
            AllGroupsData(nameGroup: "Путешествия",
                       imagePathGroup: "Trevels"),
            AllGroupsData(nameGroup: "Тачки",
                       imagePathGroup: "Cars"),
            AllGroupsData(nameGroup: "Охота",
                       imagePathGroup: "Hunting"),
            AllGroupsData(nameGroup: "Музыка",
                       imagePathGroup: "Music"),

        ]
       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allGroupsData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupsCell", for: indexPath) as! AllGroupsTableViewCell

        // Получаю имя группы для конкретной строки
        let group = allGroupsData[indexPath.row]

        // Устанавливаю имя группы в надпись ячейки и фото
        cell.nameAllGroupsLabel?.text = group.nameGroup
        cell.imageAllGroupsView?.image = group.getImage()


        return cell
    }
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
