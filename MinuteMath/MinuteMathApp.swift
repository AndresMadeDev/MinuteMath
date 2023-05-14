//
//  MinuteMathApp.swift
//  MinuteMath
//
//  Created by Andres Made on 5/13/23.
//

import SwiftUI

@main
struct MinuteMathApp: App {
    @StateObject var viewModel = ViewModel()
    var body: some Scene {
        WindowGroup {
            MathScreen()
                .environmentObject(viewModel)
        }
    }
}
