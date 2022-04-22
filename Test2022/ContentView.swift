//
//  ContentView.swift
//  Test2022
//
//  Created by Federico on 21/04/2022.
//

import SwiftUI


struct ContentView: View {
    @State private var value = 0.0
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: (value*2 + 40), height:(value*2 + 40))
                .foregroundColor(intensityAmount(for: value))
                .frame(width: 100, height: 100)
                .animation(.easeInOut(duration: 0.5), value: value)
            Text("\(Int(value))")
            Slider(value: $value, in: 0...30)
                .padding()
        }
    }
    
    func intensityAmount(for value: Double) -> Color {
        var color: Color?
        
        switch(value) {
        case ...0:
            color = .black
        case 1..<10:
            color = .green
        case 10..<20:
            color = .yellow
        case 20...:
            color = .red
        default:
            color = .black
        }
        
        return color!
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
