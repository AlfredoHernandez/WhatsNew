//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import SwiftUI
import WhatsNew

struct WelcomeView: View {
    @State var displayWhatsNew = true

    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text("Welcome to What's New sample app! 😎🤟")
                    .frame(alignment: .center)
                    .font(.title)
                Spacer()
                Button(action: { displayWhatsNew.toggle() }) {
                    Text("Show Whats New")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.accentColor)
                        .cornerRadius(8)
                }.padding()
            }
        }.sheet(isPresented: $displayWhatsNew, content: {
            WhatsNew(title: "Maps", features: [
                .init(
                    imageName: "bell",
                    title: "New notifications system",
                    subtitle: "Siri suggests events foud in Mail, Messages, and Safari, so you can add them easily, such as flight reservations and hotel bookings."
                ),
                .init(
                    imageName: "clock",
                    title: "Time to Leave",
                    subtitle: "Calendar uses Apple Maps to look up, location, traffic conditions, and transit options to tell you when it's time to leave."
                ),
                .init(
                    imageName: "location",
                    title: "Location Suggestions",
                    subtitle: "Calendar suggests locations based on your past events and significant locations."
                ),
            ], onDismiss: { displayWhatsNew.toggle() })
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomeView()
            WelcomeView()
                .preferredColorScheme(.dark)
        }
    }
}
