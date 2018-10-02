//
//  TutorialViewController.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 02/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import UIKit
import MarkdownView

class TutorialViewController: UIViewController {
    
    let md = MarkdownView()
    
    var pathMark: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(md)
        loadMarkdown(name: pathMark)
    }
    
    func loadMarkdown(name: String) {
        
        md.translatesAutoresizingMaskIntoConstraints = false
        md.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        md.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        md.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        md.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        let path = Bundle.main.path(forResource: name, ofType: "md")!
        let url = URL(fileURLWithPath: path)
        let markdown = try! String(contentsOf: url, encoding: String.Encoding.utf8)
        md.load(markdown: markdown, enableImage: true)
    }
}
