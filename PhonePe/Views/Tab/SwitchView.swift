//
//  SwitchView.swift
//  PhonePe
//
//  Created by JD on 27/08/20.
//

import SwiftUI

struct SwitchView: View {
    var body: some View {
        List {
            ForEach(0..<10, id: \.self) { _ in
                NavigationLink(destination: Text("Details")) {
                    HStack(spacing: 16) {
                        Color.theme
                            .frame(width: 40, height: 40)
                            .cornerRadius(20)
                        Text("Food")
                    }
                }
            }
            
        }
    }
}

struct SwitchView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchView()
    }
}
