//
//  ViewController.swift
//  RockPaperScissor
//
//  Created by Sunny on 2019/1/6.
//  Copyright © 2019 supencil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var stateOfGame = GameState.start
    @IBAction func playagain(_ sender: Any) {
        stateOfGame = GameState.start
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


    func play(_ playerSign: Sign) {
        let signOfApp = playerSign.randomSign()
        stateOfGame = playerSign.compareResult(signOfApp)
        print ("appsign \(signOfApp),playersign \(playerSign), state of game \(stateOfGame)")
        updateGameState()
        appSign.text = signOfApp.changeEmoji(_computerSign: signOfApp)
        switch playerSign{
        case .scissors:
            scissorsSign.isHidden = false
        case .rock:
            rockSign.isHidden = false
        case .paper:
            paperSign.isHidden = false
        }
    }
    
    func updateGameState() {
        switch stateOfGame {
        case .start:
            statusOfTheGame.text = "Rock,Paper, Scissors?"
            playAgain.isHidden = true
            appSign.text = "🤖️"
            scissorsSign.isHidden = false
            paperSign.isHidden = false
            rockSign.isHidden = false
            scissorsSign.isEnabled = true
            paperSign.isEnabled = true
            rockSign.isEnabled = true
        case .win:
            statusOfTheGame.text = "win"
            playAgain.isHidden = false
            scissorsSign.isHidden = true
            paperSign.isHidden = true
            rockSign.isHidden = true
            scissorsSign.isEnabled = false
            paperSign.isEnabled = false
            rockSign.isEnabled = false
        case .lose:
            statusOfTheGame.text = "lose"
            playAgain.isHidden = false
            scissorsSign.isHidden = true
            paperSign.isHidden = true
            rockSign.isHidden = true
            scissorsSign.isEnabled = false
            paperSign.isEnabled = false
            rockSign.isEnabled = false
        case .draw:
            statusOfTheGame.text = "draw"
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

