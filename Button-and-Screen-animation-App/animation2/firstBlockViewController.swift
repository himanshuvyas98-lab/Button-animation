//
//  firstBlockViewController.swift
//  animation2
//
//  Created by admin on 12/05/19.
//  Copyright © 2019 professional. All rights reserved.
//

import UIKit
import Lottie
class firstBlockViewController: UIViewController {

    @IBOutlet weak var animation1: LOTAnimationView!
    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimation()

        // Do any additional setup after loading the view.
    }
    
    func startAnimation() {
        animation1.setAnimation(named: "2118-funky-chicken")
        animation1.loopAnimation = true
        animation1.play()
    }

}
