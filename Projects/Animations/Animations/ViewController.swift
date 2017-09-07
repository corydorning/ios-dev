//
//  ViewController.swift
//  Animations
//
//  Created by Cory Dorning on 9/7/17.
//  Copyright © 2017 Cory Dorning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    
    
    @IBAction func fadeIn(_ sender: Any) {
        image.alpha = 0
        
        UIView.animate(withDuration: 1, animations: {
            self.image.alpha = 1
        })
    }
    
    @IBAction func slideIn(_ sender: Any) {
        image.center = CGPoint(x: image.center.x - 500, y: image.center.y)
        
        UIView.animate(withDuration: 2, animations: {
            self.image.center = CGPoint(x: self.image.center.x + 500, y: self.image.center.y)
        })
    }
    
    @IBAction func grow(_ sender: Any) {
        image.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        UIView.animate(withDuration: 1, animations: {
            self.image.frame = CGRect(x: 20, y: 40, width: 335, height: 253)
        })
    }
    
    // NEXT code

    // counter for Next button
    var i = 1
    
    @IBAction func next(_ sender: Any) {
        // convert i to needed string for image name
        let num = i < 10 ? "0\(i)" :"\(i)"
        
        // set image name
        image.image = UIImage(named: "frame_\(num).gif")
        
        // reset or increment i
        i = i==16 ? 0 : i+1
    }
    
    
    // START/STOP timer code
    @IBOutlet weak var animateButton: UIButton!
    
    // timer for animation button
    var timer = Timer()
    var isAnimating = false
    var imageNum = 1
    
    @objc func processTimer() {
        // add 0 if < 10 and convert to string
        let imageNumName =  imageNum < 10 ? "0\(imageNum)" : "\(imageNum)"
        
        // setup image name
        image.image = UIImage(named: "frame_\(imageNumName).gif")
        
        // reset remainingTime at 0 or decrement 1s
        imageNum = imageNum != 16 ? imageNum + 1 : 0
    }
    
    
    @IBAction func start(_ sender: Any) {
        // stop any other timer instance if Start button pressed multiple times
        timer.invalidate()
        
        if isAnimating {
            // stop timer
            timer.invalidate()
            
            // not animating
            isAnimating = false
            
            // update label
            animateButton.setTitle("Start", for:[])
        } else {
            // start animation
            timer = Timer.scheduledTimer(timeInterval: 0.07, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
            
            // animating
            isAnimating = true
            
            // update label
            animateButton.setTitle("Stop", for:[])
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

