//
//  ContentView.swift
//  SecondConverter
//
//  Created by Jeric Hernandez on 1/25/24.
//

import SwiftUI

struct ContentView: View {
    @State private var seconds: Double = 3.0

    // Computed properties
    private var milliseconds: Int {
        Int(seconds * 1_000)
    }

    private var microseconds: Int {
        Int(seconds * 1_000_000)
    }

    var body: some View {
        Form {
            Section("Seconds") {
                TextField("Enter Seconds", value: $seconds, format: .number)
                    .keyboardType(.decimalPad)
            }
            Section("milliseconds") {
                Text("\(milliseconds)")
            }
            Section("microseconds") {
                Text("\(microseconds)")
            }
        }
    }
}

#Preview {
    ContentView()
}
