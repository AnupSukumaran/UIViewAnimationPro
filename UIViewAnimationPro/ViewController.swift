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
    @IBOutlet weak var viewToAnimate2: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    @IBAction func btnToAnimate(_ sender: Any) {
       UIViewAnime.share.animate2(view: viewToAnimate)
    
    }
    
    
    @IBAction func btnToAnimate2(_ sender: Any) {
         UIViewAnime.share.bounce(view: viewToAnimate2)
        
    }
    
    

}

