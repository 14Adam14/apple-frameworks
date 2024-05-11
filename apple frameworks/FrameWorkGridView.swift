// Adam Kaum on 11.05.2024


import SwiftUI

struct FrameWorkGridView: View {
    
    
    @StateObject var viewModel = FrameworkGreedViewModel()
    
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                .navigationTitle(" Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                        isShowingDetailView: $viewModel.isShowingDetailView)
                }
            }
            
        }
    
    }
}


#Preview {
    FrameWorkGridView()
        .preferredColorScheme(.dark)
}



struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
    
    
    
  
}
