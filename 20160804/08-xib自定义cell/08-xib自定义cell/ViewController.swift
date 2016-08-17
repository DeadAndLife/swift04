//
//  ViewController.swift
//  08-xib自定义cell
//
//  Created by qingyun on 16/8/4.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    lazy var persons:[Person] = {
        let path = NSBundle.mainBundle().pathForResource("CustomCell", ofType: "plist")
        let arr = NSArray(contentsOfFile: path!)
        var personArr = [Person]()
        for dict in arr!{
            let person = Person(dict: dict as! [String:AnyObject])
            personArr.append(person)
        }
        
        return personArr
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.registerNib(UINib(nibName: "CustomCell",bundle: nil) , forCellReuseIdentifier: "cell")
        
        tableView.rowHeight = 100
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - UITableViewDataSource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomCell
        cell.person = persons[indexPath.row]
        
        return cell
    }
    
}

