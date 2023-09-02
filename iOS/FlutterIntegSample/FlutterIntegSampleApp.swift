// FlutterIntegSampleApp.swift, created in 2023 for Ember

import SwiftUI

@main
struct FlutterIntegSampleApp: App {
    @StateObject var flutterDependencies = FlutterDependencies()
    
    var body: some Scene {
        WindowGroup {
            ScrollView(.vertical) {
                VStack {
                    Card {
                        FlutterCard()
                    }
                }
                .padding(.horizontal, 24)
                .environmentObject(flutterDependencies)
            }
        }
    }
}
