//
//  PatternsViewController.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 07/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import UIKit

class PatternsViewController: UITableViewController {

    private let cellId = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return PatternsTutorials.instance.tutorials.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "\t" + PatternsTutorials.instance.tutorials[section][0].headerText
        return label
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.gray
        return view
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as! CategoryRow
        cell.tutorials = PatternsTutorials.instance.tutorials[indexPath.section]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTutorialPage" {
            if let cell = sender as? TopicCell {
                (segue.destination as? TutorialViewController)?.pathMark = cell.pathMark
            }
        }
    }

}
