//
//  AppDelegate.swift
//  03-分栏控制器
//
//  Created by qingyun on 16/8/4.
//  Copyright © 2016年 QingYun. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate,UITabBarControllerDelegate{

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        //1.创建window
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        //2.创建分栏控制器
        let tabBarController = UITabBarController()
        
        window?.rootViewController = tabBarController
        
        //3.添加子控制器
        let firstVC = FirstViewController()
        let secondVC = SecondViewController()
        let thirdVC = ThirdViewController()
        
        let nav1 = UINavigationController(rootViewController: firstVC)
        let nav2 = UINavigationController(rootViewController: secondVC)
        let nav3 = UINavigationController(rootViewController: thirdVC)
        //每个标签显示的内容是由每个子控制器的tabBarItem决定的
        nav1.tabBarItem = UITabBarItem(title: "视图1", image: nil, tag: 0)
        nav2.tabBarItem = UITabBarItem(title: "视图2", image: nil, tag: 1)
        nav3.tabBarItem = UITabBarItem(title: "视图3", image: nil, tag: 2)
        
        //添加子控制器:
        //方式1:初始时添加的,方便
        //tabBarController.viewControllers = [nav1,nav2,nav3]
        
        //方式2:单独添加,某些条件满足时,才会添加某个item时选用
        tabBarController.addChildViewController(nav1)
        tabBarController.addChildViewController(nav2)
        tabBarController.addChildViewController(nav3)
        
        tabBarController.delegate = self
        tabBarController.selectedIndex = 2
        
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

    //MARK: - UITabBarControllerDelegate

    //item是否可以被点击
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        //viewController是当前的子控制器
        if viewController.tabBarItem.tag == 1 {
            return false
        }
        return true
    }
    //可以监听切换
    //可以实现本地保存app退出时的选中状态,下次启动后还选中某个item
    func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
        print("当前选中的子控制器的tag:\(viewController.tabBarItem.tag)")
    }
}

