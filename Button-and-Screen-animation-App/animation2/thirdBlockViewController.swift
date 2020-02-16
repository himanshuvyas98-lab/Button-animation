//
//  thirdBlockViewController.swift
//  animation2
//
//  Created by admin on 12/05/19.
//  Copyright © 2019 professional. All rights reserved.
//

import UIKit
import Lottie

class thirdBlockViewController: UIViewController {

    
    @IBOutlet weak var animation3: LOTAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimation()

        // Do any additional setup after loading the view.
    }
    
    func startAnimation() {
        animation3.setAnimation(named: "4622-bear")
        animation3.loopAnimation = true
        animation3.play()
    }
    

}
