//
//  CountryVC.swift
//  CostomTableViewTest
//
//  Created by A_Z on 6/25/22.
//  Copyright © 2022 AliZ. All rights reserved.
//

import UIKit

class CountryVC: UIViewController ,UITableViewDataSource , UITableViewDelegate{

    @IBOutlet weak var TableCounty: UITableView!
    var CountyName = ["Egypt","Dobay","Argantia","Soida Arabic","Irdon"]
    override func viewDidLoad() {
        super.viewDidLoad()
//        CountyName.removeAll()
        TableCounty.dataSource = self
        TableCounty.delegate = self
        
        if CountyName.count == 0 {
            TableCounty.isHidden = true
            let ErrorData = UIImageView(frame: CGRect(x: 50, y: 100, width: self.view.frame.width - 100, height: 200))
            ErrorData.image = UIImage(named: "download")
            ErrorData.tintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            
            self.view.addSubview(ErrorData)
            let LbLError = UILabel(frame: CGRect(x: ErrorData.frame.minX, y: ErrorData.frame.maxY + 15 , width: ErrorData.frame.width, height: ErrorData.frame.height))
            LbLError.text = "No Data to Display"
            LbLError.textAlignment = .center
            self.view.addSubview(LbLError)
        }

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return  CountyName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "CountyCell", for: indexPath)
        
        Cell.textLabel?.text = CountyName[indexPath.row]
        return Cell
    }


}
