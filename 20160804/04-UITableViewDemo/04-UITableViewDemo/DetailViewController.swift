//
//  DetailViewController.swift
//  04-UITableViewDemo
//
//  Created by qingyun on 16/8/4.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var indexPath:NSIndexPath?//一般属性都会定义为可选类型,会自动获得默认值nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.orangeColor()
        
        let label = UILabel(frame: CGRectMake(100,200,200,100))
        label.text = "分区\(indexPath!.section)第\(indexPath!.row)行"
        view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
