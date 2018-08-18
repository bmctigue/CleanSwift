//
//  TableViewController.swift
//  CleanSwift
//
//  Created by Bruce McTigue on 7/3/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import UIKit
import Dwifft

protocol DisplayLogic: class {
    func displayFetchedItems(viewModel: CleanSwift.FetchItems.ViewModel)
}

protocol CleanSwiftable: DisplayLogic {
    var builder: Builder? { get set }
    var interactor: BusinessLogic? { get set }
    func fetch()
}

class TableViewController: UITableViewController, CleanSwiftable {
    
    static let rowHeight: CGFloat = 300
    
    var builder: Builder?
    var interactor: BusinessLogic?
    var displayedItems: [CleanSwift.FetchItems.ViewModel.DisplayedItem] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = TableViewController.rowHeight
        self.builder = Builder(viewController: self)
        fetch()
    }
    
    func fetch() {
        let request = CleanSwift.FetchItems.Request()
        interactor?.fetchItems(request: request)
    }
    
    func displayFetchedItems(viewModel: CleanSwift.FetchItems.ViewModel) {
        displayedItems = viewModel.displayedItems
        self.tableView.reloadData()
    }
}
