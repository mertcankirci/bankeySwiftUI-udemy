//
//  BankingView.swift
//  Rebank
//
//  Created by Mertcan Kırcı on 23.03.2023.
//

import SwiftUI

struct BankingView: View {
    
    @EnvironmentObject var networkService : NetworkService
    
    var body: some View {
        VStack {
            HStack(alignment: .top){
                Color.red
            }
            .frame(maxWidth: UIScreen.screenWidth, maxHeight: UIScreen.screenHeight/5)
            ScrollView{
                VStack(alignment: .leading) {
                    Text("Coin names       Coin Prices")
                        .foregroundColor(.blue)
                        .font(.headline)
                    ForEach(networkService.banking) { bank in
                        HStack {
                            Text(bank.currency)
                                .font(.footnote)
                                .padding()
                            Text(bank.price)
                                .bold()
                                
                        }
                    }
                    
                    
                }
            }
            .frame(maxWidth: UIScreen.screenWidth, maxHeight: .infinity)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all)
        .onAppear {
            networkService.fetch()
        }
    }
        
        
}

struct BankingView_Previews: PreviewProvider {
    static var previews: some View {
        BankingView()
            .environmentObject(NetworkService())
    }
}
