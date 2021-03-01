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
        
        let discoverViewController = DiscoverViewController()
        discoverViewController.tabBarItem = UITabBarItem.init(title: "", image: .eyeImg, tag: 0)
        
        let searchViewController = SearchViewController()
        searchViewController.tabBarItem = UITabBarItem.init(title: "", image: .searchImg, tag: 1)
        
        let profileViewController = ProfileViewController()
        profileViewController.tabBarItem = UITabBarItem.init(title: "", image: .personImg, tag: 2)
        
        let tabBarController = UITabBarController()
        
        tabBarController.tabBar.isTranslucent = false
        tabBarController.tabBar.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        tabBarController.tabBar.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        tabBarController.tabBar.unselectedItemTintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        tabBarController.setViewControllers([UINavigationController.init(rootViewController:
                                                                    discoverViewController),
                                             UINavigationController.init(rootViewController:
                                                                    searchViewController),
                                             UINavigationController.init(rootViewController:
                                                                    profileViewController)],
                                                                    animated: true)
        
        //        window.rootViewController = UINavigationController(rootViewController: LoggedOutViewController())
        
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
        
        return true
    }
}
