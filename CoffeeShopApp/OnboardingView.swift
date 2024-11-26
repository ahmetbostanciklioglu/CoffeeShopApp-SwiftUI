import SwiftUI

struct OnboardingView: View {
    
    @State private var navigateToHome = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                Rectangle()
                    .ignoresSafeArea()
            
                VStack {
                    Image("ImageOnboarding")
                        .resizable()
                        .frame(height: 536)
                        .aspectRatio(contentMode: .fit)
                        .clipped()
                    Spacer()
                }
                .ignoresSafeArea()
                    
                VStack {
                    Spacer()
                    Text("Fall in Love with\nCoffee in Blissfull\n Delight!")
                        .font(.system(size: 32))
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .kerning(3.5)
                        .padding(.horizontal,24)
                        .padding(.vertical, 8)
                    
                    Text("Welcome to our coxy coffee corner where\nevery cup is a delightful for you")
                        .font(.system(size: 14, weight: .regular))
                        .fontWeight(.regular)
                        .foregroundStyle(.lighter)
                        .multilineTextAlignment(.center)
                        .kerning(1.2)
                        .padding(.horizontal)
                    
                    Button {
                        navigateToHome = true
                    } label: {
                        Text("Get Started")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, minHeight: 56)
                            .background(.buttonBG)
                            .cornerRadius(10)
                            .padding(.horizontal, 24)
                    }
                    .padding(.vertical, 32)
                    .padding(.bottom, 40)
                }
            }
            .navigationDestination(isPresented: $navigateToHome) {
                HomeView()
            }
        }
    }
}


#Preview {
    OnboardingView()
}
