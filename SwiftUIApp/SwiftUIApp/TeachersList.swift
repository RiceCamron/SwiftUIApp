//
//  ContentView.swift
//  SwiftbookApp
//
//  Created by Artur Avdeev on 05.03.2023.
//

import SwiftUI

struct TeachersList: View {
    var body: some View {
        NavigationView{
            List(userResponse){user in
                Cell(user: user)
            }
            .navigationTitle(Text("Teachers"))
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            TeachersList()
        }
    }
}
