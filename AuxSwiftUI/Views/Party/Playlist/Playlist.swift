//
//  Playlist.swift
//  AuxSwiftUI
//
//  Created by fnord on 7/6/19.
//  Copyright © 2019 twof. All rights reserved.
//

import SwiftUI

struct Playlist: View {
    @Binding var tracks: [Track]

    var body: some View {
        List {
            ForEach(self.$tracks.map { $0 }) { (track) -> TrackRow in
                TrackRow(track: track)
            }
        }
    }
}

