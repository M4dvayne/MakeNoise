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
        ScrollView{
            LazyVStack{
                ForEach(0..<soundCircle.count, id: \.self) {index in
                    AnimatedCircleView(num: index)
                }
            }
        }
    }
}


struct AnimatedCircleView: View {
    //здесь необходимо проработать логику длительности вращения
    @State private var soundCircle = CircleSounds.getSongs()
    let soundDuration = SoundMaker.shared.getSoundDuration()
    @State var isSelected: Bool = false
    let num: Int
    
    var body: some View {
        Button(action: {
            SoundMaker.shared.startSound(songName: soundCircle[num]);
            withAnimation(.easeOut(duration: isSelected ? soundDuration : 0)) {
                isSelected.toggle()
            print("ok")
        }}) {
                ButtonView(isSelected: $isSelected, text: $soundCircle[num])
            
        }
        
    }
}



struct CustomButton2_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton2()
    }
}

//
//var body: some View {
//
//    Button(action: {withAnimation(Animation.easeIn(
//        duration: rotationDuration)){
//            isSelected.toggle()
//        }}) {
//            ZStack{
//                Circle()
//                    .fill(LinearGradient(
//                        colors: [.red, .orange],
//                        startPoint: UnitPoint(x: 0, y: 1),
//                        endPoint: UnitPoint(x: 1, y: 0))
//                    )
//                    .shadow(color: .gray, radius: 8, x: 18, y: 5)
//                    .frame(width: 80, height: 80)
//                VStack{
//                    Text(buttonText)
//                        .rotationEffect(Angle(degrees: isSelected ? 360 : 0))
//                }
//            }
//        }
//}


//            ZStack{
//                Circle()
//
//                    .fill(LinearGradient(
//                        colors: [.red, .orange],
//                        startPoint: UnitPoint(x: 0, y: 1),
//                        endPoint: UnitPoint(x: 1, y: 0))
//                    )
//                    .shadow(color: .gray, radius: 8, x: 18, y: 5)
//                    .frame(width: 80, height: 80)
//                VStack {
//                    Text(soundCircle[num])
//
//                      //  .rotationEffect(.degrees(isSelected ? 360 : 0))
//
////                        .tint(.white)
////                        .font(.system(size: 14))
//
//                }
//
//            }
