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
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return CategoryTopics.topics.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = CategoryTopics.topics[section].header
        label.backgroundColor = UIColor.orange
        return label
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as! CategoryRow
        cell.topics = CategoryTopics.topics[indexPath.section].topics
        cell.contentView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        return cell
    }
    
}
