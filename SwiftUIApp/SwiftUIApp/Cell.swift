//
//  Cell.swift
//  SwiftbookApp
//
//  Created by Artur Avdeev on 05.03.2023.
//

import SwiftUI

struct Cell: View {
    
    var user: UserResponse
    
    var body: some View {
        VStack{
            TopView(user: user)
            Text(user.text)
        }.padding()
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(user: userResponse[0])
    }
}
