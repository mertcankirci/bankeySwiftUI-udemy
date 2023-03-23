//
//  OnBoardingView.swift
//  Rebank
//
//  Created by Mertcan Kırcı on 23.03.2023.
//

import SwiftUI

struct OnBoardingView: View {
    @State private var currentTab: Int = 0
    @Binding var shouldShowOnBoarding : Bool 
    
    var body: some View {
        TabView(selection: $currentTab) {

                ForEach(OnBoardingViewModel.list) { viewData in
                    OnBoarding(data: viewData, shouldShowOnBoarding: $shouldShowOnBoarding)
                        .tabItem({
                            Text("\(viewData.id)")
                        })
                        .tag(viewData.id)

                }
        }
        
        
    }
}

//struct OnBoardingView_Previews: PreviewProvider {
//    static var previews: some View {
//        OnBoardingView(shouldShowOnBoarding: true)
//    }
//}
