//
//  Color+EXT.swift
//  MinuteMath
//
//  Created by Andres Made on 5/13/23.
//

import SwiftUI

extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
