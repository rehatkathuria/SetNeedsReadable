//
//  AppDelegate.swift
//  Example Project
//
//  Created by Rehat Kathuria on 06/04/2017.
//  Copyright © 2017 Rehat Kathuria. All rights reserved.
//

import UIKit

@UIApplicationMain

final class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Properties
    
    var coordinator: AppCoordinator!
    var window: UIWindow?

    // MARK: - Lifecycle
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        coordinator = AppCoordinator(window: window!)
        return true
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        coordinator.start()
        return true
    }

}

