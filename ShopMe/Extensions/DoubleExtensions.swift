//
//  DoubleExtensions.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-22.
//

import Foundation

extension Double {
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
    
    func toBeFixed(toPlaces places:Int) -> String {
        let divisor = pow(10.0, Double(places))
        return String((self * divisor).rounded() / divisor)
    }
    
    
}
