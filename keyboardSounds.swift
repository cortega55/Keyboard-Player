//
//  KeyboardSounds.swift
//  KeyboardPlayer
//
//  Created by F2M2 Dev 1 on 6/1/15.
//  Copyright (c) 2015 F2M2, Inc. All rights reserved.
//

import Foundation
import AudioToolbox


class KeyboardSounds: AnyObject {
    
    var pianoKeySounds = [SystemSoundID]()
    
    init() {
        self.createSounds()
    }
    
    
    /**
        Creates array of sounds for pianoKeys
    */
    func createSounds() {
        
        for index in 0...6 {
            var soundID: SystemSoundID = 0
            let soundURL = CFBundleCopyResourceURL(CFBundleGetMainBundle(), "key\(index + 1)", "m4a", nil)
            AudioServicesCreateSystemSoundID(soundURL, &soundID)
            pianoKeySounds.append(soundID)
        }
    }
    
    /**
        Plays sound in pianoKeys index
    
        :param: index: Int
    */
    func playSound(index: Int){
        if index >= pianoKeySounds.count {
            return
        }
        AudioServicesPlaySystemSound(pianoKeySounds[index])
        
    }

}
