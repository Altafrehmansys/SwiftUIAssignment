//
//  ListContent.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 08/01/2024.
//

import Foundation
import SwiftUI

class Content: Identifiable {
    var title: String
    var desription: String
    var image: String?
    var timeAgo: String?
    
    init(title: String, desription: String, timeAgo: String, image: String) {
        self.title = title
        self.desription = desription
        self.image = image
        self.timeAgo = timeAgo
    }
    
    static var contentList: [Content] {
        return [
            Content(title: "Header", desription: "He'll want to use your yacht, and I don't want this thing smelling like fish.", timeAgo: "8m ago", image: ""),
            Content(title: "Header", desription: "He'll want to use your yacht, and I don't want this thing smelling like fish.", timeAgo: "8m ago", image: ""),
            Content(title: "Header", desription: "He'll want to use your yacht, and I don't want this thing smelling like fish.", timeAgo: "8m ago", image: ""),
            Content(title: "Header", desription: "He'll want to use your yacht, and I don't want this thing smelling like fish.", timeAgo: "8m ago", image: "")]
    }
}
