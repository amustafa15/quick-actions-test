//
//  AppDelegate.swift
//  quick actions test
//
//  Created by Ameen Mustafa on 10/24/23.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    private let qaService = QAService.shared
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        if let shortcutItem = options.shortcutItem {
            qaService.action = QA(shortcutItem: shortcutItem)
        }
        let configuration = UISceneConfiguration(name: connectingSceneSession.configuration.name, sessionRole: connectingSceneSession.role)
        configuration.delegateClass = SceneDelegate.self
        return configuration
    }
}

