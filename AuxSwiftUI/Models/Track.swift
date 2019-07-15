//
//  Track.swift
//  AuxSwiftUI
//
//  Created by fnord on 7/6/19.
//  Copyright © 2019 twof. All rights reserved.
//

import Foundation

struct Track: Hashable {
    let name: String
    let artist: String
    let album: String
    
    /// In seconds
    let length: Int
    
    var voteScore: Int = 0
    var currentVote: VoteDirection = .none
}
