//
//  HistoryView.swift
//  PhonePe
//
//  Created by JD on 27/08/20.
//

import SwiftUI

struct HistoryView: View {
    private let layout = [GridItem(.flexible())]
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(columns: layout) {
                    Section(header: Text("").padding()) {
                        ForEach(0..<59) { i in
                            HistoryCell()
                        }
                    }
                }
                .padding(.horizontal)
            }
            .background(Color(UIColor.systemGroupedBackground).edgesIgnoringSafeArea(.all))
            VStack {
                SortFilterView()
                    .frame(height: 40)
                    .background(BlurView())
                Spacer()
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HistoryView()
                .navigationTitle("History")
                .preferredColorScheme(.dark)
        }
    }
}


struct HistoryCell: View {
    private var paidTo = ["Super Market", "Big Bazaar", "DMart", "Madhuloka", "Pan wala", "Vegetables"].randomElement() ?? "Super Market"
    private var price = ["99", "299", "10", "500", "255", "67"].randomElement() ?? "99"
    private var bank = ["img_sbi", "img_icici", "img_hdfc"].randomElement() ?? "img_sbi"
    
    var body: some View {
        VStack(spacing: 16) {
            HStack(spacing: 16) {
                Image(systemName: "arrow.up.right")
                    .font(.system(size: 22))
                    .frame(width: 40, height: 40)
                    .background(Color.theme)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                VStack(alignment: .leading, spacing: 5) {
                    Text("Paid to")
                    Text(paidTo)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
                VStack {
                    Text("₹ \(price)")
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
                Image(bank)
                    .resizable()
                    .frame(width: 19, height: 19)
            }
        }
        .padding(15)
        .modifier(ButtonBG())
        .cornerRadius(8)
    }
}


struct SortFilterView: View {
    var body: some View {
        HStack {
            SortFilterButton(title: "Month")
            SortFilterButton(title: "Categories")
            Spacer()
            SortFilterButton(title: "Filters")
        }
        .padding(.horizontal)
    }
}

struct SortFilterButton: View {
    var title: String
    var body: some View {
        Button(action: {
            print("clicked")
        }) {
            Text(title)
                .font(.caption)
                .padding(.vertical, 5)
            Image(systemName: "arrowtriangle.down.fill")
                .resizable()
                .frame(width: 12, height: 8)
        }
        .foregroundColor(.gray)
        .buttonStyle(PlainButtonStyle())
        .padding(.horizontal, 16)
        .overlay(
            RoundedRectangle(cornerRadius: 40)
                .stroke(Color.gray, lineWidth: 1)
        )
    }
}
