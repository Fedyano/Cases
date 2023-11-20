//
//  Item.swift
//  Cases
//
//  Created by Big Teddy on 20/11/2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
