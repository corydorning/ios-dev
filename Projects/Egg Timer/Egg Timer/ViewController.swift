//
//  ViewController.swift
//  Egg Timer
//
//  Created by Cory Dorning on 8/30/17.
//  Copyright © 2017 Cory Dorning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelTimer: UILabel!
    
    let time = 210
    
    var timer = Timer()
    var remainingTime: Int = 210
    
    @IBAction func stopTimer(_ sender: Any) {
        // stop timer
        timer.invalidate()
    }
    
    @IBAction func startTimer(_ sender: Any) {
        // stop current instance
        timer.invalidate()
        
        // start new instance
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        remainingTime = time
        updateTimerLabel()
    }
    
    @IBAction func subtractFromTimer(_ sender: Any) {
        if remainingTime > 10 {
            remainingTime -= 10
            updateTimerLabel()
        }
    }
    
    @IBAction func addToTimer(_ sender: Any) {
        remainingTime += 10
        updateTimerLabel()
    }
    
    func updateTimerLabel() {
        labelTimer.text = String(remainingTime)
    }
    
    @objc func processTimer() {
        if remainingTime > 0 {
            remainingTime -= 1
            
            updateTimerLabel()
        } else {
            timer.invalidate()
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

