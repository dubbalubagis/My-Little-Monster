//
//  Monsterimg.swift
//  My Little Monster
//
//  Created by Tyler Tschida on 5/28/16.
//  Copyright © 2016 Tyler Tschida. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    override init(frame:CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    func playIdleAnimation() {
        
        self.image = UIImage(named: "idle1.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        for x in 1 ..< 5 {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
    }
    

    func playReviveAnimation() {
        
        self.image = UIImage(named: "revive5.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        for x in 1 ..< 6 {
            let img = UIImage(named: "revive\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
    }
    
    func playDeathAnimation() {
        
        self.image = UIImage(named: "dead5.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        for x in 1 ..< 6 {
            let img = UIImage(named: "dead\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
    }
    
    func playIdleMoleAnimation() {
        
        self.image = UIImage(named: "idle1Mole.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        for x in 1 ..< 5 {
            let img = UIImage(named: "idle\(x)Mole.png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
    }
    
    func playDeathMoleAnimation() {
        
        self.image = UIImage(named: "dead5mole.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        for x in 1 ..< 7 {
            let img = UIImage(named: "dead\(x)mole.png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
    }
    
    func playReviveMoleAnimation() {
        
        self.image = UIImage(named: "revive5mole.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        for x in 1 ..< 7 {
            let img = UIImage(named: "revive\(x)mole.png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
    }
    
}