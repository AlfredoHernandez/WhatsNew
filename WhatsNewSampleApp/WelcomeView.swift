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
            WhatsNew(title: "Maps", featuresBuilder: featuresBuilder, onDismiss: { displayWhatsNew.toggle() })
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
