// Created by Adam Kaum on 11.05.2024


import SwiftUI


final class FrameworkGreedViewModel: ObservableObject {
     
    var selectedFramework: Framework? {
       didSet {
            isShowingDetailView = true
        }
    }
    
    
    @Published var isShowingDetailView = false
    
}
