//
//  UIViewAnime.swift
//  UIViewAnimationPro
//
//  Created by Qaptive Technologies on 20/05/19.
//  Copyright © 2019 TechTonic. All rights reserved.
//

import UIKit


class UIViewAnime {
    
    static let share = UIViewAnime()
    
     func showAnimate(selfClass: AnyObject) {
        guard let vc = selfClass as? UIViewController else {print("VC2😩");return}
        
        vc.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        vc.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            vc.view.alpha = 1.0
            vc.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
     func removeAnimate(selfClass: AnyObject) {
        guard let vc = selfClass as? UIViewController else {print("VC2😩");return}
        
        UIView.animate(withDuration: 0.25, animations: {
            vc.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            vc.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                vc.view.removeFromSuperview()
            }
        });
    }
    
    
    func animate1(view: UIView) {
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseIn, animations: {
            //self.viewToAnimate.alpha = 1
            
            view.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }) { (_) in
            UIView.animate(withDuration: 0.5, animations: {
                view.transform = CGAffineTransform.identity
            })
        }
    }
    
    func animate2(view: UIView) {
        UIView.animate(withDuration: 0.1, animations: {
            //self.viewToAnimate.alpha = 1
            view.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }) { (_) in
            UIView.animate(withDuration: 0.5, animations: {
                view.transform = CGAffineTransform.identity
            })
        }
    }
    
    
    
    //MARK:
    func bounce(view: UIView) {
       
        view.transform = CGAffineTransform(scaleX: 0, y: 0)
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
   
        }, completion: { (comp) in
          
        })
    }
    
    //MARK:
    func zoomIn(view: UIView) {
        
        let originalTransform = view.transform
        let scaledTransform = originalTransform.scaledBy(x: 0.2, y: 0.2)
        let scaledAndTranslatedTransform = scaledTransform.translatedBy(x: 0.0, y: -250.0)
        UIView.animate(withDuration: 0.7, animations: {
            view.transform = scaledAndTranslatedTransform
        })
//        view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
//        UIView.animate(withDuration: 0.25, animations: {
//            view.transform = CGAffineTransform(scaleX: 0, y: 0)
//           // vc.view.alpha = 0.0;
//        }, completion:{(finished : Bool)  in
//            if (finished)
//            {
//               // vc.view.removeFromSuperview()
//            }
//        });
        
//        view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
//        UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
//            view.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
//
//        }, completion: { (comp) in
//
//        })
    }
    
    
}
