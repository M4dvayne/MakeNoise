//
//  CircleSoundView.swift
//  MakeNoise
//
//  Created by Вячеслав Кремнев on 02.08.2022.
//

import SwiftUI
import AVFoundation

struct CircleSoundView: View {
    private let soundCircle = CircleSounds.getSongs()
    @State var isSelected: Bool = false
    
    
    let colors: [Color] = [.indigo, .blue, .cyan, .gray, .mint, .orange, .pink]
    
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0..<soundCircle.count, id: \.self){ index in
                    Button(action: {SoundMaker.shared.startSound(songName: soundCircle[index])}){
                            ZStack{
                                Circle()
                                    .fill(LinearGradient(
                                        colors: [.red, .orange],
                                        startPoint: UnitPoint(x: 0, y: 1),
                                        endPoint: UnitPoint(x: 1, y: 0))
                                    )
                                    .shadow(color: .gray, radius: 8, x: 18, y: 5)
                                    .frame(width: 80, height: 80)
                                VStack {
                                    Text("\(soundCircle[index])")
                                        .tint(.white)
                                        .font(.system(size: 14))
                                        .rotationEffect(Angle(degrees: isSelected ? 360 : 0))
                                }
                            }
                       }
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


