//
//  ViewController.swift
//  StoryboardXIBTutorial
//
//  Created by Luis Genesius on 09/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstXIBTutorButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstXIBTutorButton.addTarget(
            self,
            action: #selector(didTapFirstXIBTutorButton),
            for: .touchUpInside
        )
    }

    @objc
    private func didTapFirstXIBTutorButton() {
        navigationController?.pushViewController(SongListViewController(style: .plain), animated: true)
    }
}

