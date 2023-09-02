// FlutterDependencies.swift, created in 2023 for Ember

import Flutter
import FlutterPluginRegistrant

class FlutterDependencies: ObservableObject {
    let cardEngine = FlutterEngine(name: "CardEngine")
    
    init() {
        cardEngine.run(withEntrypoint: "card", libraryURI: "package:flutter_sample/my_card.dart")
        GeneratedPluginRegistrant.register(with: cardEngine);
    }
}
