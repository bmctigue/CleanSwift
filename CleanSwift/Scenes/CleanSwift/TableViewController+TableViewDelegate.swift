//
//  TableViewController+TableViewDelegate.swift
//  
//
//  Created by Bruce McTigue on 4/30/18.
//  Copyright © 2018 Electric Sheep. All rights reserved.
//

import Foundation
import UIKit

extension TableViewController {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell") as! ItemCell
        cell.item = displayedItems[indexPath.row]
        return cell
    }
}
