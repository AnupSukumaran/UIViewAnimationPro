//
//  ViewController.swift
//  UIViewAnimationPro
//
//  Created by Sukumar Anup Sukumaran on 23/10/18.
//  Copyright © 2018 TechTonic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewToAnimate: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //viewToAnimate.alpha = 0
    }

    @IBAction func btnToAnimate(_ sender: Any) {
        
        animate2()
    }
    
    func animate1() {
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseIn, animations: {
            //self.viewToAnimate.alpha = 1
            self.viewToAnimate.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }) { (_) in
            UIView.animate(withDuration: 0.5, animations: {
                self.viewToAnimate.transform = CGAffineTransform.identity
            })
        }
    }
    
    func animate2() {
        UIView.animate(withDuration: 0.1, animations: {
            //self.viewToAnimate.alpha = 1
            self.viewToAnimate.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }) { (_) in
            UIView.animate(withDuration: 0.5, animations: {
                self.viewToAnimate.transform = CGAffineTransform.identity
            })
        }
    }
    

}

