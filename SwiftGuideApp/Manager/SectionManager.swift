//
//  SectionManager.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 26/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

class SectionManager {
    
    class func parseSectionTutorials(_ json: [String : Any]) -> SectionTutorials {
        let item = SectionTutorials()
        
        if let header = json[SectionFields.header.rawValue] as? String {
            item.header = header
        }
        
        if let tutorials = json[SectionFields.tutorials.rawValue] as? [[String : Any]] {
            for tutorial in tutorials {
                item.tutorials.append(TutorialManager.parseTutorial(tutorial))
            }
        }
        
        return item
    }
    
    class func prepareSections(_ json: [String : Any]) -> [SectionTutorials] {
        var sections = [SectionTutorials]()
        
        if let results = json["sections"] as? [[String : Any]] {
            for section in results {
                sections.append(parseSectionTutorials(section))
            }
        }
        
        return sections
    }
    
}
