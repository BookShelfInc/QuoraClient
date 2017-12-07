//
//  AppDelegate.swift
//  Quora
//
//  Created by Mirzhan Gumarov on 12/6/17.
//  Copyright © 2017 Mirzhan Gumarov. All rights reserved.
//

import UIKit
import SnapKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    let statusBar: UIView = {
        let view = UIView()
        view.backgroundColor = Constants.quoraMainColor
        
        return view
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let tabBarController = TabBarController()
        
        UIApplication.shared.statusBarStyle = .lightContent
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        guard let safeWindow = self.window else {
            return true
        }
        
        configureNavigationBarAppearance()
        safeWindow.rootViewController = tabBarController
        safeWindow.makeKeyAndVisible()
        
        safeWindow.addSubview(statusBar)
        statusBar.snp.makeConstraints { (make) in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(20)
        }
        safeWindow.bringSubview(toFront: statusBar)
        
        
        
        return true
    }
    
    func configureNavigationBarAppearance() {
        UINavigationBar.appearance().backgroundColor = Constants.quoraMainColor
        UINavigationBar.appearance().barTintColor = Constants.quoraMainColor
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

