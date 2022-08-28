//
//  SoundMaker.swift
//  MakeNoise
//
//  Created by Вячеслав Кремнев on 02.08.2022.
//

import Foundation
import AVFoundation

class SoundMaker {
    var audioPlayer = AVAudioPlayer()
    static let shared = SoundMaker()
    
    
    private let trackInfo = CircleSounds.getSongs()
    
    func startSound(songName: String, stopSwitch: inout Bool) {
        guard let pathToAudio = Bundle.main.path(forResource: songName , ofType: "mp3") else {return}
        
        let url = URL(fileURLWithPath: pathToAudio)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer.play()
            
            if stopSwitch {
                audioPlayer.stop()
                audioPlayer.currentTime = 0
            } else {
                print(stopSwitch)
            }
            
        } catch let error {
            print(error)
        }
        
        
    }
    func getSoundDuration(songName: String) -> Double {
        guard let stringUrl = Bundle.main.path(forResource: songName , ofType: "mp3") else {return 0}
        
        let url = URL(fileURLWithPath: stringUrl)
        do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
        } catch let error{
            print(error)
        }
        return Double(audioPlayer.duration)
    }
}

