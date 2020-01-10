//
//  ViewController.swift
//  classExercise1
//
//  Created by Rizul goyal on 2020-01-09.
//  Copyright © 2020 Rizul goyal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewToMove: UIView!
         
      
         override func viewDidAppear(_ animated: Bool) {
            moveDown()
         }
    
    func moveDown()
       {
    //        self.blockToAnimate.frame.origin.x = self.view.safeAreaInsets.left + 10
    //        self.blockToAnimate.frame.origin.y = self.view.safeAreaInsets.top
            UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
                {
                    self.viewToMove.frame.origin.y =  self.view.frame.size.height -  self.view.safeAreaInsets.bottom - self.viewToMove.frame.size.height
                },
                completion:
               { finished in
                
                })
        
        }
    
    

}




