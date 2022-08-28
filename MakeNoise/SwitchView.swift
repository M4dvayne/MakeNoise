//
//  SwitchView.swift
//  MakeNoise
//
//  Created by Вячеслав Кремнев on 27.08.2022.
//

import SwiftUI

struct SwitchView: View {
    @Binding var isOn: Bool
    var body: some View {
        HStack(){
            Toggle("Holding mode", isOn: $isOn)
        }
        
        .toggleStyle(SwitchToggleStyle(tint: .green))
        .padding(EdgeInsets(
            top: 0,
            leading: 120,
            bottom: 0,
            trailing: 20
        ))
    }
}

struct SwitchView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchView(isOn: .constant(true))
    }
}
