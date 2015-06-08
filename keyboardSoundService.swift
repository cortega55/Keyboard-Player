//
//  KeyboardSounds.swift
//  KeyboardPlayer
//
//  Created by Claire Ortega on 6/1/15.
//  Copyright (c) 2015 F2M2, Inc. All rights reserved.
//

import UIKit
import AVFoundation


class KeyboardSoundService: AnyObject {
    var audioPlayer = AVAudioPlayer()
    var pianoKeySounds:[NSURL] = []
    
    init() {
        self.createSounds()
    }
    
    
    /**
        Creates array of sounds for pianoKeys
    */
    func createSounds() {
        
        for index in 0...6 {
            let soundString = NSBundle.mainBundle().pathForResource("keyboard_sound_\(index + 1)", ofType: "m4a")
            
            if let soundURL = NSURL.fileURLWithPath(soundString!){
                pianoKeySounds.append(soundURL)
            }
        }
        println(pianoKeySounds)
    }
    
    /**
        Plays sound in pianoKeys index
    
        :param: index: Int
    */
    func playSound(index: Int){
        
        if index >= pianoKeySounds.count {
            return
        }
        
        audioPlayer = AVAudioPlayer(contentsOfURL: pianoKeySounds[index], error: nil)
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        
    }

}
