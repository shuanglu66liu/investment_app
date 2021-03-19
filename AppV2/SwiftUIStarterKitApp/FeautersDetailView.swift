//


import SwiftUI
import Combine

class SelectedItem: ObservableObject {
    @Published var selectedIndex: Int = 0
}

struct FeatureDetailView : View {
    @Binding var isShowing: Bool
    @Binding var productItem: ProductsItem?
    let defaultPoint = ProductsFeatures(id: 0, featureName: "Default", featureImage: "Default PlaceHolder", featureDescription: "Default Description PlaceHolder")
    
    @ObservedObject var selectedItem = SelectedItem()
    
    var body: some View {
        GeometryReader { g in
            ZStack {
                Image(self.productItem?.featuresArray[self.selectedItem.selectedIndex].featureImage ?? "")
                    .resizable()
                    .frame(width: g.size.width, height: g.size.height)
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.3)
                    .background(Color.black)
                    .onDisappear {
                        self.isShowing = false
                }
                
                VStack(alignment: .leading) {
                    Text(self.productItem?.productItem ?? "")
                        .foregroundColor(Color.white)
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .padding(.top, 34)
                        .padding(.leading, 30)
                    HStack{
                        Spacer()
                    }
                    
                    Spacer()
                    
                    FeaturesDetail(placeItems: self.productItem?.featuresArray[self.selectedItem.selectedIndex] ?? self.defaultPoint)
                        .padding(.bottom, 50)
                    
                    ZStack {
                        BlurView(style: .light)
                            .frame(width: g.size.width, height: 130)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(self.productItem?.featuresArray ?? [], id: \.id) { item in
                                    FeaturesCircleView(placeItems: item, selectedItem: self.selectedItem)
                                }
                            }.frame(width: g.size.width, height: 130)
                        }
                    }.padding(.bottom, 50)
                    
                }
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct FeaturesCircleView: View {
    var placeItems: ProductsFeatures
    @ObservedObject var selectedItem: SelectedItem

    
    var body: some View {
        GeometryReader { g in
            Button(action: {
                self.selectedItem.selectedIndex = self.placeItems.id
            }) {
                ZStack {
                    Image(self.placeItems.featureImage).renderingMode(.original)
                        .resizable()
                        .frame(width: 110, height: 110)
                        .background(Color.red)
                        .clipShape(Circle())
                    
                    if (self.selectedItem.selectedIndex == self.placeItems.id) {
                           Text("✓")
                                .font(.system(size: 30, weight: .bold, design: Font.Design.default))
                                .foregroundColor(Color.white)
                    }
                }
            }
        }
    }
}

struct FeaturesDetail: View {
    var placeItems: ProductsFeatures
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(placeItems.featureName)
                .foregroundColor(Color.white)
                .font(.system(size: 24, weight: .bold, design: .default))
                .padding(.leading, 30)
            
            Text(placeItems.featureDescription)
                .foregroundColor(Color.white)
                .font(.system(size: 16, weight: .regular, design: .default))
                .padding(.leading, 30)
                .padding(.trailing, 30)
        }
    }
}
