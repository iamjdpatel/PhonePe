//
//  SwitchView.swift
//  PhonePe
//
//  Created by JD on 27/08/20.
//

import SwiftUI

struct SwitchView: View {
    private let switches: [PeSwitch] = PeSwitch.switches
    var body: some View {
        List {
            ForEach(switches, id: \.id) { peSwitch in
                NavigationLink(destination: Text("Details")) {
                    HStack(spacing: 16) {
                        Image(systemName: peSwitch.image)
                            .font(.system(size: 18, weight: .bold))
                            .frame(width: 40, height: 40)
                            .background(Color.theme)
                            .cornerRadius(20)
                            .foregroundColor(.white)
                        
                        Text(peSwitch.name)
                    }
                    .padding(.vertical, 5)
                }
            }
            Section {
                SwitchAppsView()
                    .listRowInsets(EdgeInsets())
            }
            
        }.listStyle(GroupedListStyle())
    }
}

struct SwitchView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchView()
            .preferredColorScheme(.dark)
    }
}

struct PeSwitch {
    let id = UUID()
    let name: String
    let image: String
    
    static let switches = [
        PeSwitch(name: "Food", image: "tuningfork"),
        PeSwitch(name: "Games", image: "gamecontroller"),
        PeSwitch(name: "Grocery", image: "square.stack.3d.up"),
        PeSwitch(name: "Health & Fitness", image: "cross.case"),
        PeSwitch(name: "Shopping", image: "bag"),
        PeSwitch(name: "Travel & Taxi", image: "car"),
        PeSwitch(name: "Services, Content & More", image: "newspaper")
    ]
}
