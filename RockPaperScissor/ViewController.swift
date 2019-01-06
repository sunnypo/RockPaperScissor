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
    }
    @IBAction func scisso(_ sender: Any) {
    }
    @IBAction func paper(_ sender: Any) {
    }
    @IBAction func rock(_ sender: Any) {
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
    }


}

