//
//  SettingsViewController.swift
//  Beam
//
//  Created by Lakshmi Priya on 26/02/23.
//

import UIKit

class SettingsViewController: UIViewController{
    
    @IBOutlet weak var SelfAssessmentCollectionView: UICollectionView!
    
    @IBOutlet weak var TherapistsCollectionView: UICollectionView!
    var SelfAssessmentTests : [SelfAssessment] = [
        .init(Testname: "Environment Check", description: "This helps you to find and know ypur environment",imageName: UIImage(named: "imslide1")!),
        .init(Testname: "Environment Check", description: "This helps you to find and know ypur environment",imageName: UIImage(named: "imslide1")!),
        .init(Testname: "Environment Check", description: "This helps you to find and know ypur environment",imageName: UIImage(named: "imslide1")!),
        .init(Testname: "Environment Check", description: "This helps you to find and know ypur environment",imageName: UIImage(named: "imslide1")!),
        .init(Testname: "Environment Check", description: "This helps you to find and know ypur environment",imageName: UIImage(named: "imslide1")!)]
    
    var recommendedTherapists : [recommendedTherapists] = [
        .init(name: "Dr.Shreya Jain", description: "Psychotherapist", rating: 4.2, profileImage: UIImage(named:"therapist1")!),
        .init(name: "Dr.Jignesh Ahir", description: "Psychologist", rating: 4.2, profileImage: UIImage(named:"therapist2")!),
        .init(name: "Dr.Simi Mathew", description: "Psychologist", rating: 4.0, profileImage: UIImage(named:"therapist3")!)
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
    }
    
    private func registerCells(){
        SelfAssessmentCollectionView.register(UINib(nibName: selfAssessmentCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: selfAssessmentCollectionViewCell.identifier)
        TherapistsCollectionView.register(UINib(nibName: TherapistsCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: TherapistsCollectionViewCell.identifier)
    }
    
    @IBAction func logoutButtonTapped(_ sender: UIBarButtonItem){
        PresenterManager.shared.show(vc: .onBoarding)
    }
}
    
extension SettingsViewController : UICollectionViewDelegate , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView{
        case  SelfAssessmentCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: selfAssessmentCollectionViewCell.identifier, for: indexPath)as! selfAssessmentCollectionViewCell
            cell.setup(Test: SelfAssessmentTests[indexPath.row])
            return cell
        case TherapistsCollectionView :
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TherapistsCollectionViewCell.identifier, for: indexPath)as! TherapistsCollectionViewCell
            cell.setup(therapists: recommendedTherapists[indexPath.row])
            return cell
            
        default : return UICollectionViewCell()
        }
        
        
        
       
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView{
        case  SelfAssessmentCollectionView:
            return SelfAssessmentTests.count
        case TherapistsCollectionView :
            return recommendedTherapists.count
            
        default : return 0
        }
        
    }
    
}
    

