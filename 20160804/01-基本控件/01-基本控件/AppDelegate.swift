//
//  AppDelegate.swift
//  01-基本控件
//
//  Created by qingyun on 16/8/4.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import UIKit

@UIApplicationMain//此标识可以使编译器自动合成应用程序的入口,简化了项目的配置,不需要main.swift文件,但是main函数隐式存在的
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?//window是主窗口,用于呈现所有的视图和控件


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        //1.自动创建,从Main.storyboard加载,会自动创建一个window对象,然后自动设置根视图控制器
//        print(window)
//        window?.backgroundColor = UIColor.redColor()
        
        //1.手动创建window
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        //2.设置根视图控制器
        window?.rootViewController = FirstViewController()
        
        //3.设置为主窗口并且显示
        window?.makeKeyAndVisible()//设置为主窗口并且显示
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

