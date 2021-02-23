//
//  AppDelegate.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 21.02.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow()
        self.window = window
        
        window.rootViewController = UINavigationController(rootViewController: LoggedOutViewController())
        
        window.makeKeyAndVisible()
        return true
    }
    
}

