//
//  ContentView.swift
//  AuxSwiftUI
//
//  Created by fnord on 7/6/19.
//  Copyright © 2019 twof. All rights reserved.
//

import SwiftUI
@State var tracks = [
    Track(name: "Red Hot Chili Peppers", artist: "RHCP", album: "RHCP", length: 200),
    Track(name: "Sour Fruit", artist: "Melt", album: "Sour Fruit", length: 150)
]

struct ContentView : View {
    var body: some View {
        PartyView(isPlaying: true, tracks: tracks, currentTrack: tracks.first)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
