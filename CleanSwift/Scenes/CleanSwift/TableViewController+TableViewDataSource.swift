//
//  TableViewController+TableViewDataSource.swift
//
//
//  Created by Bruce McTigue on 4/30/18.
//  Copyright © 2018 Electric Sheep. All rights reserved.
//

import Foundation
import UIKit

extension TableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return displayedItems.count
    }
}
