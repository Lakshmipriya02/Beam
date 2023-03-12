//
//  recommendedTherapists.swift
//  Beam
//
//  Created by Lakshmi Priya on 10/03/23.
//

import Foundation
import UIKit
struct recommendedTherapists {
    let name :String
    let description :String
    let rating : Double?
    let profileImage : UIImage
    
    var formattedRating : String{
        return String(format: "%1f", rating ?? 0)
    }
    
}
