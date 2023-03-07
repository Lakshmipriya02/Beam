//
//  Helper.swift
//  Beam
//
//  Created by Lakshmi Priya on 26/02/23.
//

import Foundation

func delay(duartioninSeconds seconds: Double, completion: @escaping ()-> Void){
    
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds , execute: completion)
}
