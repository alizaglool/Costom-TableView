//
//  HomeController.swift
//  CostomTableViewTest
//
//  Created by A_Z on 6/23/22.
//  Copyright © 2022 AliZ. All rights reserved.
//

import UIKit

class HomeController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    

    @IBOutlet weak var TableViewHome: UITableView!
    var ArrFuirt = [Fruit]()
    override func viewDidLoad() {
        super.viewDidLoad()

        TableViewHome.delegate = self
        TableViewHome.dataSource = self
        
        ArrFuirt.append(Fruit.init(name: "Orange", Price: 25, Desc: "The Foverit Furit in the Winner", photo: UIImage(named: "poor")!))
        ArrFuirt.append(Fruit.init(name: "Mango", Price: 25, Desc: "The Foverit Furit in the Winner", photo: UIImage(named: "rate")!))
        ArrFuirt.append(Fruit.init(name: "Apple", Price: 25, Desc: "The Foverit Furit in the Winner", photo: UIImage(named: "sponsor")!))
        ArrFuirt.append(Fruit.init(name: "Banana", Price: 25, Desc: "The Foverit Furit in the Winner", photo: UIImage(named: "student")!))
        ArrFuirt.append(Fruit.init(name: "Papaya", Price: 25, Desc: "The Foverit Furit in the Winner", photo: UIImage(named: "settings")!))
        ArrFuirt.append(Fruit.init(name: "Lemon", Price: 25, Desc: "The Foverit Furit in the Winner", photo: UIImage(named: "treatment")!))
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ArrFuirt.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell") as! HomeTableCell
        let Data = ArrFuirt[indexPath.row]
        Cell.SetupCell(photo: Data.photo, Name: Data.name, Price: Data.Price, Desc: Data.Desc)
        Cell.BtnCell.tag = indexPath.row
        Cell.BtnCell.addTarget(self, action: #selector(AddToFavorite(sender:)), for: .touchUpInside)
    

        return Cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell index = \(indexPath.row)")
    }
    @objc
    func AddToFavorite(sender : UIButton){
        print("Button Index \(sender.tag)")
        //sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
    }


}

struct Fruit {
    var name : String
    var Price : Double
    var Desc : String
    var photo : UIImage
}
