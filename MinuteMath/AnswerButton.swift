//
//  AnswerButton.swift
//  MinuteMath
//
//  Created by Andres Made on 5/13/23.
//

import SwiftUI

struct AnswerButton: View {
    var number: Int
    
    
    var body: some View {
        Text("\(number)")
            .frame(height: 100)
            .frame(maxWidth: .infinity)
            .font(.system(size: 50))
            .minimumScaleFactor(0.50)
            .fontWeight(.bold)
            .padding()
            .foregroundColor(.white)
            .background(Color.cyan)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
    }
}

struct AnswerButton_Previews: PreviewProvider {
    static var previews: some View {
        AnswerButton(number: 9)
    }
}
