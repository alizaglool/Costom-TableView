//
//  PhotosVC.swift
//  CostomTableViewTest
//
//  Created by A_Z on 6/25/22.
//  Copyright © 2022 AliZ. All rights reserved.
//

import UIKit

class PhotosVC: UIViewController ,UITableViewDelegate ,UITableViewDataSource {

    @IBOutlet weak var TableViewPhoto: UITableView!
    var Arrimage = [UIImage(named: "img_amman"),UIImage(named: "img_cairo"),UIImage(named: "img_dubai"),UIImage(named: "img_riyadh")]
    override func viewDidLoad() {
        super.viewDidLoad()

        TableViewPhoto.delegate = self
        TableViewPhoto.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Arrimage.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "CellImage") as! PhotosCell
            Cell.imgCityCell.image = Arrimage[indexPath.row]
        return Cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let photo = Arrimage[indexPath.row]
        let HeightWightRatio = photo!.size.width / photo!.size.height
        
        
        return TableViewPhoto.frame.width / HeightWightRatio
    }

   
}
