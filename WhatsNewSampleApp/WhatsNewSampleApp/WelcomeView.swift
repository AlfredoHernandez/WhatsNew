//
//  Copyright © 2023 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import SwiftUI
import WhatsNew

struct WelcomeView: View {
    @State var whatsNewContinueButtonTappedCount = 0
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
                Divider()
                VStack(alignment: .leading) {
                    Text("What's new continue button tapped count: \(whatsNewContinueButtonTappedCount)")
                        .bold()

                    Text("* Use the `didTapContinueButton` completion to handle an event when the What's New view is dissmissed")
                        .font(.callout)
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
            WhatsNewView(title: "What's New App (Develop)", features: featuresBuilder, didTapContinueButton: {
                whatsNewContinueButtonTappedCount += 1
            })
        })
        .navigationViewStyle(.stack)
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
