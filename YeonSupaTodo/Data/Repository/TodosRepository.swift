//
//  TodosRepository.swift
//  YeonSupaTodo
//
//  Created by yeon I on 11/2/23.
//

import Foundation
import Alamofire

public class TodosRepository {
    public static let shared =  TodosRepository()
    
    //MARK: 모든 할일 조회
//    curl --location 'https://mahpuanqldetlulfmirh.supabase.co/rest/v1/todos?select=*' \
//    --header 'apikey: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1haHB1YW5xbGRldGx1bGZtaXJoIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY5ODkxMzIwOCwiZXhwIjoyMDE0NDg5MjA4fQ.3AeQ_nnDX-uKx07mZ8pUazkPua0apx-W8YpLjLJ1dPY' \
//    --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1haHB1YW5xbGRldGx1bGZtaXJoIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY5ODkxMzIwOCwiZXhwIjoyMDE0NDg5MjA4fQ.3AeQ_nnDX-uKx07mZ8pUazkPua0apx-W8YpLjLJ1dPY'
    
    
   public func fetchTodos(completion: @escaping ([TodoEntity]?, AFError?) -> Void){
       Thread.sleep(forTimeInterval: 3.0) 
        AF.request(TodosRouter.fetchTodos)
            .responseDecodable(of: [TodoEntity].self,
                                completionHandler: { response in
                debugPrint(response)
                completion(response.value, response.error)
            })
    }
}
