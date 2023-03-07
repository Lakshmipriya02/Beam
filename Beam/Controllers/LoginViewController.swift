//
//  LoginViewController.swift
//  Beam
//
//  Created by Lakshmi Priya on 01/03/23.
//

import UIKit

class LoginViewController: UIViewController{
    
   
    
   
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var ageTextField: UITextField!
    
    

    @IBOutlet weak var signUpButton: UIButton!
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    private enum PageType {
        case login
        case signUp
    }
    private var currentPageType: PageType = .login{
        didSet {
            setUpViewsFor(pageType: currentPageType)
        }
    }
    

    
    
    @IBOutlet weak var forgotpasswordButtonTapped: UIButton!
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl){
        currentPageType = sender.selectedSegmentIndex == 0 ? .login : .signUp

        
    }
    private func setUpViewsFor(pageType: PageType){
        emailTextField.isHidden = pageType == .login
        ageTextField.isHidden = pageType == .login
        signUpButton.isHidden = pageType == .login
        forgotPasswordButton.isHidden = pageType == .signUp
        loginButton.isHidden = pageType == .signUp
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViewsFor(pageType: .login)
        
    }
}
