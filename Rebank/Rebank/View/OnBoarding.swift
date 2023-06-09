//
//  OnBoarding.swift
//  Rebank
//
//  Created by Mertcan Kırcı on 20.03.2023.
//

import SwiftUI

struct OnBoarding: View {
    
    
    var data: OnBoardingViewModel
    @Binding var shouldShowOnBoarding : Bool
    @State private var isAnimating: Bool = false
    @State private var isPresenting: Bool = false
    
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Spacer()
                
                Image(data.objectImage)
                    .resizable()
                    .scaledToFit()
                    .offset(x: 0, y: 150)
                    .scaleEffect(isAnimating ? 1 : 0.9)
            
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Text(data.primaryText)
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color(red: 41 / 255, green: 52 / 255, blue: 73 / 255))
                Spacer()
                Button(action: {
                    isPresenting = true
                    shouldShowOnBoarding.toggle()
                }, label: {
                    Text("Get Started")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal, 50)
                        .padding(.vertical, 16)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(
                                    Color(
                                        red: 255 / 255,
                                        green: 115 / 255,
                                        blue: 115 / 255
                                    )
                                )
                        )
                })
                .shadow(radius: 10)
            }
            .onAppear(perform: {
                isAnimating = false
                withAnimation(.easeOut(duration: 0.5)) {
                    self.isAnimating = true
                }
            })
        }
    }
}

//struct OnBoarding_Previews: PreviewProvider {
//    @Binding var shouldShowOnBoarding : Bool
//    static var previews: some View {
//        OnBoarding(data: OnBoardingViewModel.list.first!, shouldShowOnBoarding: $shouldShowOnBoarding)
//    }
//}
