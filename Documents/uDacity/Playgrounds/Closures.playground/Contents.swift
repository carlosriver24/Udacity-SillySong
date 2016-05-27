//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var birthYears = [2004, 2011, 2007, 2005, 2002]


var reverseChronologicalYears = birthYears.sort({(year1: Int, year2: Int) -> Bool in
        return year2 > year1})

