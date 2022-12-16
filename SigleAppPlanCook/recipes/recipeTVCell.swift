//
//  recipeTVCell.swift
//  SigleAppPlanCook
//
//  Created by Aldo on 14/12/22.
//

import UIKit

class recipeTVCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with foodC: FoodC){
        nameLabel.text = foodC.name
    }
}
