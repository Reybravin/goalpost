//
//  UIViewControllerExt.swift
//  goalpost
//
//  Created by Sergiy Sachuk on 12/10/17.
//  Copyright © 2017 Sergiy Sachuk. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func presentDetail(_ viewControllerToPresent: UIViewController){ //_ means that it is an internal parameter which will not be shown when you call this function
        let transition = CATransition() // core animation library
        transition.duration = 0.3
        transition.type = kCATransitionPush //core animation
        transition.subtype = kCATransitionFromRight
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        present(viewControllerToPresent, animated: false, completion: nil)
    }
    //for finishGoalVC to dismiss to the GoalVC and not to CreateGoalVC.
    func presentSecondaryDetail(_ viewControllerToPresent: UIViewController){
        let transition = CATransition() // core animation library
        transition.duration = 0.3
        transition.type = kCATransitionPush //core animation
        transition.subtype = kCATransitionFromRight
        
        //creating a const to hold the presented VC
        guard let presentedViewController = presentedViewController else { return }
        presentedViewController.dismiss(animated: false) {
            self.view.window?.layer.add(transition, forKey: kCATransition)
            self.present(viewControllerToPresent, animated: false, completion: nil)
        }
    }
    
    func dismissDetail(){
        let transition = CATransition() // core animation library
        transition.duration = 0.3
        transition.type = kCATransitionPush //core animation
        transition.subtype = kCATransitionFromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
}
