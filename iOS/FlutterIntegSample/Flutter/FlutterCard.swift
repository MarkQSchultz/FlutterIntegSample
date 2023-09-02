// FlutterCard.swift, created in 2023 for Ember

import SwiftUI
import Flutter

struct FlutterCardViewController: UIViewControllerRepresentable {
    
    @EnvironmentObject var flutterDependencies: FlutterDependencies
    
    func makeUIViewController(context: Context) -> FlutterViewController {
        let vc = FlutterViewController(
            engine: flutterDependencies.cardEngine,
            nibName: nil,
            bundle: nil)
        return vc
    }
    
    func updateUIViewController(_ uiViewController: FlutterViewController, context: Context) {
        
    }
}

struct FlutterCard: View {
    @EnvironmentObject var flutterDependencies: FlutterDependencies
    
    var body: some View {
        FlutterCardViewController()
    }
}

struct FlutterCard_Previews: PreviewProvider {
    static var previews: some View {
        FlutterCard()
    }
}
