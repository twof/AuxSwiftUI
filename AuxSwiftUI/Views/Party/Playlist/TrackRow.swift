//
//  TrackRow.swift
//  AuxSwiftUI
//
//  Created by fnord on 7/6/19.
//  Copyright © 2019 twof. All rights reserved.
//

import SwiftUI

struct TrackRow: View {
    @Binding var track: Track
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(track.name)
                Text(track.artist)
                Text(track.album)
            }
            Spacer()
            
            VoteButtons(vote: $track.currentVote)
                .background(Color.red)
        }
    }
}
