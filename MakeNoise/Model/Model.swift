//
//  Model.swift
//  MakeNoise
//
//  Created by Вячеслав Кремнев on 02.08.2022.
//

import Foundation

class CircleSounds {
    let soundNames: [String]
    
    init(soundNames: [String]) {
        self.soundNames = soundNames
    }
}

extension CircleSounds {
    static func getSongs() -> [String] {
        
        var circle: [String] = []
        let sounds = DataManager.shared.sounds
        
        for sound in sounds {
          circle.append(sound)
        }
        return circle
    }
}

