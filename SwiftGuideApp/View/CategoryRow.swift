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
    
    var topics: [String]? = nil {
        didSet {
            collectionView.reloadData()
        }
    }
}

extension CategoryRow: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return topics?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! TopicCell
        cell.label.numberOfLines = 2
        cell.label.text = topics?[indexPath.row]
        cell.contentView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        return cell
    }
}

//extension CategoryRow: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let itemsPerRow:CGFloat = 3
//        let hardCodedPadding:CGFloat = 5
//        let itemWidth = (collectionView.bounds.width / itemsPerRow) - hardCodedPadding
//        let itemHeight = collectionView.bounds.height - (2 * hardCodedPadding)
//        return CGSize(width: itemWidth, height: itemHeight)
//    }
//}
