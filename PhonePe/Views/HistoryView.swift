//
//  HistoryView.swift
//  PhonePe
//
//  Created by JD on 27/08/20.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        List(0..<59) { i in
            HistoryCell()
        }.background(Color.red)
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
//            .preferredColorScheme(.dark)
    }
}


struct HistoryCell: View {
    var body: some View {
        VStack(spacing: 16) {
            HStack(spacing: 16) {
                Image(systemName: "arrow.up.right")
                    .font(.system(size: 25))
                    .frame(width: 40, height: 40)
                    .background(Color.theme)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                VStack(alignment: .leading, spacing: 5) {
                    Text("Paid to")
                    Text("Super Market, HSR")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack {
                    Text("$99")
                        .font(.title3)
                        .bold()
                    Spacer()
                }
            }
            HStack {
                Text("Yesterday")
                    .font(.caption2)
                    .foregroundColor(.gray)
                Spacer()
                Text("Debited from")
                    .font(.caption)
                Image(systemName: "chevron.up.circle.fill")
                    .imageScale(.small)
                    .foregroundColor(.blue)
            }
        }
        .padding(15)
    }
}
