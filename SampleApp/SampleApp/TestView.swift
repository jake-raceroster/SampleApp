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
    
    private func goBackToWhereWeWere() {
        dismiss()
    }
}
