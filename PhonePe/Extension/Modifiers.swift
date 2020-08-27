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


struct PhonePeNavigatinItems: ViewModifier {
    func body(content: Content) -> some View {
        content
            .navigationBarItems(leading:
                    HStack(spacing: 12) {
                        Image("img_jd")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 36, height: 36)
                            .cornerRadius(18)
                        VStack(alignment: .leading) {
                            Text("Your location")
                                .font(.caption2)
                            Text("Bengaluru")
                                .font(.body)
                        }
                        VStack {
                            Spacer()
                            Image(systemName: "arrowtriangle.down.fill")
                                .resizable()
                                .frame(width: 12, height: 8)
                        }.padding(.vertical, 7)
                    }
                , trailing:
                    HStack(spacing: 20) {
                        Image(systemName: "qrcode.viewfinder").imageScale(.large)
                        Image(systemName: "bell.fill").imageScale(.large)
                        Image(systemName: "questionmark.circle").imageScale(.large)
                    }
            )
    }
}
