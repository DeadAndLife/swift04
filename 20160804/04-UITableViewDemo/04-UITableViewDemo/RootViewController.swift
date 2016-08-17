//
//  RootViewController.swift
//  04-UITableViewDemo
//
//  Created by qingyun on 16/8/4.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import UIKit

let cellIdentifier = "cell"
class RootViewController: UIViewController {

    var dataArr:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.whiteColor()
        for i in 0..<10{
            dataArr.append("第\(i)行")
        }
        let tableView = UITableView(frame: view.bounds, style: .Plain)
        view.addSubview(tableView)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //OC:获取类的类型[类名 class]
        //swift: 类名.self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
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

extension RootViewController:UITableViewDataSource,UITableViewDelegate{
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 5
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        //1. 检测到为空,自己创建
//        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)
//        if cell == nil{
//            cell = UITableViewCell(style: .Default, reuseIdentifier: cellIdentifier)
//        }
        
        
        //2. 返回值一定不为空(自动创建)
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        
        cell.textLabel?.text = dataArr[indexPath.row]
        
        return cell
    }
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "分区\(section)"
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let detailVC = DetailViewController()
        detailVC.indexPath = indexPath
        
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
