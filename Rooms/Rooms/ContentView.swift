//
//  ContentView.swift
//  Rooms
//
//  Created by Jason Wu on 2020/3/9.
//  Copyright © 2020 Jason Wu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var rooms: [Room] = []
    var body: some View {
        NavigationView {
            List {

                Section{
                    ForEach(rooms) { room in
                        RoomCell(room: room)
                    }
                }

                
            }
        .navigationBarTitle(Text("Rooms"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testDate)
    }
}

struct RoomCell: View {
    let room: Room;
    var body: some View {
        NavigationLink(destination: Text(room.name)) {
            Image(systemName: "photo").cornerRadius(3)
            VStack(alignment: .leading) {
                Text(room.name)
                Text("\(room.capacity) people").font(.subheadline).foregroundColor(.secondary)
            }
        }
    }
}
