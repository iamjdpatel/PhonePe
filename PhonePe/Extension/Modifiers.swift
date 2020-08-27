//
//  Modifiers.swift
//  PhonePe
//
//  Created by JD on 27/08/20.
//

import SwiftUI

struct ButtonBG: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color(UIColor(named: "themeButtonBG") ?? UIColor.secondarySystemBackground))
    }
}
