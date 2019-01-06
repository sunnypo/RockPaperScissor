//
//  ViewController.swift
//  RockPaperScissor
//
//  Created by Sunny on 2019/1/6.
//  Copyright © 2019 supencil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func playagain(_ sender: Any) {
        updateGameState()
    }
    @IBAction func scissors(_ sender: Any) {
        play(.scissors)
    }
    @IBAction func paper(_ sender: Any) {
        play(.paper)
    }
    @IBAction func rock(_ sender: Any) {
        play(.rock)
    }
    @IBOutlet weak var statusOfTheGame: UILabel!
    @IBOutlet weak var appSign: UILabel!
    @IBOutlet weak var playAgain: UIButton!
    @IBOutlet weak var scissorsSign: UIButton!
    @IBOutlet weak var paperSign: UIButton!
    @IBOutlet weak var rockSign: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateGameState()
    }

    func randomSign() -> String{
        let sign =  randomChioce.nextInt()
        switch sign {
        case 0: return "👊"
        case 1: return "✌️"
        case 2: return "🖐️"
        default:
            return "🤖️"
        }
    }
    func play(_ sign: Sign){
        appSign.text = randomSign()
    }
    var stateOfGame = GameState.start
    func updateGameState() {
        switch stateOfGame {
        case .start:
            playAgain.isHidden = true
            appSign.text = "🤖️"
            scissorsSign.isHidden = false
            paperSign.isHidden = false
            rockSign.isHidden = false
            scissorsSign.isEnabled = true
            paperSign.isEnabled = true
            rockSign.isEnabled = true
        default:
            playAgain.isHidden = false
            scissorsSign.isHidden = true
            paperSign.isHidden = true
            rockSign.isHidden = true
            scissorsSign.isEnabled = false
            paperSign.isEnabled = false
            rockSign.isEnabled = false
        }
    }
}

