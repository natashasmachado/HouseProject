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
        self.size = min(max(size, 3), 37) // setting the min & max
        if let borderASCII = border.asciiValue { // asciiValue automatic method for the range
            if borderASCII >= 33 && borderASCII <= 126 {
                self.border = border // returning the actual value
            } else {
                self.border = "X" // default in case off Character
            }
        } else {
            self.border = "X" // default for in case of nill
        }
        if let fillASCII = fill.asciiValue {
            if fillASCII >= 33 && fillASCII <= 126 {
                self.fill = fill
            } else {
                self.fill = "*" // default in case off Character
            }
        } else {
            self.fill = "*" // default for in case of nill
        }
    }
    
    var perimeter: Int { // 3 sides of the sqare + 2 sides of the (triangle + 2) + 2
        return (size * 3) + ((size + 2 ) * 2) + 2
    }
    var area: Double {
        return Double (squareArea) + triangleArea
    }
    var squareArea: Int {
        return size * size
    }
    var triangleArea: Double {
        let side = Double(size + 2)
        return ((side * side) * 3.squareRoot()) / 4
    }
    
    func grow() {
        size = min(37, size + 1)
    }
    func shrink() {
        size = max(3, size - 1 )
    }
    
    func draw() { }
}

