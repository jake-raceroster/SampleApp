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
    
    // does a reviewer care about debug print lines?
    private func doSomething() {
        testPresented.toggle()
        print("got here 1")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
    // does a reviewer catch a typo that causes compilation to fail?
    startic var something: Int = 0
}
