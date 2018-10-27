//
//  PatternsTutorials.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 08/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import Foundation

class PatternsTutorials {
    
    var sections: [SectionTutorials] = []
    
    static let instance = PatternsTutorials()
    
    private init() {
        if let path = Bundle.main.path(forResource: "patterns_tutorials", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                print(json as! [String : Any])
                self.sections = SectionManager.prepareSections(json as! [String : Any])
            } catch {
                print("Error opening json file with path: \(path)")
            }
        }
        
        for (index, section) in sections.enumerated() {
            print("Section №\(index) \(section.header)")
        }
    }
    
}
