//
//  ContentViewModel.swift
//  Onboarding
//
//  Created by Murilo Medeiros on 01/03/21.
//

import Foundation

struct Card: Identifiable {
    let id: Int
    let title: String
    let image: String
    let text: String
}

class ContentViewModel: ObservableObject {
    @Published var cards: [Card]
    
    init() {
        self.cards = [
            Card(
                id: 0,
                title: ContentViewLocalizable().card1title,
                image: "onboarding1",
                text: ContentViewLocalizable().card1text
            ),
            Card(
                id: 1,
                title: ContentViewLocalizable().card2title,
                image: "onboarding2",
                text: ContentViewLocalizable().card2text
            ),
            Card(
                id: 2,
                title: ContentViewLocalizable().card3title,
                image: "onboarding3",
                text: ContentViewLocalizable().card2text
            )
        ]
    }
}   
