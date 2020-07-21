//
//  BMI.swift
//  BMI
//
//  Created by Osama Fahim on 20/12/2019.
//  Copyright © 2019 Osama Fahim. All rights reserved.
//

import Foundation

class BMI{
    
    func CalculateBMI(weight: Float, Height: Float) -> Float {
    
        let square = Height*Height
        let BodyMassIndex = weight/square
        
        return BodyMassIndex
    }
}
