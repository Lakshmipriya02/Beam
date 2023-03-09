//
//  SettingsViewController.swift
//  Beam
//
//  Created by Lakshmi Priya on 26/02/23.
//

import UIKit

class SettingsViewController: UIViewController{
    
    @IBOutlet weak var SelfAssessmentCollectionView: UICollectionView!
    
    var SelfAssessmentTests : [SelfAssessment] = [
        .init(Testname: "Environment Check", description: "This helps you to find and know ypur environment",imageName: UIImage(named: "imslide1")!),
        .init(Testname: "Environment Check", description: "This helps you to find and know ypur environment",imageName: UIImage(named: "imslide1")!),
        .init(Testname: "Environment Check", description: "This helps you to find and know ypur environment",imageName: UIImage(named: "imslide1")!),
        .init(Testname: "Environment Check", description: "This helps you to find and know ypur environment",imageName: UIImage(named: "imslide1")!),
        .init(Testname: "Environment Check", description: "This helps you to find and know ypur environment",imageName: UIImage(named: "imslide1")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
    }
    
    private func registerCells(){
        SelfAssessmentCollectionView.register(UINib(nibName: selfAssessmentCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: selfAssessmentCollectionViewCell.identifier)
    }
    
    @IBAction func logoutButtonTapped(_ sender: UIBarButtonItem){
        PresenterManager.shared.show(vc: .onBoarding)
    }
}
    
extension SettingsViewController : UICollectionViewDelegate , UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: selfAssessmentCollectionViewCell.identifier, for: indexPath)as! selfAssessmentCollectionViewCell
        cell.setup(Test: SelfAssessmentTests[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return SelfAssessmentTests.count
    }
    
}
    

