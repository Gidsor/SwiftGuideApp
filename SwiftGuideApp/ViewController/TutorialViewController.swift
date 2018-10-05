//
//  TutorialViewController.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 02/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import UIKit
import SafariServices
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
        
        md.onTouchLink = { [weak self] request in
            guard let url = request.url else { return false }
            
            if url.scheme == "file" {
                return false
            } else if url.scheme == "https" {
                let svc = SFSafariViewController(url: url)
                self?.present(svc, animated: true, completion: nil)
                return false
            } else {
                return false
            }
        }
        
        let path = Bundle.main.path(forResource: name, ofType: "md")!
        let url = URL(fileURLWithPath: path)
        let markdown = try! String(contentsOf: url, encoding: String.Encoding.utf8)
        md.load(markdown: markdown, enableImage: true)
    }
}
