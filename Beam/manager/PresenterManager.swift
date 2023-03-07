//
//  PresenterManager.swift
//  Beam
//
//  Created by Lakshmi Priya on 26/02/23.
//

import UIKit

class PresenterManager{
    
    static let shared = PresenterManager()
    private init() {}
        
        enum VC{
            case mainTabBarController
            case onBoarding
        }
        func show(vc:VC) {
            
            var viewController = UIViewController()
            
            switch vc {
            case .mainTabBarController:
                viewController = UIStoryboard(name: K.StoryboardID.main, bundle : nil).instantiateViewController(withIdentifier: K.StoryboardID.mainTabBarController)
            case .onBoarding:
                viewController = UIStoryboard(name: K.StoryboardID.main, bundle: nil).instantiateViewController(withIdentifier: K.StoryboardID.onboardingViewController)
            }
            
            
            
           if let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate,
              let window = sceneDelegate.window{
                window.rootViewController = viewController
            
                UIView.transition(with: window, duration: 0.25, options: .transitionCrossDissolve, animations: nil, completion: nil)
            }
    }
}
