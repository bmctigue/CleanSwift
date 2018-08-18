//
//  Utilities.swift
//  CleanSwift
//
//  Created by Bruce McTigue on 7/11/18.
//  Copyright © 2018 tiguer. All rights reserved.
//

import Foundation

class Utilities {
    
    static let sharedInstance = Utilities()
    
    func hashSequence(hashValues: [Int]) -> Int {
        var hash = 0
        for hashValue in hashValues {
            hash = _mixInt(hash) ^ _mixInt(hashValue)
        }
        return hash
    }
}
