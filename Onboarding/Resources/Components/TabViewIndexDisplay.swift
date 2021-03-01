//
//  TabViewIndexDisplay.swift
//  Onboarding
//
//  Created by Murilo Medeiros on 01/03/21.
//

import SwiftUI

struct TabViewIndexDisplay: View {
    let length: Int
    let activeIndex: Int
    
    var body: some View {
        HStack(alignment: .center) {
            ForEach(0..<length) { index in
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(
                        width: 32,
                        height: 4
                    )
                    .foregroundColor(index == activeIndex ? UIKit.brand01 : UIKit.ui04)
            }
        }
        .zIndex(1)
    }
}

struct TabViewIndexDisplay_Previews: PreviewProvider {
    static var previews: some View {
        TabViewIndexDisplay(length: 3, activeIndex: 0)
    }
}
