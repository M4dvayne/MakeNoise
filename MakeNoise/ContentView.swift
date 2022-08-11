//
//  ContentView.swift
//  MakeNoise
//
//  Created by Вячеслав Кремнев on 02.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isSelected: Bool = false
    @State private var ddd: Double = 20.0
    var body: some View {
        
        CircleSoundView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
