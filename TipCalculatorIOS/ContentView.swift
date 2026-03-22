//
//  ContentView.swift
//  TipCalculatorIOS
//
//  Created by Elliott Vaughn-Truesdale on 3/19/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var billAmount: String = ""
    @State private var resultText: String = ""
    
    var body: some View {
        VStack(spacing: 24) {
            
            Text("Tip Calculator")
                .font(.largeTitle)
                .fontWeight(.bold)
            
        
            TextField("Enter bill amount", text: $billAmount)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad) 
                .frame(maxWidth: 300)
            
            
            HStack(spacing: 16) {
                TipButton(label: "15%") { calculateTip(percent: 0.15) }
                TipButton(label: "18%") { calculateTip(percent: 0.18) }
                TipButton(label: "20%") { calculateTip(percent: 0.20) }
            }
            
            
            if !resultText.isEmpty {
                Text(resultText)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
            }
            
            Spacer()
        }
        .padding()
    }
    
    
    func calculateTip(percent: Double) {
        
        guard let bill = Double(billAmount) else {
            resultText = "Please enter a valid amount."
            return
        }
        
        let tip   = bill * percent
        let total = bill + tip
        
        
        resultText = String(format: "Tip: $%.2f, Total: $%.2f", tip, total)
    }
}


struct TipButton: View {
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 80, height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(12)
        }
    }
}
