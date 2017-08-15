//
//  LoadAnimationVC.swift
//  LoadingAnimation
//
//  Created by Nishant on 15/08/17.
//  Copyright © 2017 rao. All rights reserved.
//

import UIKit
import Lottie

class LoadAnimationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Function to Load Animation.
    func loadAnimation(name: String) {
        
        let animationView = LOTAnimationView(name: name)
        animationView?.frame = CGRect(x: 0, y: 100, width: self.view.frame.size.width, height: 300)
        animationView?.contentMode = .scaleAspectFit
        
        self.view.addSubview(animationView!)
        
        animationView?.play()
        animationView?.loopAnimation = true
    }

    // Function for Back Button.
    @IBAction func backButtonPressed(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
}
