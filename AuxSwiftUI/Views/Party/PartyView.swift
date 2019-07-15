//
//  PartyView.swift
//  AuxSwiftUI
//
//  Created by fnord on 7/6/19.
//  Copyright © 2019 twof. All rights reserved.
//

import SwiftUI
import Combine

struct PartyView: View {
    @State var isPlaying: Bool
    @State var tracks: [Track]
    @State var currentTrack: Track? 
    
    var body: some View {
        VStack {
            PlayerView(
                isPlaying: $isPlaying,
                currentTrack: $currentTrack,
                skipAction: {
                    guard
                        let newCurrent = self.tracks.first
                    else { return }
                    self.currentTrack = newCurrent
                    print("remove")
                    self.tracks.remove(at: 0)
                    print("pass")
                }, playPauseAction: {
                    print("play")
                }
            )
            Playlist(tracks: $tracks)
        }
    }
}
