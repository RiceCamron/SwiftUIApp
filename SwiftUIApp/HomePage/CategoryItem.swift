//
//  ProductItem.swift
//  SwiftbookApp
//
//  Created by Artur Avdeev on 08.03.2023.
//

import SwiftUI

struct CategoryItem : View {
    
    var object: ProductsResponse
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(object.image)
                .resizable()
                .renderingMode(.original)
                .cornerRadius(10)
                .frame(width: 170, height: 170)
            }.padding(.leading, 15)
    }
}


struct CategoryItem_Previews : PreviewProvider {
    static var previews: some View {
        CategoryItem(object: materialResponse[4])
    }
}

