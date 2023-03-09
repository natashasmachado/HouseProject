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
    init(size: Int , border: Character = "X", fill: Character = "*" ) { // starting the init
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
    
    var perimeter: Int { // 3 sides of the square + 2 sides of the (triangle + 2) + 2
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
    
    func draw() {
        var house = (size * 2) + 1
        var housefill = size + 2
        var startCspaces = size - (size / 2 )
        for row in 0..<house {
            if row < 1 {
                if size % 2 == 0 {
                    print(" ", terminator: "")
                }
                for i in 0..<size {
                    if i < startCspaces {
                        print("  ", terminator: "")
                    } else {
                        print(border)
                        break
                    }
                }
            } else {
                if row < housefill {
                    if size >= row {
                        for _ in 0..<size - row + 1 {
                            print(" " , terminator:"")
                        }
                    }
                    print(border , terminator: " ")
                    for _ in 0..<row - 1 {
                        print(fill , terminator: " ")
                    }
                    print(border)
                } else {
                    print("  " , terminator: "")
                    print(border, terminator: " ")
                    for _ in 0..<(size - 2) {
                        if row == (size * 2) {
                            print(border, terminator: " ")
                        } else {
                            print( fill , terminator: " ")
                        }
                    }
                    print(border)
                }
            }
        }
    }
}
