//
//  MusicLibrary.swift
//  StoryboardXIBTutorial
//
//  Created by Luis Genesius on 10/11/24.
//

import Foundation
import UIKit

// MARK: - Song

struct Song {
    let title: String
    let artist: String
    let album: String
    let year: String
    let albumCover: UIImage
}

// MARK: - MusicLibrary

struct MusicLibrary {
    var songs: [Song] = []
    
    init() {
        
    }
}

extension MusicLibrary {
    mutating func generateSampleLibrary() {
        let song1 = Song(title: "Smells Like Teen Spirit", artist: "Nirvana", album: "Nevermind", year: "1991", albumCover: UIImage(systemName: "pencil")!)
        let song2 = Song(title: "Come Together", artist: "The Beatles", album: "Abbey Road", year: "1969", albumCover: UIImage(systemName: "heart.fill")!)
        let song3 = Song(title: "Billie Jean", artist: "Michael Jackson", album: "Thriller", year: "1983", albumCover: UIImage(systemName: "trash.circle.fill")!)
        let song4 = Song(title: "Hotel California", artist: "Bruce Springsteen", album: "Born to Run", year: "1999", albumCover: UIImage(systemName: "folder.fill")!)
        let song5 = Song(title: "Stairway to Heaven", artist: "Led Zeppelin", album: "Music for People", year: "1991", albumCover: UIImage(systemName: "paperplane.fill")!)
        songs = [
            song1,
            song2,
            song3,
            song4,
            song5
        ]
    }
}
