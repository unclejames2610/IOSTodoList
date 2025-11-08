//
//  ToDoListViewViewModel.swift
//  TodoList
//
//  Created by Ebuka on 08/11/25.
//

import FirebaseFirestore
import Foundation

// ViewModel for list of items view
//Primary tab
class ToDoListViewViewModel: ObservableObject {
    
    @Published var showingNewItemView = false
    
    private let userId: String
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String ){
        let db = Firestore.firestore()
        
        db.collection("tlUsers")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
