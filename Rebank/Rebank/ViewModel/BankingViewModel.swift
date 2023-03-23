//
//  CryptoViewModel.swift
//  Rebank
//
//  Created by Mertcan Kırcı on 23.03.2023.
//

import SwiftUI

class NetworkService:ObservableObject {
   
    @Published var banking : [BankingModel] = []
   
   func fetch() {
       
       guard let url = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/K21-JSONDataSet/master/crypto.json") else {
           print("Sictim url sikintili")
           return
       }
       
       let request = URLRequest(url: url)
       
       let dataTask = URLSession.shared.dataTask(with: request) { data, response, error in
           if let error = error {
               print("Request error: \(error)")
           }
           guard let response = response as? HTTPURLResponse else {
               return
           }
           
           if response.statusCode == 200 {
               guard let data = data else {
                   print("DATADA SIKINTI VAR")
                   return
               }
               print("GIRDIM")
               do {
                   let decodedCryptos = try JSONDecoder().decode([BankingModel].self, from: data)
                   DispatchQueue.main.async {
                       for coin in decodedCryptos {
                           print(coin)
                           self.banking.append(coin)
                       }
                   }
                   print(decodedCryptos)
                   print(self.banking)
               } catch {
                   print(error)
               }
           }
           
           else {
               print("Response satus code :", response.statusCode)
           }
           
       }
       dataTask.resume()
   }
}
