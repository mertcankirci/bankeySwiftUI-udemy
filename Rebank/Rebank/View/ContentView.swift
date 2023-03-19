//
//  ContentView.swift
//  Rebank
//
//  Created by Mertcan Kırcı on 19.03.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var currentTab = 0
    
    var body: some View {
        TabView(selection: $currentTab,
                content:  {
            
            
            ForEach(OnBoardingViewModel.list) { viewData in
                OnBoarding(data: viewData)
                .tag(viewData.id)
                
            }
        })
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        

        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
