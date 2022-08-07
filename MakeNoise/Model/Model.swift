//
//  Model.swift
//  MakeNoise
//
//  Created by Вячеслав Кремнев on 02.08.2022.
//

import Foundation

struct CircleSounds {
    
    let soundNames: [String]
    
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

