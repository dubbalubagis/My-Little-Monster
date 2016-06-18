//
//  MainScreenVC.swift
//  My Little Monster
//
//  Created by Tyler Tschida on 6/15/16.
//  Copyright © 2016 Tyler Tschida. All rights reserved.
//

import UIKit
import AVFoundation

class MainScreenVC: UIViewController {
    
    @IBOutlet weak var monsterImg: MonsterImg!
    @IBOutlet weak var moleImg: MonsterImg!
    
    var introMusic: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            
        try introMusic = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("moley-music", ofType: "wav")!))
            
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
        introMusic.prepareToPlay()
        introMusic.play()
        
        introMusic.numberOfLoops = -1
        

        moleImg.playIdleMoleAnimation()
        monsterImg.playIdleAnimation()
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated);
        
        introMusic.stop()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        
        introMusic.play()
    }

}
