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
    
    var body: some View{
        VStack(spacing: 24){
            
            Text("Tip Calculator")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Enter bill amount here", text: $billAmount)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
                .frame(maxWidth: 300)
            
            HStack(spacing: 16){
                
            }
        }
    }
}

#Preview {
    ContentView()
}
