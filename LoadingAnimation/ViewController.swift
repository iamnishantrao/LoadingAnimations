//
//  ViewController.swift
//  LoadingAnimation
//
//  Created by Nishant on 15/08/17.
//  Copyright © 2017 rao. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var animName = ["Loading", "Loading..", "Material Loader", "Preloader", "Progress Bar", "Trail Loading"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

//    let animationView = LOTAnimationView(name: "loading..")
//    animationView?.frame = CGRect(x: 0, y: 100, width: self.view.frame.size.width, height: 250)
//    animationView?.contentMode = .scaleAspectFit
//    
//    self.view.addSubview(animationView!)
//    
//    animationView?.play()

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return animName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimName", for: indexPath) as? LoadAnimCell
        let name = animName[indexPath.row]
        
        cell?.loadAnimNameLabel.text = name
        return cell!
//        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 80.0
    }
    
}

