import SwiftUI

struct HomeView: View {
    var body: some View{
        
        ZStack(alignment: .top) {
            Rectangle()
                .frame(height: 280)
                .background(.black)
                .ignoresSafeArea()
            
            Spacer()
            
            VStack(spacing: 16) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("Location")
                            .font(.system(size: 14))
                            .foregroundStyle(.gray)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text("Bilzen, Tanjungbalai")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Image(systemName: "chevron.down")
                            .foregroundStyle(.gray)
                        
                        Spacer()
                    }
                }
                .padding(.horizontal)
                
                HStack(spacing: 12) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.gray)
                        Text("Search Coffee")
                            .foregroundStyle(.gray)
                        Spacer()
                    }
                    .padding()
                    .background(Color(.searchBG))
                    .cornerRadius(10)
                    
                    Button(action: {}) {
                        Image(systemName: "slider.horizontal.3")
                            .foregroundStyle(.white)
                            .padding()
                            .background(.buttonBG)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                
                ZStack {
                    Image("CoffeeCupImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity, minHeight: 150)
                        .cornerRadius(16)
                    
                    HStack(alignment: .top) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Promo")
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                                .padding(6)
                                .background(.red)
                                .foregroundStyle(.white)
                                .cornerRadius(10)
                            
                            Text("Buy one get\none FREE")
                                .font(.system(size: 24))
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                        }
                        .padding(.leading, 24)
                        
                        Spacer()
                    }
                    .offset(x: 0 , y: -10)
                }
                .padding(.horizontal, 24)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(["All Coffee", "Macchiato", "Latte", "Americano"], id: \.self) { category in
                            Text(category)
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundStyle(category == "All Coffee" ? .white : .gray)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 16)
                                .background(category == "All Coffee" ? .buttonBG : .clear)
                                .cornerRadius(6)
                        }
                    }
                    .padding(.horizontal, 24)
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 7) {
                        ForEach(1..<5) { index in
                            NavigationLink {
                                DetailView(coffeeIndex: index)
                            } label: {
                                VStack(spacing: 3) {
                                    Image("CoffeeImage\(index)")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(maxWidth: .infinity, minHeight: 150)
                                        .cornerRadius(10)
                                        .padding(.horizontal,8)
                                        .padding(.top, 8)
                                    
                                    VStack(alignment: .leading, spacing: 8) {
                                        Text("Caffee Mocha")
                                            .font(.system(size: 16))
                                            .foregroundStyle(.black)
                                            .fontWeight(.bold)
                                        
                                        Text("Deep Foam")
                                            .font(.system(size: 14))
                                            .foregroundStyle(.gray)
                                            .offset(x: 0, y: -4)
                                        
                                        HStack {
                                            Text("$ 4.53")
                                                .font(.system(size: 18))
                                                .foregroundStyle(.black)
                                                .fontWeight(.semibold)
                                                .kerning(1)
                                            
                                            Spacer()
                                            
                                            Button(action: {}) {
                                                Image(systemName: "plus")
                                                    .padding()
                                                    .frame(width: 32, height: 32)
                                                    .background(.buttonBG)
                                                    .foregroundStyle(.white)
                                                    .cornerRadius(8)
                                            }
                                        }
                                        .padding(.bottom, 8)
                                    }
                                    .padding(.horizontal, 8)
                                    
                                }
                                .background(.white)
                                .cornerRadius(20)
                                .shadow(radius: 2)
                                .padding(8)
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                }
                
                Spacer()
                
                HStack {
                    ForEach(["house.fill", "heart", "bag", "bell"], id: \.self) { icon in
                        Spacer()
                        Image(systemName: icon)
                            .font(.system(size: 24))
                            .foregroundStyle(icon == "house.fill" ? .buttonBG : .gray)
                        
                        Spacer()
                    }
                }
                .background(.white)
                .cornerRadius(20)
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}


#Preview {
    HomeView()
}
