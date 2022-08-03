//
//  HomeTableCell.swift
//  CostomTableViewTest
//
//  Created by A_Z on 6/23/22.
//  Copyright © 2022 AliZ. All rights reserved.
//

import UIKit

class HomeTableCell: UITableViewCell {

    @IBOutlet weak var ImageCell: UIImageView!
    @IBOutlet weak var NameOfCell: UILabel!
    @IBOutlet weak var PriceCell: UILabel!
    @IBOutlet weak var DescriptionCell: UILabel!
    @IBOutlet weak var BtnCell: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func SetupCell(photo : UIImage , Name : String , Price : Double , Desc : String) {
        ImageCell.image = photo
        NameOfCell.text = Name
        PriceCell.text = "\(Price)"
        DescriptionCell.text = Desc
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
