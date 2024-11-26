import SwiftUI

struct DetailView: View {
    
    var coffeeIndex: Int
    @State private var selectedSize: String = "M"
    
    var body: some View {
        NavigationView {
            VStack {
                Image("detailImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity,minHeight: 202)
                    .clipped()
                    .shadow(radius: 10)
                    .padding(.bottom, 8)
                    .padding(.horizontal, 8)
                
                
                VStack(alignment: .leading, spacing: 14) {
                    HStack {
                        Text("Caffe Mocha")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                        HStack(spacing: 14) {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color(.systemGray6))
                                .frame(width: 44, height: 44)
                                .overlay {
                                    Image(systemName: "scooter")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                        .foregroundStyle(.buttonBG)
                                }
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color(.systemGray6))
                                .frame(width: 44, height: 44)
                                .overlay(
                                    Image(systemName: "leaf")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.buttonBG)
                                )
                            
                            // Üçüncü simge
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color(.systemGray6)) // Arka plan rengi
                                .frame(width: 44, height: 44)
                                .overlay(
                                    Image(systemName: "figure.mixed.cardio") // SF Symbol
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(.buttonBG)
                                )
                        }
                        .offset(y: 40)
                    }
                    
                    HStack {
                        Text("Ice/Hot")
                            .foregroundStyle(.gray)
                    }
                    .offset(y: -5)
                    
                    HStack {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.yellow)
                        Text("4.8")
                            .font(.headline)
                        Text("(230)")
                            .foregroundStyle(.gray)
                            .font(.subheadline)
                    }
                }
                .padding(.horizontal)
                
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 0.2)
                    .background(.lighter)
                    .padding(.horizontal, 36)
                    .padding(.vertical)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Description")
                        .font(.headline)
                    
                    Text("A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85 ml of fresh milk the fo...")
                        .foregroundStyle(.gray)
                        .font(.subheadline)
                        .truncationMode(.tail)
                        .tracking(1.3)
                    
                    Text("Read More")
                        .foregroundStyle(.buttonBG)
                        .font(.subheadline)
                        .offset(x: 260, y: -28)
                }
                .padding(.horizontal)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Size")
                        .font(.system(size: 16, weight: .semibold))
                    
                    HStack(spacing: 24) {
                        ForEach(["S", "M", "L"], id: \.self) { size in
                            Text(size)
                                .frame(maxWidth: .infinity, maxHeight:  41)
                                .background(selectedSize == size ? .mbg : Color.white)
                                .foregroundColor(selectedSize == size ? .buttonBG : Color.black)
                                .overlay(content: {
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(selectedSize == size ? .buttonBG : Color.gray, lineWidth: 1)
                                })
                                .cornerRadius(10)
                            
                        }
                    }
                }
                .offset(y: -10)
                .padding(.horizontal)
                
                
                Spacer()
                
                HStack (spacing: 34){
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Price")
                            .foregroundStyle(.gray.opacity(0.7))
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                        Text("$ 4.53")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                            .foregroundStyle(.buttonBG)
                            .fontWeight(.bold)
                            .kerning(1.5)
                    }
                    
                    Spacer()
                    Button(action: {}) {
                        Text("Buy Now")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, minHeight:  56)
                            .background(.buttonBG)
                            .cornerRadius(10)
                            .kerning(1.5)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 20)
                .background(Color.white)
            }
            .padding(.top, 20)
            .background(.surface)
            .navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        // Handle back button action
                    }) {
                        
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.black)
                        
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "heart")
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
        
    
}


#Preview {
    DetailView(coffeeIndex: 1)
}
