//
//  LoadingViewController.swift
//  Beam
//
//  Created by Lakshmi Priya on 26/02/23.
//

import UIKit 

class LoadingViewController : UIViewController{
    
    private let isUserLoggedIn = true
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        delay(duartioninSeconds: 2.0){
            self.showInitialView()
        }
        
    }
    
    private func showInitialView(){
        //if the user is logged in -> main tab bar controller
        //if the user is NOT logged in ->show onboarding controller
        if isUserLoggedIn{
            
            PresenterManager.shared.show(vc: .mainTabBarController)
            } else {
            performSegue(withIdentifier: K.Segue.showOnboardingScreen, sender: nil)
        }
    }
}
