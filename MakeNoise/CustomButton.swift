//
//  CustomButton.swift
//  MakeNoise
//
//  Created by Вячеслав Кремнев on 08.08.2022.
//

import SwiftUI

struct CustomButton: View {
    @Binding var isSelected: Bool
    var buttonText: String
    @Binding var rotationDuration: Double
    
    var body: some View {
        
        Button(action: {withAnimation(Animation.easeIn(
            duration: rotationDuration)){
                isSelected.toggle()
            }}) {
                ZStack{
                    Circle()
                        .fill(LinearGradient(
                            colors: [.red, .orange],
                            startPoint: UnitPoint(x: 0, y: 1),
                            endPoint: UnitPoint(x: 1, y: 0))
                        )
                        .shadow(color: .gray, radius: 8, x: 18, y: 5)
                        .frame(width: 80, height: 80)
                    VStack{
                        Text(buttonText)
                            .rotationEffect(Angle(degrees: isSelected ? 360 : 0))
                    }
                }
            }
    }
}



struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(isSelected: .constant(false), buttonText: "Text", rotationDuration: .constant(1.0))
    }
}
