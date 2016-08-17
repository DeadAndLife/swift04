//
//  CustomCell.swift
//  08-xib自定义cell
//
//  Created by qingyun on 16/8/4.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var signatureLabel: UILabel!
    @IBOutlet weak var onlineSwitch: UISwitch!
    
    var person:Person?{
        didSet{
            nameLabel.text = person?.title
            signatureLabel.text = person?.detailTitle
            icon.image = UIImage(named: (person?.icon)!)
            onlineSwitch.on = Bool((person?.ison)!)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
