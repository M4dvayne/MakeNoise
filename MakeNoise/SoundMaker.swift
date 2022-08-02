//
//  SoundMaker.swift
//  MakeNoise
//
//  Created by Вячеслав Кремнев on 02.08.2022.
//

import Foundation
import AVFoundation

class SoundMaker {
   static let shared = SoundMaker()
    
    var audioPlayer = AVAudioPlayer()
    
   func startSound(){
        guard let pathToAudio = Bundle.main.path(forResource: "BarkingDog", ofType: "mp3") else {return}
        let url = URL(fileURLWithPath: pathToAudio)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer.play()
        } catch let error {
            print(error)
        }
    }
}
