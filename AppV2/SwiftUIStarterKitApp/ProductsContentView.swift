
//

import SwiftUI
import Combine

struct ProductsCategories {
    var id: Int
    var productName: String
    var productNameLabel: String
    var productImage: String
    var selectedProduct: Bool
}

struct ProductsItem {
    var id: Int
    var productItem: String
    var productItemImage: String
    var featuresArray: [ProductsFeatures]
   
}

struct ProductsResource {
    var id: Int
    var resourceName: String
    var resourceDescription: String
    var resources : [ProductsResourcesItem]
}

struct ProductsResourcesItem {
    var id: Int
    var resourceName: String
    var resourceImage: String
    var resourceDescription: String
}

struct ProductsData {
    var id: Int
    var productsItem: [ProductsItem]
    var productsResources: [ProductsResource]
}

struct ProductsFeatures {
    var id: Int
    var featureName: String
    var featureImage: String
    var featureDescription: String
}

class Products: ObservableObject {
    let objectWillChange = PassthroughSubject<Void, Never>()
    
    var productsCollection : [ProductsData] {
       willSet {
            objectWillChange.send()
        }
    }
    
    var products: [ProductsCategories] {
        willSet {
                   objectWillChange.send()
               }
    }
    
    init(data: [ProductsData], items: [ProductsCategories] ) {
        self.productsCollection = data
        self.products = items
    }
}

class ProductSelected: ObservableObject {
    @Published var index: Int = 0
}

struct ProductsContentView: View {
    @EnvironmentObject var session: SessionStore
    @EnvironmentObject var settings: UserSettings
    @ObservedObject var productsData : Products
    @ObservedObject var selectedProduct = ProductSelected()
    @State var isShowing: Bool = false
    @State var productItemSelected: ProductsItem? = nil
    

    var body: some View {
       
        GeometryReader { g in
            ScrollView{
                    VStack(alignment: .leading) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack (spacing: 10){
                                ForEach(self.productsData.products, id: \.id) { item in
                                    ShopPromotionBannerView(activtiesItems: item, selectedProduct: self.selectedProduct)
                                            .frame(width: 120, height: 60)
                                }
                            }.padding(.leading, 30)
                            .padding(.trailing, 30)
                            .padding(.bottom, 10)
                        }
                        .padding(.top, 20)
                        
                        Text("\(self.productsData.products[self.selectedProduct.index].productNameLabel)")
                            .font(.system(size: 20))
                            .padding(.leading, 30)
                            .padding(.top, 10)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                                    HStack (spacing: 10) {
                                        ForEach(self.productsData.productsCollection[self.selectedProduct.index].productsItem, id: \.id) { item in
                                            Button(action: {
                                                self.productItemSelected = item
                                                self.isShowing = true
                                            }) {
                                                ShopBestSellerViews(activityPlaces: item)
                                                                    .frame(width: 155, height: 225)
                                            }
                                        }
                                        
                                }.padding(.leading, 30)
                                 .padding(.trailing, 30)
                                 .padding(.bottom, 10)
                                
                        }
                        
                        VStack (spacing: 20) {
                            ForEach(self.productsData.productsCollection[self.selectedProduct.index].productsResources, id: \.id) { item in
                                ShopNewProductViews(activityResources: item)
                                         .frame(width: g.size.width - 60, height: g.size.width - 60)
                            }
                        }.padding(.leading, 30)
                        
                        
                    }
                    .navigationBarTitle("Products")
                    .navigationBarItems(trailing:
                        Button(action: session.signOut) {
                        Text("Log Out")
                    })
            }.sheet(isPresented: self.$isShowing) { FeatureDetailView(isShowing: self.$isShowing, productItem: self.$productItemSelected)}

        }
    }
}

struct ShopBestSellerViews: View {
    
    var activityPlaces: ProductsItem
    
    var body: some View {
            ZStack{
                Image("\(activityPlaces.productItemImage)").renderingMode(.original)
                        .resizable()
                        .frame(width: 155, height: 225)
                        .background(Color.black)
                        .cornerRadius(10)
                        .opacity(0.8)
                        .aspectRatio(contentMode: .fill)
               
                VStack (alignment: .leading) {
                    Spacer()
                    
                    Text(activityPlaces.productItem)
                        .foregroundColor(Color.white)
                        .font(.system(size: 20, weight: .bold, design: Font.Design.default))
                        .padding(.bottom, 24)
                }
                    
                
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.white)
          
    }
}

struct ShopPromotionBannerView: View {
    var activtiesItems: ProductsCategories
    @ObservedObject var selectedProduct: ProductSelected
    
    var body: some View {
        
        Button(action: {
            self.selectedProduct.index = self.activtiesItems.id
            
        }) {
            GeometryReader { g in
                   ZStack{
                    Image("\(self.activtiesItems.productImage)").renderingMode(.original)
                       .resizable()
                       .opacity(0.8)
                       .aspectRatio(contentMode: .fill)
                       .background(Color.black)
                    
                    
                    if (self.selectedProduct.index == self.activtiesItems.id) {
                           Text("✓ \(self.activtiesItems.productName)")
                                    .font(.system(size: 14, weight: .bold, design: Font.Design.default))
                                    .foregroundColor(Color.white)
                    } else {
                             Text(self.activtiesItems.productName)
                                    .font(.system(size: 14, weight: .bold, design: Font.Design.default))
                                     .foregroundColor(Color.white)
                    }
                               
                   }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                   .cornerRadius(15)
               }
        }
    }
}


struct ShopNewProductViews: View {
    var activityResources: ProductsResource
    
    var body: some View {
        GeometryReader { g in
            ZStack {
                VStack (alignment: .leading){
                    Text(self.activityResources.resourceName)
                        .padding(.top, 18)
                        .padding(.leading, 18)
                        .font(.system(size: 20, weight: .bold, design: Font.Design.default))
                        .foregroundColor(Color.black)
                    Text(self.activityResources.resourceDescription)
                        .padding(.leading, 18)
                        .padding(.trailing, 18)
                        .font(.system(size: 14))
                        .foregroundColor(Color.black)
                    
                        
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack (spacing: 10) {
                            
                            ForEach(self.activityResources.resources, id: \.id) { item in
                                ProductResourceItems(resourceItems: item)
                                                    .frame(width: 150, height: 200)
                            }
                            
                        }.padding(.leading, 18)
                        .padding(.trailing, 18)
                            .padding(.top, 25)
                    }
                    
                     Spacer()
                }
                }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                .cornerRadius(10)
                
            }
        }
    }

struct ProductResourceItems: View {
    var resourceItems: ProductsResourcesItem
    var body: some View {
        GeometryReader { g in
            ZStack{
                Image("\(self.resourceItems.resourceImage)")
                .resizable()
                .opacity(0.8)
                .aspectRatio(contentMode: .fill)
                .background(Color.black)
                VStack(alignment: .center) {

                    Text(self.resourceItems.resourceName)
                        .font(.system(size: 16, weight: .bold, design: Font.Design.default))
                        .frame(width: 150)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                }
                        
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .cornerRadius(10)
        }
    }
}


