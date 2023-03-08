//
//  Reminders.swift
//  Beam
//
//  Created by Advikaa Ramesh on 08/03/23.
//

import Foundation

struct Reminders {
    let id: Int
    let message: String
    let date: Date
    let time: TimeZone
    let frequency: repeatFrequency
    
    
    enum repeatFrequency: String{
        case daily = "Daily"
        case weekly = "Weekly"
    }
}
