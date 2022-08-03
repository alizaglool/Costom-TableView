//
//  UserAddVC.swift
//  CostomTableViewTest
//
//  Created by A_Z on 6/25/22.
//  Copyright © 2022 AliZ. All rights reserved.
//

import UIKit

class UserAddVC: UIViewController ,UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var TableViewAdd: UITableView!
    @IBOutlet weak var TxtUserName: UITextField!
    var ArrNames = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableViewAdd.delegate = self
        TableViewAdd.dataSource = self

        
    }
    // Add Cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        Cell.textLabel?.text = ArrNames[indexPath.row]
        return Cell
    }
    
    @IBAction func BtnAdd(_ sender: Any) {
        if let text = TxtUserName.text {
            ArrNames.append(text)
            let indexRow = IndexPath(row: ArrNames.count - 1  , section: 0)
            TableViewAdd.beginUpdates()
            TableViewAdd.insertRows(at: [indexRow], with: .automatic)
            TableViewAdd.endUpdates()
            
            TxtUserName.text = ""
        }
       }
    // Edit Cell
    @IBAction func BtnEdit(_ sender: Any) {
        TableViewAdd.isEditing = !isEditing
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        ArrNames.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let DeleteAction = UIContextualAction(style: .destructive, title: "Delet") { (action, view, CompletedHandler) in
            self.ArrNames.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
            
            CompletedHandler(true)
        }
        let FavoriteAction = UIContextualAction(style: .normal, title: "favorite") { (_, _, _) in
            print("the User Add item in favorite")
            
        }
        FavoriteAction.backgroundColor = #colorLiteral(red: 0.9670919776, green: 0.6625588536, blue: 0.1867836118, alpha: 1)
        
        return UISwipeActionsConfiguration(actions: [DeleteAction , FavoriteAction])
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    }



   

