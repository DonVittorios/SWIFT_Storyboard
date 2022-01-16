//
//  GroupsTableViewController.swift
//  VKDonV
//
//  Created by Виктор on 15.01.2022.
//

import UIKit

class GroupsTableViewController: UITableViewController {
    var groupsData = [GroupsData]()
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        // Проверяю идентификатор, чтобы убедиться, что это нужный переход
        if segue.identifier == "addGroup" {
            // Получаю ссылку на контроллер, с которого осуществлен переход
            guard let allGroupsTableViewController = segue.source as? AllGroupsTableViewController else {return}
            
            // Получю индекс выделенной ячейки
            if let indexPath = allGroupsTableViewController.tableView.indexPathForSelectedRow {
                // Получаю группу по индексу
                let group = allGroupsTableViewController.allGroupsData[indexPath.row]
                // Добавляю группу в список выбранных групп
                groupsData.append(group.nameGroup)
                // Обновляю таблицу
                tableView.reloadData()
            }
        }
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return groupsData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsCell", for: indexPath) as! GroupsTableViewCell

        // Получаю имя группы для конкретной строки
        let group = groupsData[indexPath.row]

        // Устанавливаю имя группы в надпись ячейки и фото
        cell.nameGroupsLabel?.text = group.nameGroup
        cell.imageGroupsView?.image = group.getImage()


        return cell
    }
    

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
