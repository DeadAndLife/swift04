//
//  FirstViewController.swift
//  01-基本控件
//
//  Created by qingyun on 16/8/4.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    let numLabelTag = 1001
    let maxNum = 20
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.whiteColor()
        
        let label = UILabel(frame: CGRectMake(20,100,200,50))
        label.text = "开班在即,已报名人数:"
        label.backgroundColor = UIColor.greenColor()
        label.textAlignment = .Center
        label.textColor = UIColor.whiteColor()
        view.addSubview(label)
        
        let numLabel = UILabel(frame: CGRectMake(230,100,50,50))
        numLabel.text = "0"
//        numLabel.backgroundColor = UIColor.greenColor()
        numLabel.textAlignment = .Center
        numLabel.textColor = UIColor.redColor()
        numLabel.tag = numLabelTag
        view.addSubview(numLabel)
        
        let btn = UIButton(frame: CGRectMake(20,200,100,50))
        btn.backgroundColor = UIColor.orangeColor()
        btn.setTitle("我要报名", forState: .Normal)
        btn.addTarget(self, action: #selector(btnClick), forControlEvents: .TouchUpInside)
        view.addSubview(btn)
        
        let btn1 = UIButton(frame: CGRectMake(20,400,100,50))
        btn1.backgroundColor = UIColor.orangeColor()
        btn1.setTitle("打开模态视图", forState: .Normal)
        btn1.addTarget(self, action: #selector(btn1Click), forControlEvents: .TouchUpInside)
        view.addSubview(btn1)
        
    }
    func btnClick() {
        let numLabel = view.viewWithTag(numLabelTag) as! UILabel
        var count = Int(numLabel.text!)!
        count += 1
        
        if count > maxNum {
            //弹出视图
            let alertVC = UIAlertController(title: "提示", message: "抱歉,人数已达上限,请等待下一期开班~", preferredStyle:.Alert)
            let okAction = UIAlertAction(title: "我知道了~", style: .Default, handler: nil)
            alertVC.addAction(okAction)
            
            self.presentViewController(alertVC, animated: true, completion: nil)
        } else {
            numLabel.text = String(count)
        }
        
    }
    
    func btn1Click(btn:UIButton){
        let secondVC = SecondViewController()
        presentViewController(secondVC, animated: true, completion: nil)
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
