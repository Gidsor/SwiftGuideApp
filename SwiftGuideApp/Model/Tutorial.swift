//
//  Tutorial.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 02/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

enum TutoialFields: String {
    case nameTutorial = "name"
    case pathToMarkdown = "path_markdown"
    case pathToImage = "path_image"
}

class Tutorial {
    var name: String
    var pathMarkdown: String
    var pathImage: String
    
    init(name: String, pathMarkdown: String, pathImage: String) {
        self.name = name
        self.pathMarkdown = pathMarkdown
        self.pathImage = pathImage
    }
    
    init(headerText: String, name: String, pathMark: String, image: String) {
        self.name = name
        self.pathMarkdown = pathMark
        self.pathImage = image
    }
    
    init() {
        self.name = "File not found"
        self.pathMarkdown = "FileNotFound"
        self.pathImage = ""
    }
}
