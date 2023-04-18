//
//  ContentView.swift
//  SwiftbookApp
//
//  Created by Artur Avdeev on 07.03.2023.
//

//import SwiftUI
//
//struct ContentView: View {
//    var categories: [String: [ProductsResponse]]{
//        .init(grouping: materialResponse, by: {$0.category.rawValue})
//    }
//    var body: some View {
//        NavigationView{
//            List{
//                Cell(user: swiftbook)
//                ForEach(self.categories.keys.sorted(), id: \.self) { key in
//                    ProductRow(categoryName: key, items: self.categories[key]!)
////                    if key == "Courses"{
////                        ProductRow(categoryName: key, items: self.categories[key]!)
////                    } else if key == "Webinars"{
////                        Text(key)
////                    }
//                }.listRowInsets(EdgeInsets())
//
//                NavigationLink(destination: TeachersList()){
//                    Text("Наши преподаватели")
//                }
//
//            }
//            .navigationTitle(Text("Homepage"))
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//

import SwiftUI

struct CategoryHome: View {
    
    var categories: [String: [ProductsResponse]] {
        .init(
            grouping: materialResponse,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Cell(user: swiftbook)
                    .listRowInsets(EdgeInsets())
                
                // Category rows
                List {
                    ForEach(self.categories.keys.sorted(), id: \.self) { key in
                        if key == "Courses" {
                            CategoryRow(categoryName: key, items: self.categories[key]!)
                        } else if key == "Webinars" {
                            WebinarRow(categoryName: key, items: self.categories[key]!)
                        }
                    }
                    .listRowInsets(EdgeInsets())
                    // Navigation link to TeachersList
                    NavigationLink(destination: TeachersList()) {
                        Text("Наши преподаватели")
                    }
                    
                }
            .navigationBarTitle(Text("Homepage"))
            }
        }
    }

}


struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
