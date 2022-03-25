//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import SwiftUI

struct WhatsNewItemView: View {
    let whatsNewItem: WhatsNewItemViewModel

    init(_ whatsNewItem: WhatsNewItemViewModel) {
        self.whatsNewItem = whatsNewItem
    }

    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(systemName: whatsNewItem.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 48, height: 48, alignment: .center)
                .foregroundColor(.accentColor)
            VStack(alignment: .leading, spacing: 4) {
                Text(whatsNewItem.title)
                    .font(.title3)
                    .bold()
                Text(whatsNewItem.subtitle)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct WhatsNewItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            let viewModelA = WhatsNewItemViewModel(
                imageName: "bell",
                title: "New notifications system",
                subtitle: "Siri suggests events foud in Mail, Messages, and Safari, so you can add them easily, such as flight reservations and hotel bookings."
            )

            let viewModelB = WhatsNewItemViewModel(
                imageName: "location",
                title: "Location Suggestions",
                subtitle: "Calendar suggests locations based on your past events and significant locations."
            )
            WhatsNewItemView(viewModelA)
                .previewLayout(.sizeThatFits)
            WhatsNewItemView(viewModelB)
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
