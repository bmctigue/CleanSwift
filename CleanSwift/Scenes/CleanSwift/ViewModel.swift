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
            struct DisplayedItem {
                var title: String
                var imageUrl: String
                var description: String
            }
            var displayedItems: [DisplayedItem]
        }
    }
}
