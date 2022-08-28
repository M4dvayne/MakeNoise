//
//  CustomButton2.swift
//  MakeNoise
//
//  Created by Вячеслав Кремнев on 11.08.2022.
//

import SwiftUI

struct CustomButton2: View {
    private let soundCircle = CircleSounds.getSongs()
    var body: some View {
            LazyVStack{
                ForEach(0..<soundCircle.count, id: \.self) {index in
                    AnimatedCircleView(num: index)
                }
            }
    }
}


struct AnimatedCircleView: View {
    @State private var soundCircle = CircleSounds.getSongs()
    @State var isSelected: Bool = false
    let num: Int
    
    var body: some View {
        Button(action: {withAnimation(Animation.easeIn(duration: SoundMaker.shared.getSoundDuration(songName: soundCircle[num]))) {
            collectedAllFuncs()
        }}){
            ButtonView(isSelected: $isSelected, text: $soundCircle[num], num: num)
            
        }
}
    private func collectedAllFuncs() {
        SoundMaker.shared.startSound(songName: soundCircle[num], stopSwitch: &isSelected)
        isSelected.toggle()
    }
}


struct CustomButton2_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton2()
    }
}
