//
//  ContentView.swift
//  SampleApp
//
//  Created by Jake Stephens on 2023-05-23.
//

import SwiftUI

struct ContentView: View {
    @State private var testPresented = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button("Test Button", action: {
                doSomething()
            }).buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle)
                .foregroundColor(.red)
                .fullScreenCover(isPresented: $testPresented, content: TestView.init)
        }
        .padding()
    }
    
    private func doSomething() {
        testPresented.toggle()
        print("ayylmao")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
