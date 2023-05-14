//
//  ContentView.swift
//  MinuteMath
//
//  Created by Andres Made on 5/13/23.
//

import SwiftUI

struct MathScreen: View {
    @EnvironmentObject var viewModel: ViewModel
    
    let columns = [
           GridItem(.flexible()),
           GridItem(.flexible()),
       ]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TopView(firstNumber: viewModel.firstNumber,
                    secondNumber: viewModel.secondNumber)
            
            VStack {
                LazyVGrid(columns: columns, spacing: 10)  {
                    ForEach(0 ..< 4) { item in
                        AnswerButton(number: 3)
                            .padding(10)
                            .shadow(color: .cyan.opacity(0.3), radius: 5, x: 10, y: 10)
                    }
                }
                .padding(.bottom, 75)
                
                .padding(.horizontal)
            }
            
            Spacer()
        }
        
        .ignoresSafeArea()
    }
}

struct MathScreen_Previews: PreviewProvider {
    static var previews: some View {
        MathScreen()
    }
}

struct TopView: View {
    var timer: Int = 60
    var firstNumber: Int
    var secondNumber: Int
    
    var body: some View {
        ZStack(alignment: .bottom) {
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.cyan)
                .shadow(color: .cyan.opacity(0.3), radius: 10, x: 10, y: 10)
            VStack(spacing: 30) {
                Text("\(timer)")
                    .font(.system(size: 150, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                
                Text("\(firstNumber) + \(secondNumber)")
                    .font(.system(size: 50))
                    .bold()
                    .foregroundColor(.white)
            }.padding(50)
            
        }.offset(y: -450)
    }
}
