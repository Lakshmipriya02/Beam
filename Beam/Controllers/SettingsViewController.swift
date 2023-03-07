//
//  SettingsViewController.swift
//  Beam
//
//  Created by Lakshmi Priya on 26/02/23.
//

import UIKit

class SettingsViewController: UIViewController{
    
    let backgroundImageView = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
    }
    @IBAction func logoutButtonTapped(_ sender: UIBarButtonItem){
        PresenterManager.shared.show(vc: .onBoarding)
    }
    
    func setBackground(){
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor,constant: 0).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 310).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true

    }
    
}
