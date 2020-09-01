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
            VStack(spacing: 8) {
                MoneyTransfersView()
                QuickLinksView()
                OffersView()
                RechargeAndPayBillsView()
            }.padding(8)
        }
        .background(Color(UIColor.systemGroupedBackground))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarTitle("Home", displayMode: .inline)
        }
//        .preferredColorScheme(.dark)
    }
}

struct MoneyTransfersView: View {
    private let images = [
        "arrow.up.right",
        "building.columns",
        "person",
        "questionmark"
    ]
    
    private let data = [
        "To Contacts",
        "To Account",
        "To Self",
        "Bank Balance"
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Money Transfers")
                .font(.footnote)
                .bold()
                .padding(5)
            HStack {
                ForEach(0..<4, id: \.self) { i in
                    VStack(spacing: 8) {
                        Image(systemName: images[i])
                            .font(.system(size: 23))
                            .frame(width: 50, height: 50)
                            .background(Color.theme)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                        Text(data[i])
                            .font(.caption2)
                            .frame(maxWidth: .infinity)
                    }
                }
            }
        }
        .padding(8)
        .modifier(ButtonBG())
        .cornerRadius(5)
    }
}


struct QuickLinksView: View {
    private let images = [
        "wallet.pass",
        "staroflife",
        "gamecontroller",
        "bookmark"
    ]
    
    private let data = [
        "Wallet Topup",
        "Coronavirus Insurance",
        "Play Games",
        "Book"
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Quick Links")
                .font(.footnote)
                .bold()
                .padding(5)
            HStack(alignment: .top) {
                ForEach(0..<4, id: \.self) { i in
                    VStack(spacing: 8) {
                        Image(systemName: images[i])
                            .font(.system(size: 23))
                            .frame(width: 50, height: 50)
                            .background(Color.theme)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                        Text(data[i])
                            .font(.caption2)
                            .frame(maxWidth: .infinity)
                            .multilineTextAlignment(.center)
                    }
                }
            }
        }
        .padding(8)
        .modifier(ButtonBG())
        .cornerRadius(5)
    }
}


struct OffersView: View {
    var body: some View {
        HStack {
            VStack(spacing: 5) {
                Image(systemName: "percent")
                    .font(.system(size: 20))
                    .frame(width: 60, height: 60)
                    .background(Color(UIColor(red: 228/255, green: 28/255, blue: 88/255, alpha: 1.0)))
                    .foregroundColor(.white)
                    .cornerRadius(30)
                Text("View All")
                    .font(.footnote)
                Text("OFFERS")
                    .font(.body)
                    .bold()
                    .frame(maxWidth: .infinity)
            }
            .padding()
            Divider()
            VStack(spacing: 5) {
                Image(systemName: "gift")
                    .font(.system(size: 20))
                    .frame(width: 60, height: 60)
                    .background(Color(UIColor(red: 242/255, green: 72/255, blue: 36/255, alpha: 1.0)))
                    .foregroundColor(.white)
                    .cornerRadius(30)
                Text("View My")
                    .font(.footnote)
                Text("REWARDS")
                    .font(.body)
                    .bold()
                    .frame(maxWidth: .infinity)
            }
            Divider()
            VStack(spacing: 5) {
                Image(systemName: "arrowshape.turn.up.right.fill")
                    .font(.system(size: 20))
                    .frame(width: 60, height: 60)
                    .background(Color(UIColor(red: 146/255, green: 33/255, blue: 164/255, alpha: 1.0)))
                    .foregroundColor(.white)
                    .cornerRadius(30)
                Text("Refer & Earn")
                    .font(.footnote)
                Text("₹ 100")
                    .font(.body)
                    .bold()
                    .frame(maxWidth: .infinity)
            }
        }
        .padding(8)
        .modifier(ButtonBG())
        .cornerRadius(5)
    }
}

struct RechargeAndPayBillsView: View {
    private let layout = [GridItem(.flexible()), GridItem(.flexible()),
                          GridItem(.flexible()), GridItem(.flexible())]
    var data: [String] = ["1"]

    var body: some View {
        LazyVGrid(columns: layout, spacing: 8) {
            ForEach(data, id: \.self) { item in
                    ZStack {
                        Color(UIColor.secondarySystemGroupedBackground)
                            .cornerRadius(5)
                        VStack(spacing: 20) {
                            Text(item)
                                .font(.caption)
                                .foregroundColor(.primary)
                                .bold()
                        }
                        .padding()
                    }
            }
        }
        .padding(8)
    }
}

