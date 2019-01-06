//
//  Sign.swift
//  RockPaperScissor
//
//  Created by Sunny on 2019/1/6.
//  Copyright © 2019 supencil. All rights reserved.
//

import Foundation
import GameplayKit

let randomChioce = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randonSign() -> Sign{
    let sign =  randomChioce.nextInt()
    if sign == 0 {
        return .rock
    }else if sign == 1 {
        return .paper
    }else {
        return .scissors
    }
}

enum Sign {
    case rock, paper, scissors
    func compareResult(_ playersResult: Sign) -> GameState {
        print(self)
        switch self {
        case .rock:
            if playersResult == .rock {
                return .draw
            }else if playersResult == .scissors{
                return .win
            }else{
                return .lose
            }
        case .paper:
            if playersResult == .rock {
                return .win
            }else if playersResult == .scissors{
                return .lose
            }else{
                return .draw
            }
        case .scissors:
            if playersResult == .rock {
                return .lose
            }else if playersResult == .scissors{
                return .draw
            }else{
                return .win
            }
        }
    }
}

