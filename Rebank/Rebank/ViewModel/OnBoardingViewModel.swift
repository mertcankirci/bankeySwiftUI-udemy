//
//  OnBoardingViewModel.swift
//  Rebank
//
//  Created by Mertcan Kırcı on 20.03.2023.
//

import SwiftUI

struct OnBoardingViewModel: Identifiable, Hashable {
      let id: Int
      let objectImage: String
      let primaryText: String
        

      static let list: [OnBoardingViewModel] = [
          OnBoardingViewModel(id: 0, objectImage: "delorean", primaryText: "Bankey is faster , easier to use and has a brand new look and feel that we will make you feel like you are back in 1989"),
          OnBoardingViewModel(id: 1, objectImage: "world", primaryText: "Move your money around the world quickly and safely"),
          OnBoardingViewModel(id: 2, objectImage: "thumbs", primaryText: "Learn more at www.bankey.com")
      ]
    
  }

