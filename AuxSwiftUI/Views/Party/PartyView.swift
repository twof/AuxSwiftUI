//
//  PartyView.swift
//  AuxSwiftUI
//
//  Created by fnord on 7/6/19.
//  Copyright © 2019 twof. All rights reserved.
//

import SwiftUI
import Combine

class AppState: BindableObject {
    var willChange = PassthroughSubject<Void, Never>()

    var isPlaying: Bool = false {
        willSet {
            self.willChange.send(())
        }
    }
    var tracks: [Track] = [] {
        willSet {
            self.willChange.send(())
        }
    }
    var currentTrack: Track? = nil {
        willSet {
            self.willChange.send(())
        }
    }
}

struct PartyView: View {
    @ObjectBinding var state: AppState

    init(state: AppState) {
        self.state = state
        self.state.tracks = tracksData
    }

    var body: some View {
        VStack {
            PlayerView(
                isPlaying: self.$state.isPlaying,
                currentTrack: self.$state.currentTrack,
                skipAction: {
                    guard
                        let newCurrent = self.state.tracks.first
                        else { return }
                    self.state.currentTrack = newCurrent
                    print("remove")
                    self.state.tracks.remove(at: 0)
                    print("pass")
                }, playPauseAction: {
                    print("play")
                }
            )
//            TrackRow(track: self.$state.tracks[0])
            Playlist(tracks: self.$state.tracks)
        }
    }
}
