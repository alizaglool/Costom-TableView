//
//  ViewController.swift
//  CostomTableViewTest
//
//  Created by A_Z on 6/23/22.
//  Copyright © 2022 AliZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var TableViewTest: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var ArrNumber = ["Ali" , "Zaghloul" , "Elhabal" , "ElMashat" , "AbOGable"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrNumber.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        Cell.textLabel?.text = ArrNumber[indexPath.row]
        
        return Cell
    }


}

