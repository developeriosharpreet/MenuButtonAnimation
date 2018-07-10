//
//  ViewController.swift
//  MenuButtonAnimation
//
//  Created by Animators on 10/07/18.
//  Copyright © 2018 Animators. All rights reserved.
//

import UIKit

class ViewController: UIViewController,menuButtonProtocol {

    @IBOutlet weak var menuButton: MenuButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.menuButtonDelegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func menuButtonPressed(){
        print("menu button pressed")
        
        
    }

}

