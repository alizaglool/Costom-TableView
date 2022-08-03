//
//  RefrshCV.swift
//  CostomTableViewTest
//
//  Created by A_Z on 6/25/22.
//  Copyright © 2022 AliZ. All rights reserved.
//

import UIKit

class RefrshCV: UIViewController ,UITableViewDataSource , UITableViewDelegate{

 
    @IBOutlet weak var TableViewRefrsh: UITableView!
    var ArrRefrsh = [String]()
    var RefrshController = UIRefreshControl()
    override func viewDidLoad() {
        super.viewDidLoad()
        TableViewRefrsh.delegate = self
        TableViewRefrsh.dataSource = self
        
        RefrshController.tintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        RefrshController.addTarget(self, action: #selector(GetData), for: .valueChanged)
        TableViewRefrsh.addSubview(RefrshController)
      
    }
    @objc func GetData (){
        ArrRefrsh.append("Ali \(ArrRefrsh.count)")
        RefrshController.endRefreshing()
        TableViewRefrsh.reloadData()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return ArrRefrsh.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "RefrshCell", for: indexPath)
        Cell.textLabel?.text = ArrRefrsh[indexPath.row]
        
        return Cell
    }
    

}
