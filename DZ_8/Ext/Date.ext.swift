//
//  Date.swift
//  DZ_8
//
//  Created by Nikita Shipovskiy on 24/04/2024.
//

import Foundation


extension Date {
    func getDataDifarence() -> String {
        
        let curentDataIntereval = Int(Date().timeIntervalSinceReferenceDate)
        let dateDifferense = Double(curentDataIntereval - Int(self.timeIntervalSinceReferenceDate))
        let dateDifferenseDate = Int(round(dateDifferense/365))
        
        switch dateDifferenseDate {
        default:
            return "\(dateDifferenseDate) дня назад"
            
        }
    }
}
