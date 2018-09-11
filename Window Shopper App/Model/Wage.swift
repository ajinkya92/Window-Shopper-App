//
//  Wage.swift
//  Window Shopper App
//
//  Created by Ajinkya Sonar on 11/09/18.
//  Copyright © 2018 Ajinkya Sonar. All rights reserved.
//

import Foundation

class Wage {
    
    func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        
        return Int(ceil(price/wage))
    }
}
