//
//  onboardingCollectionViewCell.swift
//  Beam
//
//  Created by Lakshmi Priya on 28/02/23.
//

import UIKit

class onboardingCollectionViewCell : UICollectionViewCell {
    
    @IBOutlet weak var slideImageView: UIImageView!
    
    func configure(image: UIImage){
        slideImageView.image = image
    }
}
