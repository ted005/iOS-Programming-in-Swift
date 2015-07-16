//
//  AppDelegate.swift
//  Hypnosister
//
//  Created by Robbie on 15/7/9.
//  Copyright (c) 2015年 Ted Wei. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        var frame: CGRect = UIScreen.mainScreen().bounds
        window = UIWindow(frame: frame)
        
        var bigFrame = frame
        bigFrame.size.width *= 2
        bigFrame.size.height *= 2
        
        var scrollView = UIScrollView(frame: frame)
        
        var hypnoView = HypnosisView(frame: bigFrame)
//        hypnoView.backgroundColor = UIColor.redColor()
        
//        var frame2 = CGRectMake(50, 100, 300, 500)
//        var hypnoView2 = HypnosisView(frame: frame2)
//        hypnoView2.backgroundColor = UIColor.blueColor()
//        
//        hypnoView.addSubview(hypnoView2)
        
        window!.addSubview(scrollView)
        scrollView.addSubview(hypnoView)
        
        //important
        scrollView.contentSize = CGSize(width: bigFrame.width, height: bigFrame.height)
        
        
        window!.backgroundColor = UIColor.whiteColor()
        window!.makeKeyAndVisible()
        
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

