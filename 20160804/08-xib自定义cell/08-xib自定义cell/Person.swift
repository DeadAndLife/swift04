//
//  Person.swift
//  08-xib自定义cell
//
//  Created by qingyun on 16/8/4.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import UIKit

class Person: NSObject {
    var title:String?
    var detailTitle:String?
    var icon:String?
    var ison:NSNumber?
    
    init(dict:[String:AnyObject]) {
        super.init()//KVC之前必须调用super.init()
        
        setValuesForKeysWithDictionary(dict)
    }
}
