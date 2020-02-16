//
//  secondBlockViewController.swift
//  animation2
//
//  Created by admin on 12/05/19.
//  Copyright © 2019 professional. All rights reserved.
//

import UIKit
import Lottie
class secondBlockViewController: UIViewController {

    
    @IBOutlet weak var animation2: LOTAnimationView!
    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimation()

        // Do any additional setup after loading the view.
    }
    
    func startAnimation() {
        animation2.setAnimation(named: "1432-mr-lama-stikers-cool")
        animation2.loopAnimation = true
        animation2.play()
    }
   
}
