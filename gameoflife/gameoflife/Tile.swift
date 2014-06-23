//
//  Tile.swift
//  gameoflife
//
//  Created by Benny Heo on 6/13/14.
//  Copyright (c) 2014 BennyMadeIt. All rights reserved.
//

import SpriteKit

class Tile: SKSpriteNode {
    var numLivingNeighbors = 0
    var isAlive:Bool = false {
        didSet {
            self.hidden = !isAlive
        }
    }
}
