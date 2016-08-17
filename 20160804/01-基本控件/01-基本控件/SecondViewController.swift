//
//  SecondViewController.swift
//  01-基本控件
//
//  Created by qingyun on 16/8/4.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.blueColor()
        
        let btn1 = UIButton(frame: CGRectMake(20,200,100,50))
        btn1.backgroundColor = UIColor.orangeColor()
        btn1.setTitle("返回", forState: .Normal)
        btn1.addTarget(self, action: #selector(back), forControlEvents: .TouchUpInside)
        view.addSubview(btn1)
    }

    func back(){
        dismissViewControllerAnimated(true, completion: nil)
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
