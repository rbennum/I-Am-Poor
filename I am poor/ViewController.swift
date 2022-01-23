//
//  ViewController.swift
//  I am poor
//
//  Created by Bening Ranum on 15/01/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var darkModeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        darkModeSwitch.isOn = true
        overrideUserInterfaceStyle = .dark
    }
    
    @IBAction func switchToggled(_ sender: Any) {
        guard let darkModeSwitch = sender as? UISwitch else {
            return
        }
        
        overrideUserInterfaceStyle = darkModeSwitch.isOn ? .dark : .light
    }
}
