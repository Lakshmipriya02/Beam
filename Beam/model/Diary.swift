//
//  Diary.swift
//  Beam
//
//  Created by Lakshmi Priya on 07/03/23.
//

import Foundation

struct diary{
    let id : Int
    let title : String
    let date  : Date
    let time : TimeZone
    let content : String
    let mood : Moods
    
    enum Moods: Int {
        case ecstatic = 0
        case happy = 1
        case indifferent = 2
        case sad = 3
        case miserable = 4
    }
    
}
