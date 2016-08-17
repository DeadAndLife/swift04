//
//  SecondViewController.swift
//  02-导航控制器
//
//  Created by qingyun on 16/8/4.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var label:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.blueColor()
        
        navigationItem.hidesBackButton = true
        
        let leftItem = UIBarButtonItem(barButtonSystemItem: .Action, target: self, action: #selector(kidding))
        navigationItem.leftBarButtonItem = leftItem
        
        let btn = UIButton(frame: CGRectMake(100,400,200,100))
        btn.backgroundColor = UIColor.greenColor()
        btn.setTitle("返回", forState: .Normal)
        btn.addTarget(self, action: #selector(back), forControlEvents: .TouchUpInside)
        view.addSubview(btn)
    }

    func back(){
        navigationController?.popViewControllerAnimated(true)
    }
    func kidding(){
        let label = UILabel(frame: CGRectMake(100,200,200,100))
        label.text = "逗你玩"
        label.backgroundColor = UIColor.redColor()
        self.label = label
        view.addSubview(label)
        
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(dismiss), userInfo: nil, repeats: false)
        
    }
    func dismiss(){
        label?.removeFromSuperview()
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
