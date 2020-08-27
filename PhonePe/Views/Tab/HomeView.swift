//
//  HomeView.swift
//  PhonePe
//
//  Created by JD on 27/08/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Money Transfers")
                HStack {
                    ForEach(0..<4, id: \.self) { _ in
                        VStack {
                            Color.theme
                                .frame(width: 40, height: 40)
                        }
                    }
                }
                
            }
                
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
        }
        .preferredColorScheme(.dark)
    }
}
