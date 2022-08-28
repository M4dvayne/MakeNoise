//
//  CircleSoundView.swift
//  MakeNoise
//
//  Created by Вячеслав Кремнев on 02.08.2022.
//

import SwiftUI
//import AVFoundation

struct CircleSoundView: View {
    @State var isSelected: Bool = false
    private let soundCircle = CircleSounds.getSongs()
    
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0..<soundCircle.count, id: \.self){ index in
                    AnimatedCircleView(num: index)
                    
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
