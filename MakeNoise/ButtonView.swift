//
//  ButtonView.swift
//  MakeNoise
//
//  Created by Вячеслав Кремнев on 20.08.2022.
//

import SwiftUI



struct ButtonView: View {

 @Binding var isSelected: Bool
 @Binding var text: String
 var soundDurationValue = CircleSounds.getSongs()
 let num: Int
    
    var body: some View {
        ZStack{
            Circle()
                .fill(LinearGradient(
                    colors: [.red, .green, .blue, .blue, .green, .red],
                    startPoint: UnitPoint(x: 0, y: 1),
                    endPoint: UnitPoint(x: 1, y: 0))
                )
     
                .rotationEffect(.degrees(isSelected ? 360 : 0))
                .shadow(color: .gray, radius: 8, x: 18, y: 5)
                .frame(width: 80, height: 80)
                
            VStack {
                Text(text)
                    .tint(.white)
                    .font(.system(size: 14))
                
            }
            
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(isSelected: .constant(false), text: .constant("Text"), num: 0)
    }
}



