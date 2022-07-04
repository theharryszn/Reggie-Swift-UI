//
//  TodoList.swift
//  reggie
//
//  Created by Harry on 03/07/2022.
//

import SwiftUI
import RealmSwift

struct TodoList: View {
    
    @ObservedResults(Todo.self) var todos;
    
    var body: some View {
        if todos.isEmpty {
            Text("No Todos")
        } else {
            List {
                ForEach(todos) {
                    todo in
                    HStack {
                        VStack {
                            Text(todo.title)
                            Text(todo.todoDescription)
                        }
                    }
                    
                }
            }
        }
    }
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList()
    }
}
