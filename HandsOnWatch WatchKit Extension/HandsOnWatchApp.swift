//
//  HandsOnWatchApp.swift
//  HandsOnWatch WatchKit Extension
//
//  Created by Marina De Pazzi on 04/04/22.
//

import SwiftUI

@main
struct HandsOnWatchApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
