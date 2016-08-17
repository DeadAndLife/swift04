//
//  CustomCell1.swift
//  06-storyboard中的tableView
//
//  Created by qingyun on 16/8/4.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import UIKit

class CustomCell1: UITableViewCell {

    var titleLableText:String?{
        didSet{//完成类似OC的重写setter方法的功能
            titleLabel.text = titleLableText
        }
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
