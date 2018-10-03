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
    
    var tutorials: [Tutorial]? = nil {
        didSet {
            collectionView.reloadData()
        }
    }
}

extension CategoryRow: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tutorials?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! TopicCell
//        cell.label.numberOfLines = 2
        cell.label.text = tutorials?[indexPath.row].name
        cell.imageView.image = UIImage(named: "xcode-icon")
        cell.pathMark = tutorials?[indexPath.row].pathMark
        //cell.contentView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        return cell
    }
}
