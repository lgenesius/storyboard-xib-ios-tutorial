//
//  SongListViewController.swift
//  StoryboardXIBTutorial
//
//  Created by Luis Genesius on 10/11/24.
//

import Foundation
import UIKit

class SongListViewController: UITableViewController {
    
    private var dataList: MusicLibrary = MusicLibrary()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup UI, update datasource
        configureViewController()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tableView.reloadData()
    }
}

// MARK: - UI Setup

extension SongListViewController {
    
    private func configureViewController() {
        
        // Configure table view
        configureTableView()
        
        // Fetch datasource
        populateDatasource()
    }
    
    private func configureTableView() {
        tableView.register(SongListViewCell.self, forCellReuseIdentifier: String(describing: SongListViewCell.self))
        tableView.rowHeight = UITableView.automaticDimension;
        tableView.estimatedRowHeight = 100.0
        tableView.tableFooterView = UIView()
    }
    
    private func populateDatasource() {
        dataList.generateSampleLibrary()
    }
    
}

// MARK: - UITableViewDataSource / Delegate

extension SongListViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.songs.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SongListViewCell.self), for: indexPath) as! SongListViewCell
        
        cell.song = dataList.songs[indexPath.row]
        
        return cell
    }
}

final class SongListViewCell: UITableViewCell {
    
    var song: Song! {
        didSet {
            songView.configure(song: song)
        }
    }
    
    private lazy var songView: SongView = {
        let view: SongView = SongView.loadViewFromNib()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(songView)
        NSLayoutConstraint.activate([
            songView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            songView.topAnchor.constraint(equalTo: contentView.topAnchor),
            songView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            songView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        contentView.addSubview(songView)
        NSLayoutConstraint.activate([
            songView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            songView.topAnchor.constraint(equalTo: contentView.topAnchor),
            songView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            songView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
}
