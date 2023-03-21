//
//  ContentView.swift
//  Rebank
//
//  Created by Mertcan Kırcı on 19.03.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var currentTab: Int = 0
    @State var isTabView: Bool = true
    @State var shouldShowOnboarding = true
     
    
    var body: some View {

            TabView(selection: $currentTab,
                    content:  {


                ForEach(OnBoardingViewModel.list) { viewData in
                    OnBoarding(data: viewData)
                        .tabItem({
                            Text("\(viewData.id)")
                        })
                        .tag(viewData.id)

                }
            })


    }
        
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
