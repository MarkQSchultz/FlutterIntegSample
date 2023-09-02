// Card.swift, created in 2023 for Ember

import SwiftUI

struct Card<Content>: View where Content: View {
    var content: () -> Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 16, content: content)
        .frame(
            minWidth: .zero,
            maxWidth: .infinity
        )
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
        .background(
            RoundedRectangle(cornerRadius: 16)
                .foregroundStyle(.regularMaterial)
                .shadow(
                    color: .black.opacity(0.4),
                    radius: 5,
                    x: 0,
                    y: 3)
        )
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card {
            Text("Test")
        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}
