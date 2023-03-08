//
//  House.swift
//  Assignment1
//
//  Created by Derrick Park on 2023-03-03.
//

import Foundation

class House {
    var border: Character
    var fill: Character
    var size: Int
    init(border: Character = "X", fill: Character = "*" , size: Int) {
        self.size = min(max(size, 3), 37)
        if let borderASCII = border.asciiValue {
            if borderASCII >= 33 && borderASCII <= 126 {
                self.border = border
            } else {
                self.border = "X"
            }
        } else {
            self.border = "X"
        }
        if let fillASCII = fill.asciiValue {
            if fillASCII >= 33 && fillASCII <= 126 {
                self.fill = fill
            } else {
                self.fill = "*"
            }
        } else {
            self.fill = "*"
        }
    }
    
    var perimeter: Int {
        return 0
    }
    
    var area: Double {
        return 0
    }
    
    func grow() { }
    
    func shrink() { }
    
    func draw() { }
}
