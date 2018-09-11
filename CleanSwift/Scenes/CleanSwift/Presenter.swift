//
//  Presenter.swift
//  CleanSwift
//
//  Created by Bruce McTigue on 7/3/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import Foundation

protocol PresentationLogic: class {
    func presentFetchedItems(response: CleanSwift.FetchItems.Response)
}

class Presenter: PresentationLogic {
    private weak var viewController: CleanSwiftable?
    
    init(controller: CleanSwiftable) {
        self.viewController = controller
    }
    
    func presentFetchedItems(response: CleanSwift.FetchItems.Response) {
        var displayed: [CleanSwift.FetchItems.ViewModel.DisplayedItem] = []
        for item in response.items {
            let displayedItem = CleanSwift.FetchItems.ViewModel.DisplayedItem(title: item.title, imageUrl: item.imageUrl, description: item.itemDescription)
            displayed.append(displayedItem)
        }
        let viewModel = CleanSwift.FetchItems.ViewModel(displayedItems: displayed)
        viewController?.displayFetchedItems(viewModel: viewModel)
    }
}
