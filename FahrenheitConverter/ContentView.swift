//
//  ContentView.swift
//  FahrenheitConverter
//
//  Created by Jacob Conner on 2/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var celsius = 0.0;
    @State private var fahrenheit = 0.0;
    
    let formatter: NumberFormatter = {
         let formatter = NumberFormatter()
         formatter.numberStyle = .decimal
         return formatter
     }()
    
    var body: some View {
        VStack {
            HStack(alignment: .center){
                Text("Temperature Converter").font(.headline)
            }
            HStack{
                Text("Celsius:").padding()
                TextField("", value: $celsius, formatter: formatter).padding()
               
            }
            HStack{
                Text("Fahrenheit:").padding()
                TextField("", value: $fahrenheit, formatter: formatter).padding()
            }
            HStack{
                Button("Convert to Celsius"){
                    self.celsius = Double( FahrenheitConverterWrapper().convert(toCelsius: Float(self.fahrenheit)))
                }
                Button("Convert to Fahrenheit"){
                    self.fahrenheit = Double(FahrenheitConverterWrapper().convert(toFahrenheit: Float(self.celsius)))
                }
                Button("Reset"){
                    self.fahrenheit = 0;
                    self.celsius = 0;                 }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
