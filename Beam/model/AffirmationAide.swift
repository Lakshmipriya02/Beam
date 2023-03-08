//
//  AffirmationAide.swift
//  Beam
//
//  Created by Advikaa Ramesh on 08/03/23.
//

import Foundation

struct AffirmationAide {
    let id : Int
    let date  : Date
    let time : TimeZone
    let recording : [String]
    let moodDetected: Mood
    
    enum Mood: Int {
        case ecstatic = 0
        case happy = 1
        case indifferent = 2
        case sad = 3
        case miserable = 4
    }
    
}
