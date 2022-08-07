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
    
    private let trackInfo = CircleSounds.getSongs()
    var audioPlayer = AVAudioPlayer()
    
    
    func startSound(songName: String){
        
        guard let pathToAudio = Bundle.main.path(forResource: songName , ofType: "mp3") else {return}
        
        let url = URL(fileURLWithPath: pathToAudio)
        print(url)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer.play()
        } catch let error {
            print(error)
        }
    }
}

