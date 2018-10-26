//
//  TutorialManager.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 25/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import Foundation

class TutorialManager {
    
    class func parseTutorial(_ json: [String : Any]) -> Tutorial {
        let item = Tutorial()
        
        if let name = json[TutoialFields.nameTutorial.rawValue] as? String {
            item.name = name
        }
        
        if let path = json[TutoialFields.pathToMarkdown.rawValue] as? String {
            item.pathMarkdown = path
        }
        
        if let image = json[TutoialFields.pathToImage.rawValue] as? String {
            item.pathImage = image
        }
        
        return item
    }
    
}
