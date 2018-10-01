//
//  MainTableViewController.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 01/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    private let cellId = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return guideTopics.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "Header"
        label.backgroundColor = UIColor.orange
        return label
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return guideTopics[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        let name = guideTopics[indexPath.section][indexPath.row]
        
        cell.textLabel?.text = name
        
        return cell
    }

    private func setupUI() {
        navigationItem.title = "Swift Guide"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
}
