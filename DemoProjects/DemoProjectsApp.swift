//
//  DemoProjectsApp.swift
//  DemoProjects
//
//  Created by Michael Blank on 5/23/21.
//

import SwiftUI

@main
struct DemoProjectsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(RoomViewModel())
        }
    }
}
