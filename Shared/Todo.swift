//
//  Todo.swift
//  reggie
//
//  Created by Harry on 03/07/2022.
//

import Foundation
import SwiftUI
import RealmSwift


let localRealm = try! Realm()

class Todo: Object, ObjectKeyIdentifiable {
    
    @Persisted var title: String
    
    @Persisted var todoDescription: String
    
    @Persisted var isCompleted: Bool = false;
    
    @Persisted var dateAdded = Date()
    
    convenience init(title: String, todoDescription: String) {
        self.init()
        self.title = title
        self.todoDescription = todoDescription
    }
    
    static func addTodo(todo: Todo){
        try! localRealm.write {
            localRealm.add(todo)
        }
    }
    
    static func getTodos() -> Results<Todo>  {
        let todos = localRealm.objects(Todo.self)
        
        return todos;
    }
    
    func complete() {
        try! localRealm.write {
            self.isCompleted = true;
        }
    }
    
    func delete() {
        try! localRealm.write {
            localRealm.delete(self)
        }
    }
    
}


