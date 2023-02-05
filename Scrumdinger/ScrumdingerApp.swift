//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 권정근 on 2023/02/05.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            // NavigationView 를 추가한 이유
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }

        }
    }
}
