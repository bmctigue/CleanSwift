//
//  Interactor.swift
//  CleanSwift
//
//  Created by Bruce McTigue on 7/3/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import Foundation

protocol BusinessLogic: class {
    func fetchItems(request: CleanSwift.FetchItems.Request)
}

class Interactor: BusinessLogic {
    
    private var presenter: PresentationLogic!
    private var worker: Worker!
    
    init(presenter: PresentationLogic, store: StoreProtocol) {
        self.presenter = presenter
        self.worker = Worker(store: store)
    }
    
    func fetchItems(request: CleanSwift.FetchItems.Request) {
        worker.fetchItems { (items) in
            let response = CleanSwift.FetchItems.Response(items: items)
            self.presenter.presentFetchedItems(response: response)
        }
    }
}
