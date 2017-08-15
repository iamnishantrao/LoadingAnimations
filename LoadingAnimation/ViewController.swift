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
    
    var animName = ["Loading", "Material Loader", "Preloader", "Progress Bar", "Trail Loading"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "LoadAnimationVC" {
            
            if let destination = segue.destination as? LoadAnimationVC {
                
                if let name = sender as? String {
                    
                    destination.loadAnimation(name: name)
                }
            }
        }
    }

}

// Extension for Table View.
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

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 80.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let name = animName[indexPath.row]
        performSegue(withIdentifier: "LoadAnimationVC", sender: name)
    }
}

