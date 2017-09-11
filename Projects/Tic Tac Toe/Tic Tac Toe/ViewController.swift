//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Cory Dorning on 9/7/17.
//  Copyright © 2017 Cory Dorning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // outlet collections
    @IBOutlet var xoButtons: [UIButton]!
    
    // outlets
    @IBOutlet weak var playerTurnLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    // active player, X=1 O=2
    var activePlayer = 1
    
    // track total turns
    var turnTotal = 0
    
    // track game state
    var gameState = [0,0,0,0,0,0,0,0,0]
    
    // winning combos
    let winningCombos = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    
    // track winner
    var winner = false
    
    // update players turn
    func updateTurn() {
        // update who's turn it is
        activePlayer = activePlayer == 1 ? 2 : 1
        
        // update turn total
        turnTotal += 1
        
        // update the label
        playerTurnLabel.text = "\(activePlayer == 1 ? "X" : "O") it's your turn"
    }
    
    // check for winner
    func isWinner() {
        // check winning combos
        for combo in winningCombos {
            if gameState[combo[0]] != 0 && gameState[combo[0]] == gameState[combo[1]] && gameState[combo[0]] == gameState[combo[2]] {
                winner = true
            }
        }
        
        
        // winner or draw
        if winner || turnTotal == 9 {
            // update winner label
            winnerLabel.text = winner ? "\(activePlayer == 1 ? "X" : "O") has won!" : "It's a draw!"
            
            // unhide winner label and play again button
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            
            // slide winner label and play again button into view
            UIView.animate(withDuration: 1, animations: {
                self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 1000, y: self.winnerLabel.center.y)
                self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 1000, y: self.playAgainButton.center.y)
            })
        } else {
            updateTurn()
        }
    }
    
    // game space pressed
    @IBAction func xoButton(_ sender: UIButton) {
        let currPos = sender.tag-1
        
        // prevents clicks once there's a winner/draw
        if !winner {
            // if space open
            if gameState[currPos] == 0 {
                // which image?
                let image = UIImage(named: "\(activePlayer == 1 ? "x" : "o").png")
                
                // set image
                sender.setImage(image, for: [])
                
                // store value for X or O
                gameState[currPos] = activePlayer
                
                // check if winner or not
                isWinner()
            }
        }
    }
    
    // reset game board
    @IBAction func playAgain(_ sender: Any) {
        for button in xoButtons {
            button.setImage(nil, for: [])
        }
        
        // reset turn total
        turnTotal = 0
        
        // reset game state's
        gameState = [0,0,0,0,0,0,0,0,0]
        
        // reset winner
        winner = false
        
        // hide winner label
        winnerLabel.center = CGPoint(x: winnerLabel.center.x - 1000, y: winnerLabel.center.y)
        winnerLabel.isHidden = true
        
        // hide play again button
        playAgainButton.center = CGPoint(x: playAgainButton.center.x - 1000, y: playAgainButton.center.y)
        playAgainButton.isHidden = true
        
        // randomly determine who goes first X=1 O=2
        activePlayer = Int(arc4random_uniform(2)+1)
        
        // set player's turn
        updateTurn()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // sets everything up on load
        playAgain((Any).self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

