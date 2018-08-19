//
//  JsonStore.swift
//  CleanSwift
//
//  Created by Bruce McTigue on 8/18/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import Foundation

class JsonStore: StoreProtocol {
    
    func fetchItems(completionHandler: @escaping ([Item], StoreError?) -> Void) {
        let urlString = "https://api.myjson.com/bins/161tsc"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
            
            guard let data = data else { return }
            do {
                let items = try JSONDecoder().decode([Item].self, from: data)
                completionHandler(items, nil)
                
            } catch let jsonError {
                print(jsonError)
            }
            
        }.resume()
    }
}
