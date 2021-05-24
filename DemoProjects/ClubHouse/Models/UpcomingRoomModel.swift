//
//  UpcomingRoomModel.swift
//  DemoProjects
//
//  Created by Michael Blank on 2/20/21.
//

import Foundation

struct UpcomingRoom: Identifiable {
    let id = UUID()
    let groupName: String?
    let roomName: String
    let date: Date
}

extension UpcomingRoom {
    
    static var dummyData: [UpcomingRoom] {
        [
            UpcomingRoom(groupName: "Tech Talks",
                              roomName: "iOS interview Questions 📝",
                              date: Date(timeIntervalSince1970: 1614888830)),
            UpcomingRoom(groupName: nil,
                              roomName: "Takeoff Launch Next Month 🎉",
                              date: Date(timeIntervalSince1970: 1614541528)),
            UpcomingRoom(groupName: nil,
                              roomName: "What's new in Swift 5.0? 👀",
                              date: Date(timeIntervalSince1970: 1614548728000))
        ]
    }
}
