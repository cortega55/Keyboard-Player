//
//  ViewController.swift
//  KeyboardPlayer
//
//  Created by F2M2 Dev 1 on 6/1/15.
//  Copyright (c) 2015 F2M2, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var keyboardPlayer = KeyboardSoundService()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /**
        Plays sound when button is pushed
    */
    @IBAction func playBtn(sender: UIButton) {
        let keyNum = sender.tag
        keyboardPlayer.playSound(keyNum)
    }


}

