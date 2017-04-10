//
//  AppCoordinator.swift
//  Example Project
//
//  Created by Rehat Kathuria on 06/04/2017.
//  Copyright © 2017 Rehat Kathuria. All rights reserved.
//

import Foundation
import UIKit

final class AppCoordinator {
    
    // MARK: - Variables
    
    private let window: UIWindow
    
    // MARK: - Lifecycle
    
    init(window: UIWindow) {
        
        self.window = window
    }
    
    func start() {
        
        window.clipsToBounds = true
        window.backgroundColor = UIColor.white
        
        window.rootViewController = ViewController()
        window.makeKeyAndVisible()
    }
    
}
