//
//  ContentView.swift
//  Onboarding
//
//  Created by Murilo Medeiros on 01/03/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()
    @State var isPresenting: Bool = false
    @State private var selectedItem: Int = 0
    @State var isActive: Bool = false

    var body: some View {
        VStack {
                  Spacer()
                  ZStack(alignment: .center) {
                      VStack {
                          TabView(selection: $selectedItem) {
                              ForEach(viewModel.cards) { card in
                                  VStack(spacing: 56) {
                                      Image(card.image)
                                          .resizable()
                                          .scaledToFit()
                                          .frame(width: 272, height: 248)
                                      VStack(spacing: 8) {
                                          Text("\(card.title)")
                                              .font(.custom(UIKit.Font.bold, size: 21))
                                              .foregroundColor(UIKit.text01)
                                              .lineSpacing(0.01)
                                          Text("\(card.text)")
                                              .font(.custom(UIKit.Font.regular, size: 13))
                                              .lineSpacing(0.02)
                                              .foregroundColor(UIKit.text02)
                                              .multilineTextAlignment(.center)
                                      }
                                  }
                              }
                          }
                          .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                      }
                      .frame(
                          minWidth: 0,
                          maxWidth: .infinity,
                          minHeight: 0,
                          maxHeight: 380
                      )
                      TabViewIndexDisplay(length: viewModel.cards.count, activeIndex: selectedItem)
                          .padding(.top, 200)
                  }
                  Spacer()
                  Spacer()
                  DefaultButton(title: ContentViewLocalizable().buttonTitle, action: {
                      self.isActive = true
                  })
              }
              .frame(
                  minWidth: 0,
                  maxWidth: .infinity,
                  minHeight: 0,
                  maxHeight: .infinity,
                  alignment: .center
              )
              .padding(.vertical, 32)
              .padding(.horizontal, 16)
              .navigationBarHidden(true)
              .background(UIKit.ui01.ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
