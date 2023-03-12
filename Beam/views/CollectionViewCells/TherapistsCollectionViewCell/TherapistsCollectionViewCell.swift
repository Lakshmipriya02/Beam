//
//  TherapistsCollectionViewCell.swift
//  Beam
//
//  Created by Lakshmi Priya on 09/03/23.
//

import UIKit

class TherapistsCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "TherapistsCollectionViewCell"
    

    @IBOutlet weak var therapistProfileImageView: UIImageView!
    
    
    @IBOutlet weak var therapistNameLabel: UILabel!
    @IBOutlet weak var therapistDescription: UILabel!
    @IBOutlet weak var therapistRatingLabel: UILabel!
    
    func setup(therapists : recommendedTherapists){
        therapistNameLabel.text = therapists.name
        therapistDescription.text = therapists.description
        therapistRatingLabel.text = therapists.formattedRating
        therapistProfileImageView.image = therapists.profileImage
    }
    
}
