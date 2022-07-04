//
//  Home.swift
//  reggie
//
//  Created by Harry on 03/07/2022.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    Text("Hey ✌🏾")
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                    Image(systemName: "plus")
                        
                }
                .padding(.bottom, 2)
                
                Text("What new task would you like to add")
                    .font(.caption)
            }
            
            ScrollView {
                TodoList()
            }
            .padding([.top , .bottom], 50)
        }
        .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
