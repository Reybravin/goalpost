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
    
    func dismissDetail(){
        let transition = CATransition() // core animation library
        transition.duration = 0.3
        transition.type = kCATransitionPush //core animation
        transition.subtype = kCATransitionFromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
}
