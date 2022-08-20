//
//  ButtonView.swift
//  MakeNoise
//
//  Created by Вячеслав Кремнев on 20.08.2022.
//

import SwiftUI



struct ButtonView: View {
//@State private var rotation: Double = 250
// @Binding var duration: Double
 @Binding var isSelected: Bool
 @Binding var text: String
    
    var body: some View {
        ZStack{
            Circle()
                .fill(LinearGradient(
                    colors: [.black, .white],
                    startPoint: UnitPoint(x: 0, y: 1),
                    endPoint: UnitPoint(x: 1, y: 0))
                )
            //Circle rotation is ok
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

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView(text: )
//    }
//}



