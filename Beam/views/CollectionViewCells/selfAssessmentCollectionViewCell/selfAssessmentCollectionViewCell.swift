//
//  selfAssessmentCollectionViewCell.swift
//  Beam
//
//  Created by Lakshmi Priya on 09/03/23.
//

import UIKit

class selfAssessmentCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: selfAssessmentCollectionViewCell.self)
    @IBOutlet weak var selfAssessmentImageView: UIImageView!
    
    @IBOutlet weak var selfAssessmentTitleLabel: UILabel!
    
    @IBOutlet weak var selfAssessmentDescriptionLabel: UILabel!
    func setup(Test : SelfAssessment){
        selfAssessmentTitleLabel.text = Test.Testname
        selfAssessmentDescriptionLabel.text = Test.description
        selfAssessmentImageView.image = Test.imageName
    }
}
