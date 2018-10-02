//
//  Topic.swift
//  SwiftGuideApp
//
//  Created by Vadim Denisov on 02/10/2018.
//  Copyright © 2018 Vadim Denisov. All rights reserved.
//

import Foundation

protocol Topic {
    var header: String { get }
    var topics: [String] { get }
}
