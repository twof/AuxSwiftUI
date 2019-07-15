//
//  File.swift
//  AuxSwiftUI
//
//  Created by fnord on 7/6/19.
//  Copyright © 2019 twof. All rights reserved.
//

import SwiftUI

struct PlayPauseButton: View {
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Image(systemName: isPlaying ? "play" : "pause")
        }
    }
}
