//
//  ContentView.swift
//  calc
//
//  Created by apple on 11/16/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentNumber: Double = 0
    
    var displyedString: String {
        return String(format: "%.2f", arguments: [currentNumber])
    }
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 20) {
            Spacer()
            
            Text(displyedString)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .lineLimit(3)
                .padding(.bottom, 64)
                .animation(.spring())
            
            HStack {
                NumberView(number: 1)
                Spacer()
                NumberView(number: 2)
                Spacer()
                NumberView(number: 3)
                Spacer()
                NumberView(number:.pi )
            }
            
            HStack {
                NumberView(number: 1)
                Spacer()
                NumberView(number: 2)
                Spacer()
                NumberView(number: 3)
                Spacer()
                NumberView(number: 4)
            }
            
            HStack {
                NumberView(number: 1)
                Spacer()
                NumberView(number: 2)
                Spacer()
                NumberView(number: 3)
                Spacer()
                NumberView(number: 4)
            }
            
            HStack {
                NumberView(number: 1)
                Spacer()
                NumberView(number: 2)
                Spacer()
                NumberView(number: 3)
                Spacer()
                NumberView(number: 4)
            }
        } .padding(32)
    }
}

struct NumberView: View {
    let number: Double
    
    var numberString: String {
        if number == .pi {
            return "n"
        }
        
        return String(Int(number))
    }
    
    var body: some View{
        Text(numberString)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(width: 64, height: 64)
            .background(Color.blue)
            .cornerRadius(20)
            .shadow(color: Color.blue.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:0 , y: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
