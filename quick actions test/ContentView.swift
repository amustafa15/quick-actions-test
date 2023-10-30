//
//  ContentView.swift
//  quick actions test
//
//  Created by Ameen Mustafa on 10/24/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstScreen: Bool = false
    @State var secondScreen: Bool = false
    
    @EnvironmentObject var qaService: QAService
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        NavigationStack{
            VStack {
                Text("Main View")
                    .background(Color.white)
                NavigationLink(destination: FirstView(), isActive: $firstScreen) {
                    Button {
                        firstScreen = true
                    } label: {
                        Text("first view")
                    }
                }.isDetailLink(false)
                
                NavigationLink(destination: SecondView(), isActive: $secondScreen) {
                    Button {
                        secondScreen = true
                    } label: {
                        Text("second view")
                    }
                }.isDetailLink(false)
                
            }
            .onChange(of: scenePhase) { newVal in
                switch newVal {
                case .active:
                    performAction()
                default:
                    break
                }
            }
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.green)
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    func performAction() {
        guard let action = qaService.action else { return }
        
        switch action {
        case .firstView:
            print("in performAction first")
            firstScreen = true
        case .secondView:
            print("in performAction second")
            secondScreen = true
        }
        
        qaService.action = nil
    }
}


//
//#Preview {
//    ContentView()
//}
