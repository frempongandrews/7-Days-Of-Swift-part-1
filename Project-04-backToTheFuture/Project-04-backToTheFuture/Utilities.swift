//
//  Utilities.swift
//  Project-04-backToTheFuture
//
//  Created by Andrews Frempong on 30/03/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import Foundation


class Utilities{
    
    func getCurrentYear () -> String {
        
        let date = Date()
        let calendar = Calendar.current
        
        //year below is an interger
        let year =  calendar.component(.year, from: date)
        
        return String(year)
    }
    
    //get specific character from a string
    func getLetterAtIndex (str: String, index: Int) -> String {
        
        let position = str.index(str.startIndex, offsetBy: index)
        
        let letter = String(str[position])
        
        return letter
    }
    
}

