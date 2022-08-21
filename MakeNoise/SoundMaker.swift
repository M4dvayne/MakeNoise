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

//{
//      let avAudioPlayer = try AVAudioPlayer (contentsOfURL:recordedAudioURL)
//      duration = avAudioPlayer.duration
//      let ms  = Int((duration%1)*1000)
//      let sec = Int(duration%60)
//      let minutes = Int(duration / 60) % 60
//      let hours = Int(duration / 3600)
//      recordedAudioDuration.text = (NSString(format: "Dur: %0.2d:%0.2d:%0.2d.%0.3d",hours,minutes,sec,ms)) as String
//  }
//  catch{
//      print(error)
//  }


//from func
    //let soundDuration = Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { (_) in
 //            if self.audioPlayer.isPlaying {
 //                    let value = Double(self.audioPlayer.currentTime / self.audioPlayer.duration)
 //                    print(value)
 //            }
 //        }
 //        return Double(soundDuration.timeInterval)
 //    }
