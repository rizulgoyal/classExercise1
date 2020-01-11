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
    
    var coordinatecount = 0
    var swipeRight = false
    var swipeLeft = false
    
    override func viewDidLoad()
       {
           super.viewDidLoad()
           
           let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeScreen))
           swipeRight.direction = UISwipeGestureRecognizer.Direction.right
           view.addGestureRecognizer(swipeRight)
           
           let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeScreen))
           swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
           view.addGestureRecognizer(swipeLeft)
       }
         
      
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
//                if self.coordinatecount == 1
//                           {
//                               self.moveLeft()
//                           }
                
                })
        
        }
    
    
    
//    func moveRight()
//    {
//        UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
//                    {
//                        let guide = self.view.safeAreaLayoutGuide
//                        let width = guide.layoutFrame.size.width
//                        self.viewToMove.frame.origin.x = width - self.viewToMove.frame.size.height
//
//                    }, completion: { finished in
//                        if self.coordinatecount == 0{
//                        self.moveUp()
//                        }
//                        else
//                        {
//                        self.moveDown()
//                        }
//                    })
//    }
//
//    //function to move up
//    func moveUp()
//    {
//
//        UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
//            {
//                self.viewToMove.frame.origin.y = self.view.safeAreaInsets.bottom
//            },
//            completion: { finished in
//                if self.coordinatecount == 0{
//                self.moveLeft()
//                }
//                else
//                {
//                self.moveRight()
//                }
//            })
//    }
//
//    //function to move left
//    func moveLeft()
//    {
//
//        self.viewToMove.frame.origin.x = self.view.bounds.maxX - 50
//
//        UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
//            {
//                        self.viewToMove.frame.origin.x =  self.view.safeAreaInsets.left + 10
//
//
//            },
//                       completion: { finished in
//                        if self.coordinatecount == 0
//                       {
//                       self.moveDown()
//                       }
//                        else
//                        {
//                            if self.swipeRight == true
//                            {
//                            self.moveUp()
//                            }
//                        }
//
//            })
//        }
//
    
    
// new functions
    
    func rotateclockwise()
    {
        func moveUp()
        {
            
            UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
                {
                    self.viewToMove.frame.origin.y = self.view.safeAreaInsets.bottom
                },
                completion: { finished in
        
                    moveRight()
                    
                })
        }
        
        moveUp()
        
        
        func moveRight()
           {
               UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
                           {
                               let guide = self.view.safeAreaLayoutGuide
                               let width = guide.layoutFrame.size.width
                               self.viewToMove.frame.origin.x = width - self.viewToMove.frame.size.height
           
                           }, completion: { finished in
                               
                               moveDown()
                               
                           })
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
                   
                                   moveLeft()
                    
                    
                    })
            
            }
        
        func moveLeft()
        {
            
            self.viewToMove.frame.origin.x = self.view.bounds.maxX - 50
            
            UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
                {
                            self.viewToMove.frame.origin.x =  self.view.safeAreaInsets.left + 10
                            
            
                },
                           completion: { finished in
                            
                         //   self.rotateanticlockwise()
                            
                        
                })
            }
        
        
    }
    
    
    // end of clockwise functions
    
    // start of anticlockwise
    
    func rotateanticlockwise()
    {
        func moveAntiRight()
        {
            UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
                        {
                            let guide = self.view.safeAreaLayoutGuide
                            let width = guide.layoutFrame.size.width
                            self.viewToMove.frame.origin.x = width - self.viewToMove.frame.size.height
        
                        }, completion: { finished in
                            
                            moveAntiUp()
                            
                        })
        }
        
        moveAntiRight()
        
        
        func moveAntiUp()
        {
            
            UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
                {
                    self.viewToMove.frame.origin.y = self.view.safeAreaInsets.bottom
                },
                completion: { finished in
        
                    moveAntiLeft()
                    
                })
        }
        
        func moveAntiLeft()
        {
            
            self.viewToMove.frame.origin.x = self.view.bounds.maxX - 50
            
            UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
                {
                            self.viewToMove.frame.origin.x =  self.view.safeAreaInsets.left + 10
                            
            
                },
                           completion: { finished in
                            
                            moveAntiDown()
                            
                        
                })
            }
        
        func moveAntiDown()
           {
        //        self.blockToAnimate.frame.origin.x = self.view.safeAreaInsets.left + 10
        //        self.blockToAnimate.frame.origin.y = self.view.safeAreaInsets.top
                UIView.animate(withDuration: 4.0, delay: 0, options: .curveLinear, animations:
                    {
                        self.viewToMove.frame.origin.y =  self.view.frame.size.height -  self.view.safeAreaInsets.bottom - self.viewToMove.frame.size.height
                    },
                    completion:
                   { finished in
                    
                   // self.rotateclockwise()
                   
                    
                    
                    })
            
            }
        
    }
    
    
    
    @objc func swipeScreen(gesture: UISwipeGestureRecognizer) {
        
        let swipeGesture = gesture as UISwipeGestureRecognizer
        switch swipeGesture.direction {
        case UISwipeGestureRecognizer.Direction.right:
            swipeRight  = true
            swipeLeft = false
            print("right swipe")
            self.coordinatecount = 0
            self.rotateanticlockwise()
        case UISwipeGestureRecognizer.Direction.left:
            swipeLeft = true
            swipeRight = false
            print("left swipe")
            self.coordinatecount = 1
            self.rotateclockwise()
        default:
            break
        }
    }
    
    
    
    

}




