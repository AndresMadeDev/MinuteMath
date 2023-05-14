//
//  ContentView.swift
//  MinuteMath
//
//  Created by Andres Made on 5/13/23.
//

import SwiftUI

struct ContentView: View {
    let columns = [
           GridItem(.flexible()),
           GridItem(.flexible()),
       ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 20)  {
            ForEach(0 ..< 4) { item in
                AnswerButton(number: 3)
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
