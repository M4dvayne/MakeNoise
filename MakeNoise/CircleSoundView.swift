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
    @State private var scale: CGFloat = 2
    @State var isSelected: Bool = false
    
    
    let colors: [Color] = [.indigo, .blue, .cyan, .gray, .mint, .orange, .pink]
    
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0..<soundCircle.count, id: \.self){ index in
                    Button(action: {SoundMaker.shared.startSound(songName: soundCircle[index])}){
                            ZStack{
                                Circle()
                                    .fill(colors.randomElement() ?? .red)
                                    .frame(width: 88, height: 88)
                                    .shadow(color: .gray, radius: 8, x: 14, y: 8)
                                VStack {
                                    Text("\(soundCircle[index])")
                                        .tint(.white)
                                        .onTapGesture {
                                            print("здесь можно обработать анимацию")
                                        }
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


