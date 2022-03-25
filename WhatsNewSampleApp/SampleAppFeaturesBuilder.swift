//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation
import WhatsNew

let featuresBuilder = FeaturesBuilder(
    imageName: "bell",
    title: "New notifications system",
    subtitle: "Siri suggests events foud in Mail, Messages, and Safari, so you can add them easily, such as flight reservations and hotel bookings."
).adding(
    imageName: "clock",
    title: "Time to Leave",
    subtitle: "Calendar uses Apple Maps to look up, location, traffic conditions, and transit options to tell you when it's time to leave."
).adding(
    imageName: "location",
    title: "Location Suggestions",
    subtitle: "Calendar suggests locations based on your past events and significant locations."
)
