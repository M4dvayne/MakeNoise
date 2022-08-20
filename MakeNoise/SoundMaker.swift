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
    
    func startSound(songName: String) {
        guard let pathToAudio = Bundle.main.path(forResource: songName , ofType: "mp3") else {return}
        
        let url = URL(fileURLWithPath: pathToAudio)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer.play()
        } catch let error {
            print(error)
        }
        
        
    }
    func getSoundDuration() -> Double {
        let soundDuration = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { (_) in
            if self.audioPlayer.isPlaying {
                    let value = Double(self.audioPlayer.currentTime / self.audioPlayer.duration)
                    //let value = self.audioPlayer.duration
                    print(value)
            }
        }
        return Double(soundDuration.timeInterval)
    }
}

