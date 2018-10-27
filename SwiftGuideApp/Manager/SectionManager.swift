//
//  SectionManager.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 26/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import Foundation

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
    
    class func loadSectionsFromJSON(from file: String) -> [SectionTutorials] {
        var sections: [SectionTutorials] = []
        
        if let path = Bundle.main.path(forResource: file, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                print(json as! [String : Any])
                sections = SectionManager.prepareSections(json as! [String : Any])
            } catch {
                print("Error opening json file with path: \(path)")
            }
        }
        
        for (index, section) in sections.enumerated() {
            print("Section №\(index) \(section.header)")
        }
        
        return sections
    }
}
