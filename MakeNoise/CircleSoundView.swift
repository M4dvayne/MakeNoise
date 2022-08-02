//
//  CircleSoundView.swift
//  MakeNoise
//
//  Created by Вячеслав Кремнев on 02.08.2022.
//

import SwiftUI
import AVFoundation

struct CircleSoundView: View {
    private let circle = SoundCircle()
    
    let colors: [Color] = [.indigo, .blue, .cyan, .gray, .mint, .orange, .pink]
    
    var body: some View {
        Button(action: SoundMaker.shared.startSound){
            ZStack{
                Circle()
                    .fill(colors.randomElement() ?? .red)
                    .frame(width: 88, height: 88)
                VStack {
                    Text(circle.soundName.randomElement()?.value ?? "Empty")
                        .tint(.white)
                }
            }
        }
    }
}

struct CircleSoundView_Previews: PreviewProvider {
    static var previews: some View {
        CircleSoundView()
    }
}

