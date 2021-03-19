
//

import SwiftUI

class ProductsMockStore {
    
    static let products: [ProductsCategories] = [
        ProductsCategories(id: 0, productName: "Mutual Fund", productNameLabel: "Mutual Fund", productImage: "surfing", selectedProduct: false),
        ProductsCategories(id: 1, productName: "Insurance", productNameLabel: "Insurance", productImage: "snowboarding", selectedProduct: false),
        ProductsCategories(id: 2, productName: "AlgoTrading", productNameLabel: "AlgoTrading", productImage: "hiking", selectedProduct: false)
        
    ]
    
    static let productsData: [ProductsData] = [
        
        ProductsData(id: 0, productsItem:
            [ProductsItem(id: 0, productItem: "VOO", productItemImage: "costarica", featuresArray: [ProductsFeatures(id: 0, featureName: "Portolio Overview", featureImage: "tamarindo", featureDescription: "Tamarindo is a town in the Guanacaste Province, on Costa Rica’s Pacific coast. It’s known for beaches with strong surf, like Playa Tamarindo and Playa Langosta. To the north, Playa Grande beach is a major nesting site for huge leatherback turtles, and forms part of Las Baulas National Marine Park"),
                                                                                                                       
            ProductsFeatures(id: 1, featureName: "Portfolio Structure", featureImage: "jaco", featureDescription: "Jacó is a town on the Pacific coast of Costa Rica, southwest of the capital city, San José. It's known for its surf beaches and nightlife, and as a gateway to national parks. Rocky, gray-sand Jacó Beach is west of town. Southeast, Hermosa Beach has big waves."),
            
            ProductsFeatures(id: 2, featureName: "Historical Return", featureImage: "dominical", featureDescription: "Dominical is a beach-front town in Bahía Ballena de Osa District in the province of Puntarenas in Costa Rica, approximately 45 km south of Quepos. It is well known for large, year-round waves and is popular among surfers in Costa Rica. The town began as a small fishing village")
            ]),
             
            ProductsItem(id: 1, productItem: "ARK", productItemImage: "bali", featuresArray: [ProductsFeatures(id: 0, featureName: "Portfolio Overview", featureImage: "kuta", featureDescription: "Kuta is a beach and resort area in the south of the island of Bali, Indonesia. One of Bali's first tourist developments, it's best known for its party-centric atmosphere and surfing in the Indian Ocean. Kuta's long, consistent waves make it a popular surf spot, particularly for beginners"),
             
                 ProductsFeatures(id: 1, featureName: "Portfolio Structure", featureImage: "jimbaran", featureDescription: "Jimbaran Bay has a long beach with calm waters. It's lined with fish restaurants and backed by tropical forest. At its northern end, colorful boats are pulled up by the lively, open-air Kedonganan fish market. Southwest of the bay are Dreamland Beach and Balangan Beach, known for their strong surf waves."),
                 
                 ProductsFeatures(id: 2, featureName: "Historical Return", featureImage: "jimbaran", featureDescription: "Jimbaran Bay has a long beach with calm waters. It's lined with fish restaurants and backed by tropical forest. At its northern end, colorful boats are pulled up by the lively, open-air Kedonganan fish market. Southwest of the bay are Dreamland Beach and Balangan Beach, known for their strong surf waves.")
             ]),
             
            ProductsItem(id: 2, productItem: "Cape Town", productItemImage: "capetown", featuresArray: [ProductsFeatures(id: 0, featureName: "Muizenberg", featureImage: "muizenberg", featureDescription: "Surfer’s Corner at Muizenberg is a popular learning spot, and is only about a 30-minute drive from the Cape Town city centre. The waves characteristic of this surf spot are gentle, and are ideal under a north-westerly wind direction."),
                 
                  ProductsFeatures(id: 1, featureName: "Long Beach", featureImage: "longbeach", featureDescription: "Long Beach at Kommetjie is just that, a long, sandy beach that’s very popular with surfers. The wave breaks both to the left and the right, which gives ample opportunities for both natural (right-leg dominated surfer) and goofy footers")
             ])],
                      
            productsResources:
        
            [ProductsResource(id: 0, resourceName: "Features", resourceDescription: "Explore, Fashion, Food, music, art, photography, travel and more!", resources:
                [ProductsResourcesItem(id: 0, resourceName: "long-term investment", resourceImage: "yoga", resourceDescription: "Article"),
                 ProductsResourcesItem(id: 1, resourceName: "managed by experts", resourceImage: "travel", resourceDescription: "Article"),
                 ProductsResourcesItem(id: 2, resourceName: "easy tp buy and sell", resourceImage: "smoothie", resourceDescription: "Tutorial")])
                
//                ActivityResource(id: 1, resourceName: "Equipment", resourceDescription: "Find your dream gear", resources: [ActivityResourcesItem(id: 1, resourceName: "Boards", resourceImage: "surfboard-1", resourceDescription: ""),
//                     ActivityResourcesItem(id: 2, resourceName: "Boardshorts", resourceImage: "boardshorts", resourceDescription: ""),
//                     ActivityResourcesItem(id: 3, resourceName: "Surfboard Bags", resourceImage: "surfboardbags", resourceDescription: "")]),
//
//                ActivityResource(id: 2, resourceName: "Training", resourceDescription: "Best surf training resources", resources: [ActivityResourcesItem(id: 1, resourceName: "Surf Core Training", resourceImage: "boardshorts", resourceDescription: "Video"),
//                     ActivityResourcesItem(id: 2, resourceName: "Sri Lanka Surf Camp", resourceImage: "srilankacamp", resourceDescription: "Camp"),
//                     ActivityResourcesItem(id: 3, resourceName: "Surf Photography Training", resourceImage: "surfphoto", resourceDescription: "Photography")])
                ]),
       
        ProductsData(id: 1, productsItem: [
        
            ProductsItem(id: 1, productItem: "Snowbird", productItemImage: "snowbird", featuresArray:  [ProductsFeatures(id: 0, featureName: "Snowbird", featureImage: "snowbird", featureDescription: "Just over the mountains to the north, Brighton and Solitude are located in Big Cottonwood Canyon. To the north of these ski and snowboard areas are Park City and Deer Valley, off of Interstate 80")]),
            ProductsItem(id: 2, productItem: "Cervinia", productItemImage: "italy", featuresArray: [ProductsFeatures(id: 0, featureName: "Cervinia", featureImage: "italy", featureDescription: "Breuil-Cervinia is an Alpine resort in the Valle d’Aosta region of northwest Italy. It’s known for its snow-capped mountains, including the pyramid-shaped Matterhorn. A network of slopes connects Breuil-Cervinia to Swiss resorts like Zermatt,")]),
                        
            ProductsItem(id: 3, productItem: "Chamonix", productItemImage: "chamonix", featuresArray: [ProductsFeatures(id: 0, featureName: "Chamonix", featureImage: "chamonix", featureDescription: "Chamonix-Mont-Blanc (usually shortened to Chamonix) is a resort area near the junction of France, Switzerland and Italy. At the base of Mont Blanc, the highest summit in the Alps,")])],
                      
                      
                     productsResources:
       
           [ProductsResource(id: 0, resourceName: "Features", resourceDescription: "Explore, Fashion, Food, music, art, photography, travel and more!", resources:
               [ProductsResourcesItem(id: 0, resourceName: "Peace in Mountains", resourceImage: "mountains", resourceDescription: "Article"),
                ProductsResourcesItem(id: 1, resourceName: "Travel for a living", resourceImage: "travel", resourceDescription: "Article"),
                ProductsResourcesItem(id: 2, resourceName: "Mountain top drinks", resourceImage: "drinks", resourceDescription: "Guide")])
               
//               ActivityResource(id: 1, resourceName: "Equipment", resourceDescription: "Find your dream gear", resources: [ActivityResourcesItem(id: 1, resourceName: "Boards", resourceImage: "snowboards", resourceDescription: ""),
//                    ActivityResourcesItem(id: 2, resourceName: "Goggles", resourceImage: "goggles", resourceDescription: ""),
//                    ActivityResourcesItem(id: 3, resourceName: "Snowboarding boots", resourceImage: "boots", resourceDescription: "")]),
//
//               ActivityResource(id: 2, resourceName: "Training", resourceDescription: "Best Snowboarding training resources", resources: [ActivityResourcesItem(id: 1, resourceName: "Snowboard Training", resourceImage: "snowboarder", resourceDescription: "Video"),
//                    ActivityResourcesItem(id: 2, resourceName: "Snowboard Resorts Training", resourceImage: "frenchresort", resourceDescription: "Camp"),
//                    ActivityResourcesItem(id: 3, resourceName: "Snowboarding Photography", resourceImage: "snowboardphoto", resourceDescription: "Photography")])
               ]),
       
       
        ProductsData(id: 2, productsItem: [
        
        ProductsItem(id: 1, productItem: "Torres del Paine", productItemImage: "torresdelpaine", featuresArray: [ProductsFeatures(id: 0, featureName: "The Fauna Trail", featureImage: "faunatrail", featureDescription: "This trail is a great hiking option for beginner hikers or anyone looking for a quick day trip. While it may be short in distance, it doesn’t fall short on beautiful landscapes and neverending wildlife. On this somewhat secret trail, you’ll spot herds of guanacos grazing, condors flying through the sky, and if you’re lucky"),
            
            ProductsFeatures(id: 1, featureName: "Laguna Azul", featureImage: "lagunaazul", featureDescription: "aguna Azul, which literally translate to blue lagoon, is just that – a picturesque blue lake surrounded by massive mountains with jagged snow-covered peaks. Pictures don’t do it justice, making it one place you have to see to believe.")
            ]),
            
        ProductsItem(id: 2, productItem: "Peru", productItemImage: "peru", featuresArray: [ProductsFeatures(id: 0, featureName: "Inca Trail", featureImage: "inca", featureDescription: "One thing’s for sure: you absolutely cannot go to Peru without visiting Machu Picchu, one of the seven ancient Wonders of the World. The classic and most famous way to get there is via the Inca Trail, the trail that the original Incans traversed."),
                
                ProductsFeatures(id: 1, featureName: "Santa Cruz Trek", featureImage: "santacruz", featureDescription: "The Santa Cruz trek in Peru’s Huascarán National Park in the Cordillera Blanca mountain range is considered by many experienced hikers to be one of the most beautiful in the world, seriously! The entire hike is framed by dramatic mountains, glaciers, and deeply blue lakes.")
            
            ]),
            ProductsItem(id: 3, productItem: "Grand Canyon", productItemImage: "grandcanyon", featuresArray: [ProductsFeatures(id: 0, featureName: "South Rim Trail", featureImage: "southrim", featureDescription: "For many visitors, the South Rim Trail is where they first lay eyes on the Grand Canyon. It's an experience not easily forgotten, and the viewpoints are plenty. With minimal elevation change and interpretive information along the way, this 13-mile paved route is lined with shuttle stops"),
                  
                ProductsFeatures(id: 1, featureName: "Bright Angel Trail", featureImage: "brightangel", featureDescription: "An iconic hiking trail of America, the Bright Angel Trail descends steeply from the South Rim of the Grand Canyon, revealing fantastic views that cannot be experienced from the rim. Descending over 4,000 feet in nine miles between the South Rim and the Colorado River.")

            ])],
                      
                      
                     productsResources:
       
           [ProductsResource(id: 0, resourceName: "Features", resourceDescription: "Explore, Fashion, Food, music, art, photography, travel and more!", resources:
               [ProductsResourcesItem(id: 0, resourceName: "Clearing your thoughts", resourceImage: "hikingmental", resourceDescription: "Article"),
                ProductsResourcesItem(id: 1, resourceName: "Hiking and physical benefits", resourceImage: "hiker", resourceDescription: "Article"),
                ProductsResourcesItem(id: 2, resourceName: "Hikers Parties", resourceImage: "hikersparties", resourceDescription: "Fun")])
               
//               ActivityResource(id: 1, resourceName: "Equipment", resourceDescription: "Find your dream gear", resources: [ActivityResourcesItem(id: 1, resourceName: "Footwear", resourceImage: "shoes", resourceDescription: ""),
//                    ActivityResourcesItem(id: 2, resourceName: "Camping Equipment", resourceImage: "camping", resourceDescription: ""),
//                    ActivityResourcesItem(id: 3, resourceName: "Hiking bags", resourceImage: "bags", resourceDescription: "")]),
//
//               ActivityResource(id: 2, resourceName: "Photography", resourceDescription: "Best landscape photography resources", resources: [ActivityResourcesItem(id: 1, resourceName: "Camera equipment", resourceImage: "cameras", resourceDescription: "Video"),
//                    ActivityResourcesItem(id: 2, resourceName: "Long exposure photography", resourceImage: "longexposure", resourceDescription: "Tutorial"),
//                    ActivityResourcesItem(id: 3, resourceName: "Tips for best photography", resourceImage: "photography", resourceDescription: "Photography")])
               ])
       
    ]
    
    static let shoppingCartData: [ActivitiesCartItem] = [
           ActivitiesCartItem(itemID: "1", itemName: "Snow board", itemPrice: 450, itemColor: "Red", itemManufacturer: "Elan Explore", itemImage: "snowboardred"),
           ActivitiesCartItem(itemID: "2", itemName: "Camping Tent", itemPrice: 235, itemColor: "Yellow", itemManufacturer: "Explorers", itemImage: "campingtent"),
           ActivitiesCartItem(itemID: "3", itemName: "Surf board", itemPrice: 825, itemColor: "Black", itemManufacturer: "WaveExplore", itemImage: "surfboard")
       ]
    
}
