//
//  ViewController.swift
//  TicTacToe
//
//  Created by Batch-2 on 04/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var statusLabel: UILabel!
    
    
    @IBOutlet var gridButtons: [UIButton]!
    var playerTurn = -1
    var grid = [0,0,0,0,0,0,0,0,0,0]
    var turnsLeft = 9
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        statusLabel.layer.cornerRadius = 50.0
    }
    
   

    @IBAction func gridButtonTapped(_ sender: UIButton) {
        sender.isEnabled = false
        turnsLeft-=1
        if playerTurn == -1 {
            sender.setImage(UIImage(systemName: "xmark"), for: .normal)
            grid[sender.tag] = -1
            
            playerTurn = 1
            statusLabel.text="Player 2"
            checkStatusOfGame()
        } else if playerTurn == 1 {
            sender.setImage(UIImage(systemName: "circle"), for: .normal)
            grid[sender.tag] = 1
           
            playerTurn = -1
            statusLabel.text="Player 1"
            checkStatusOfGame()
        }
    }
   func checkStatusOfGame(){
       let r1 = grid[0] + grid[1] + grid[2]
       let r2 = grid[3] + grid[4] + grid[5]
       let r3 = grid[6] + grid[7] + grid[8]
       let c1 = grid[0] + grid[3] + grid[6]
       let c2 = grid[1] + grid[4] + grid[7]
       let c3 = grid[2] + grid[5] + grid[8]
       let d1 = grid[0] + grid[4] + grid[8]
       let d2 = grid[2] + grid[4] + grid[6]
       
       if (r1 == 3 || r2 == 3 || r3 == 3 || c1 == 3 || c2 == 3 || c3 == 3 || d1 == 3 || d2 == 3) {
           for button in gridButtons{
               button.isEnabled = false
           }
           statusLabel.text="Player 2 won"
           statusLabel.backgroundColor = .green
           statusLabel.tintColor = .white
           
       } else if (r1 == -3 || r2 == -3 || r3 == -3 || c1 == -3 || c2 == -3 || c3 == -3 || d1 == -3 || d2 == -3) {
           for button in gridButtons{
               button.isEnabled = false
           }
           statusLabel.text="Player 1 won"
           statusLabel.backgroundColor = .green
           statusLabel.tintColor = .white
           
       } else if turnsLeft==0 {
           statusLabel.text="It's a Draw"
       }
    }
    
    
    @IBAction func resetBtn(_ sender: UIButton) {
        var i=0
        for button in gridButtons{
            button.isEnabled = true
            button.setImage(UIImage(systemName: "lane"), for: .normal)
            grid[i] = 0
            i=i+1
            
        }
        statusLabel.text="Player 1"
        turnsLeft = 9
    }
    
    
}

