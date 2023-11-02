//
//  RequestResponseTests.swift
//  YeonSupaTodoTests
//
//  Created by yeon I on 11/3/23.
//

import XCTest
import Foundation
import YeonSupaTodo
import Alamofire

final class RequestResponseTests: XCTestCase {

    func testFetchTodosRequestResponse() {
        
        //given - 주어진 상황
        let url = TodosRouter.fetchTodos.urlRequest?.url?.absoluteString ?? ""
        let expect = expectation(description: "GET = fetchTodos: \(url)")

        
        var response : (data: [TodoEntity]?, err:AFError?) = (nil, nil)
        
        let timeout: TimeInterval = 10.0
        
        //when - 경우 (이렇게 했을때)
        TodosRepository.shared.fetchTodos(completion: { data, err in
            response = (data, err)
            expect.fulfill()
            
        })
        //then - 이렇게 되어야 한다.
        waitForExpectations(timeout: timeout)
        XCTAssertNotNil(response.data, "데이터가 없습니다.")
        XCTAssertNil(response.err, "에러가 있습니다.")
    }
}
