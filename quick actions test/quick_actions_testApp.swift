//
//  quick_actions_testApp.swift
//  quick actions test
//
//  Created by Ameen Mustafa on 10/24/23.
//

import SwiftUI

@main
struct quick_actions_testApp: App {
    
    private let qaService = QAService.shared
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(qaService)
        }
    }
}
