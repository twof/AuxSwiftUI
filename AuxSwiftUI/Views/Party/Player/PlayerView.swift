//
//  PlayerView.swift
//  AuxSwiftUI
//
//  Created by fnord on 7/6/19.
//  Copyright © 2019 twof. All rights reserved.
//

import SwiftUI

struct PlayerView: View {
    @Binding var isPlaying: Bool
    @Binding var currentTrack: Track?
    let skipAction: () -> Void
    let playPauseAction: () -> Void
    
    var body: some View {
        VStack {
            HStack {
                PlayPauseButton(isPlaying: $isPlaying)
                Button(action: self.skipAction) {
                    Image(systemName: "arrow.right.to.line")
                }
            }
            currentTrack.map { Text($0.name) }
            currentTrack.map { Text($0.artist) }
            currentTrack.map { Text($0.album) }
        }
    }
}
