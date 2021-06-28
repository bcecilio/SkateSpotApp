//
//  DatabaseServices.swift
//  
//
//  Created by Brendon Cecilio on 6/28/21.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class DatabaseService {
    
    static let userCollection = "users"
    
    private let database = Firestore.firestore()
    
    public func createDatabaseUser(authData: AuthDataResult, completion: @escaping(Result<Bool, Error>) -> ()) {
        
        guard let email = authData.user.email else {
            return
        }
        
        database.collection(DatabaseService.userCollection).document(authData.user.uid).setData(["email": email, "createdDate": Timestamp(date: Date()), "userId": authData.user.uid]) { (error) in
            
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(true))
            }
        }
    }
}
