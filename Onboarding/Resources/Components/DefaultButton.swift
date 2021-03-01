//
//  DefaultButton.swift
//  Onboarding
//
//  Created by Murilo Medeiros on 01/03/21.
//

import SwiftUI

struct DefaultButton: View {
    var title: String
    var action: () -> Void?
    
    var body: some View {
        Button(action: {
            action()
        }) {
            Text("\(title)")
                .font(.custom(UIKit.Font.regular, size: 16))
                .foregroundColor(UIKit.ui01)
                .frame(width: 280.0, height: 48.0)
                .background(RoundedRectangle(cornerRadius: 100).fill(UIKit.brand01))
        }
    }
}

struct DefaultButton_Previews: PreviewProvider {
    static var previews: some View {
        DefaultButton(title: "Testando", action: {})
    }
}
