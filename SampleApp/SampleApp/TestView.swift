//
//  TestView.swift
//  SampleApp
//
//  Created by Jake Stephens on 2023-05-23.
//

import SwiftUI

struct TestView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Button("Test Button") {
                goBackToWhereWeWere()
            }.buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle)
                .foregroundColor(.green)
        }
        .padding()
    }
    
    // does a reviewer notice random unused junk?
    private func goBackToWhereWeWere() {
        dismiss()
        "hello!"
    }
    
    private func pointlessFunction() {
        // does a reviewer notice that this function is pointless?
        var something = 0
        something = something + 1
    }
}
