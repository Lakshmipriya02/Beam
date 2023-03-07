//
//  Diary.swift
//  Beam
//
//  Created by Lakshmi Priya on 07/03/23.
//

import Foundation

struct Diary : Codable{
    let Id : Int
    let Name : String
    let date  : Date
    let time : TimeZone
    let content : String
    
}
