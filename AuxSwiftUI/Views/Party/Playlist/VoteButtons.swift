//
//  VoteButtons.swift
//  AuxSwiftUI
//
//  Created by fnord on 7/6/19.
//  Copyright © 2019 twof. All rights reserved.
//

import SwiftUI

enum VoteDirection {
    case up
    case down
    case none
}

struct VoteButtons: View {
    @Binding var vote: VoteDirection
    
    var body: some View {
        VStack {
            Button(action: {
                self.vote = .up
            }) {
                Image(systemName: vote == .up ? "arrowtriangle.up.fill" : "arrowtriangle.up")
            }
            Button(action: {
                self.vote = .down
            }) {
                Image(systemName: vote == .down ? "arrowtriangle.down.fill" : "arrowtriangle.down")
            }
        }
    }
}
