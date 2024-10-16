//
//  ContentView.swift
//  pruebaVision
//
//  Created by alumno on 10/16/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State var pulsaciones: Bool = true
    var body: some View {
        VStack {
            Model3D(named: "Sun", bundle: realityKitContentBundle)
                .padding(.bottom, 50)
            
            Text("\(pulsaciones)")
            
            Button(action: {
                pulsaciones = !pulsaciones
                print("Hola \(pulsaciones)")
            }, label: {Text("Hola")})
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
