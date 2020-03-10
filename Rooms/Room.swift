//
//  Room.swift
//  Rooms
//
//  Created by Jason Wu on 2020/3/9.
//  Copyright © 2020 Jason Wu. All rights reserved.
//

import SwiftUI

struct Room: Identifiable {
    var id = UUID()
    var name: String
    var capacity: Int
    var hasVideo: Bool = false
    
    var imageName: String {return name}
    var thumbnailName: String { return name + "Thumb"}

}


#if DEBUG
let testDate = [
    Room(name: "Obdervation Deck", capacity: 6, hasVideo: true),
    Room(name: "Obdervation Deck", capacity: 6, hasVideo: true),
    Room(name: "Obdervation Deck", capacity: 6, hasVideo: true),
    Room(name: "Obdervation Deck", capacity: 6, hasVideo: true),
    Room(name: "Obdervation Deck", capacity: 6, hasVideo: true),
    Room(name: "Obdervation Deck", capacity: 6, hasVideo: true),
    Room(name: "Obdervation Deck", capacity: 6, hasVideo: true),
    Room(name: "Obdervation Deck", capacity: 6, hasVideo: true),
    Room(name: "Obdervation Deck", capacity: 6, hasVideo: true),
    Room(name: "Obdervation Deck", capacity: 6, hasVideo: true),
]
#endif
