//
//  Slide.swift
//  Beam
//
//  Created by Lakshmi Priya on 28/02/23.
//

import Foundation

struct Slide{
    let imageName : String
    let title : String
    let description : String
    
    static let collection : [Slide] =
    [Slide(imageName: "imslide1", title: "Happiness", description: "With Beam, Happiness is practically a guarantee"),
     Slide(imageName: "imslide2", title: "Don't Feel Alone", description: "Need a friend you can rely on? Our trusty diary feature is here for you!"),
     Slide(imageName: "imslide3", title: "Links to therapists", description: "Beam links you to the top therapists in your area")]
}
