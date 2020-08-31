//
//  SwitchAppsView.swift
//  PhonePe
//
//  Created by JD on 31/08/20.
//

import SwiftUI

struct SwitchAppsView: View {
    private let rows = PeSwitchApp.apps
    
    var body: some View {
        VStack {
            Text("EXCLUSIVE OFFERS")
                .fontWeight(.heavy)
                .padding()
                .background(Color.yellow)
                .cornerRadius(25)
                .foregroundColor(.theme)
            
            Text("ON SWITCH")
                .fontWeight(.heavy)
                .padding()
                .background(Color.purple.opacity(0.7))
                .cornerRadius(25)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(rows, id: \.id) { row in
                        ZStack {
                            Color(UIColor.secondarySystemGroupedBackground)
                                .cornerRadius(10)
                            VStack(spacing: 10) {
                                Image(row.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height: 50)
                                    .background(Color.red)
                                    .cornerRadius(15)
                                Text(row.name)
                                    .font(.caption2)
                                    .foregroundColor(.gray)
                                Text(row.off)
                                    .font(.callout)
                                    .frame(width: 80, height: 40)
                                    .multilineTextAlignment(.center)
                                Text("OPEN")
                                    .font(.footnote)
                                    .padding(.vertical, 3)
                                    .padding(.horizontal, 12)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 40)
                                            .stroke(Color.theme, lineWidth: 1)
                                    )
                                    .foregroundColor(.theme)
                                    .padding(.vertical)
                            }.padding(.vertical)
                        }
                        .frame(width: 130, height: 220)
                    }.padding(.horizontal, 5)
                }.padding()
            }
        }.padding(.vertical)
        .background(Color(UIColor.systemGroupedBackground))
    }
}

struct SwitchAppsView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchAppsView()
            .preferredColorScheme(.dark)
    }
}

struct PeSwitchApp {
    let id = UUID()
    let name: String
    let image: String
    let off: String
    
    static let apps = [
        PeSwitchApp(name: "OvenStory",  image: "img_os", off: "₹100 OFF + ₹50"),
        PeSwitchApp(name: "KFC",        image: "img_kfc", off: "₹50 OFF + ₹50"),
        PeSwitchApp(name: "redBus",     image: "img_rb", off: "15% OFF"),
        PeSwitchApp(name: "Licious",    image: "img_l", off: "Get 20% OFF"),
        PeSwitchApp(name: "DocsApp",    image: "img_da", off: "50% OFF + ₹30"),
        PeSwitchApp(name: "1mg",        image: "img_1mg", off: "₹16% OFF"),
        PeSwitchApp(name: "MakeMyTrip", image: "img_mmt", off: "Up to ₹1500 OFF")
    ]
    
}
