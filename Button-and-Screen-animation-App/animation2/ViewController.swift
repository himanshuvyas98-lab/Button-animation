//
//  ViewController.swift
//  animation2
//
//  Created by admin on 11/05/19.
//  Copyright © 2019 professional. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var third: UIButton!
    @IBOutlet weak var second: UIButton!
    @IBOutlet weak var first: UIButton!
    @IBOutlet weak var block: UIButton!
    var firstButtonCenter: CGPoint!
    var secondButtonCenter: CGPoint!
    var thirdButtonCenter: CGPoint!
    
    

    
    
    
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var PPImage: UIImageView!
    @IBOutlet weak var PPLable: UILabel!
    
   //all buttons
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstButtonCenter = first.center
        secondButtonCenter = second.center
        thirdButtonCenter = third.center
        
        first.center = block.center
        second.center = block.center
        third.center = block.center
    
        
        bgImage.alpha = 0
        PPImage.alpha = 0
        PPLable.alpha = 0
        
        
    
        
        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 3, animations: {
            self.bgImage.alpha = 0.6
        }) { (true) in
            
        }
        
        UIView.animate(withDuration: 5, animations: {
            self.PPImage.alpha = 1
        }) { (true) in
            
            
            UIView.animate(withDuration: 5, animations: {
                self.PPLable.alpha = 1
            }) { (true) in
            }
        }
    }

   
    @IBAction func blockClicked(_ sender: UIButton) {
        if block.currentImage == #imageLiteral(resourceName: "white button") {
            UIView.animate(withDuration: 0.3, animations: {
                self.first.alpha = 1
                self.second.alpha = 1
                self.third.alpha = 1
                
                self.first.center = self.firstButtonCenter
                self.second.center = self.secondButtonCenter
                self.third.center = self.thirdButtonCenter
                
                })
        } else {
            UIView.animate(withDuration: 0.3, animations: {
                self.first.alpha = 0
                self.second.alpha = 0
                self.third.alpha = 0
                
                self.first.center = self.block.center
                self.second.center = self.block.center
                self.third.center = self.block.center
                })
        }
 
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "button"), offImage: #imageLiteral(resourceName: "white button"))
    }
    
    @IBAction func firstClicked(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "type1 on"), offImage: #imageLiteral(resourceName: "type1 off"))
    }
    
    @IBAction func secondClicked(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "type2 on"), offImage: #imageLiteral(resourceName: "type2 off"))
    }
  
    
    @IBAction func thirdClicked(_ sender: UIButton) {
        toggleButton(button: sender, onImage: #imageLiteral(resourceName: "type3 on"), offImage: #imageLiteral(resourceName: "type3 off"))
    }
    
    
    func toggleButton (button: UIButton, onImage: UIImage, offImage: UIImage) {
        if button.currentImage == offImage{
            button.setImage(onImage, for: .normal)
        } else {
            button.setImage(offImage, for: .normal)
        }
    }
    
    
    

   

}

