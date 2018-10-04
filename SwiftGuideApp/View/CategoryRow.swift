//
//  CategoryRow.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 02/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import UIKit

class CategoryRow: UITableViewCell {
    
    private let cellId = "topicCell"
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var tutorials: [Tutorial] = [] {
        didSet {
            collectionView.reloadData()
        }
    }
}

extension CategoryRow: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tutorials.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! TopicCell

        let tutorial = tutorials[indexPath.row]
        cell.label.text = tutorial.name
        cell.imageView.image = UIImage(named: tutorial.image)
        cell.pathMark = tutorial.pathMark
        
        return cell
    }
}
