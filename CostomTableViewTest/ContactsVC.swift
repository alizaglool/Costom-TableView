//
//  ContactsVC.swift
//  CostomTableViewTest
//
//  Created by A_Z on 6/25/22.
//  Copyright © 2022 AliZ. All rights reserved.
//

import UIKit

class ContactsVC: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var TableViewContacts: UITableView!
    
    var ArrSection = ["A","M","K","R"]
    var ArrRows = [["Ali","Abdo","Aya","Ayman"],["Mahamed","Mashet","Mazen"],["Khaled","Khloud"],["Rehab","Rahoop"]]
    override func viewDidLoad() {
        super.viewDidLoad()

       TableViewContacts.delegate = self
        TableViewContacts.dataSource = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return ArrSection.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ArrSection[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrRows[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = TableViewContacts.dequeueReusableCell(withIdentifier: "CellContacts", for: indexPath)
        Cell.textLabel?.text = ArrRows[indexPath.section][indexPath.row]
        
        return Cell
    }
}
