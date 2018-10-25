//
//  Tutorial.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 02/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import Foundation

enum TutoialFields: String {
    case nameTutorial = "name"
    case pathToMarkdown = "pathToMarkdown"
    case pathToImage = "pathToImage"
}

class Tutorial {
    var header: String!
    var name: String?
    var path: String?
    var image: String?
    
    
    init(headerText: String, name: String, pathMark: String, image: String) {
        self.header = headerText
        self.name = name
        self.path = pathMark
        self.image = image
    }
    
    init?(dictionary: [String : AnyObject]) {
        guard
            let nameString = dictionary[TutoialFields.nameTutorial.rawValue] as? String,
            let pathString = dictionary[TutoialFields.pathToMarkdown.rawValue] as? String,
            let imageString = dictionary[TutoialFields.pathToImage.rawValue] as? String
        else { return nil }
        
        self.name = nameString
        self.path = pathString
        self.image = imageString
    }
    
}
