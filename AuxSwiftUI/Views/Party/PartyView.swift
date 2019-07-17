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
    var didChange = PassthroughSubject<Void, Never>()
    var isPlaying: Bool = false {
        didSet {
            self.didChange.send(())
        }
    }
    var tracks: [Track] = [] {
        didSet {
            self.didChange.send(())
        }
    }
    var currentTrack: Track? = nil {
        didSet {
            self.didChange.send(())
        }
    }
}

struct PartyView: View {
    @ObjectBinding var appState: AppState
    
    init(tracks: [Track]) {
        self.appState = AppState()
        self.appState.tracks = tracks
    }
    
    var body: some View {
        VStack {
            PlayerView(
                isPlaying: self.$appState.isPlaying,
                currentTrack: self.$appState.currentTrack,
                skipAction: {
                    guard
                        let newCurrent = self.appState.tracks.first
                    else { return }
                    self.appState.currentTrack = newCurrent
                    print("remove")
                    self.appState.tracks.remove(at: 0)
                    print("pass")
                }, playPauseAction: {
                    print("play")
                }
            )
            Playlist(tracks: self.$appState.tracks)
        }
    }
}
