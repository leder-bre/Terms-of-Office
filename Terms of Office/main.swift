//
//  main.swift
//  Terms of Office
//
//  Created by Brendan Leder on 2016-03-02.
//  Copyright © 2016 Brendan Leder. All rights reserved.
//

import Foundation
import Cocoa

var futureYear : Int = 0
var currentYear : Int = 0

print("Enter the current year:")
var good = false
repeat {
    if let input = readLine(stripNewline: true) {
        if let inputInt = Int(input) {
            good = true;
            currentYear = inputInt
        } else {
            print("Enter an integer")
        }
    }
} while good == false

print("Enter a future year:")
good = false
repeat {
    if let input = readLine(stripNewline: true) {
        if let inputInt = Int(input) {
            if inputInt < currentYear {
                print("Future year must be greater than current year")
            } else {
                good = true;
                futureYear = inputInt
            }
        } else {
            print("Enter an integer")
        }
    }
} while good == false

var i : Int = 0;
var total = 0
while i < futureYear - currentYear {
    if (i % 4 == 0 && i % 3 == 0 && i % 5 == 0) {
        print("All positions change in year " + String(i + currentYear))
        total += 1
    }
    i += 1
}
print(String(round(1000*Float(total)/Float((futureYear-currentYear)))/1000) + "%")