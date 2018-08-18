//
//  ChangeMeModel.swift
//  CleanSwift
//
//  Created by Bruce McTigue on 7/3/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import Foundation

enum CleanSwift {
    enum FetchItems {
        struct Request {}
        struct Response {
            var items: [Item]
        }
        struct ViewModel {
            struct DisplayedItem: Equatable {
                var title: String
                var imageUrl: String
                var description: String
                
                var hashValue: Int {
                    var hashValues: [Int] = []
                    hashValues.append(title.hashValue)
                    hashValues.append(imageUrl.hashValue)
                    hashValues.append(description.hashValue)
                    return Utilities.sharedInstance.hashSequence(hashValues: hashValues)
                }
                
                static func == (lhs: DisplayedItem, rhs: DisplayedItem) -> Bool {
                    return lhs.hashValue == rhs.hashValue
                }
            }
            var displayedItems: [DisplayedItem]
        }
    }
}
