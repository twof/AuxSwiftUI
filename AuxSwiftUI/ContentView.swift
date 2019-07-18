//
//  ContentView.swift
//  AuxSwiftUI
//
//  Created by fnord on 7/6/19.
//  Copyright © 2019 twof. All rights reserved.
//

import SwiftUI
var tracksData = [
    Track(id: 0, name: "Red Hot Chili Peppers", artist: "RHCP", album: "RHCP", length: 200),
    Track(id: 1, name: "Sour Fruit", artist: "Melt", album: "Sour Fruit", length: 150)
]

struct ContentView : View {
    var body: some View {
        PartyView(state: AppState())
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
