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
                HStack {
                    Image(systemName: "sparkles")
                        .resizable()
                        .frame(width: 64, height: 64, alignment: .center)
                    Text(NSLocalizedString("welcome", comment: "welcome"))
                        .frame(alignment: .center)
                        .font(.title)
                }
                Spacer()
                Button(action: { displayWhatsNew.toggle() }) {
                    Text(NSLocalizedString("show_me_whats_new", comment: "show_me_whats_new"))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.accentColor)
                        .cornerRadius(8)
                }.padding()
            }
            .padding()
        }.sheet(isPresented: $displayWhatsNew, content: {
            whatsNew(with: "What's New App", features: featuresBuilder, onDismiss: { displayWhatsNew.toggle() })
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
