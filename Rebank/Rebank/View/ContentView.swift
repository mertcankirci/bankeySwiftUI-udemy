//
//  ContentView.swift
//  Rebank
//
//  Created by Mertcan Kırcı on 19.03.2023.
//

import SwiftUI

struct ContentView: View {

    @State var isTabView: Bool = true
    @AppStorage("shouldShowOnboarding") var shouldShowOnboarding = true
    
    
    var body: some View {
        
        NavigationView {
            LoginView()
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding) {
            OnBoardingView(shouldShowOnBoarding: $shouldShowOnboarding)
        }
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
