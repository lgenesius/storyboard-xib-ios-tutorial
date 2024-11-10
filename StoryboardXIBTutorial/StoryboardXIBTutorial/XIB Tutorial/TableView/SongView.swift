//
//  SongView.swift
//  StoryboardXIBTutorial
//
//  Created by Luis Genesius on 10/11/24.
//

import UIKit

final class SongView: UIView {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(song: Song) {
        imageView.image = song.albumCover
        titleLabel.text = song.title
    }
    
    static func loadViewFromNib() -> SongView {
        let nib = UINib(nibName: "SongView", bundle: Bundle.main)
        return nib.instantiate(withOwner: self).first! as! SongView
    }
}
