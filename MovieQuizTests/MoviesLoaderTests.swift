//
//  MoviesLoaderTests.swift
//  MovieQuizTests
//
//  Created by Константин Букин on 25.10.2023.
//

import XCTest
@testable import MovieQuiz

class MoviesLoaderTests: XCTestCase {
    func testSuccessLoading() throws {
        //Given
        let stubNetworkClient = StubNetworClient(emulateError: false) // говорим, что не хотим эмулировать ошибку
        let loader = MoviesLoader(networkClient: stubNetworkClient)
        
        //When
        let expectation = expectation(description: "Loading expectation")
        
        loader.loadMovies { result in
            //Then
            switch result {
            case .success(_):
                // сравниваем данные с тем, что мы предполагали
                expectation.fulfill()
            case .failure(_):
                // мы не ожидаем, что пришла ошибка; если она появится, надо будет провалить тест
                XCTFail("Unexpected failure") // эта функция проваливает тест
            }
        }
        waitForExpectations(timeout: 1)
    }
    
    func testFailureLoading() throws {
        //Given
        let stubNetworkClient = StubNetworClient(emulateError: true) // говорим, что хотим эмулировать ошибку
        let loader = MoviesLoader(networkClient: stubNetworkClient)
        
        //When
        let expectation = expectation(description: "Loading expectation")
        
        loader.loadMovies { result in
            //Then
            switch result {
            case .success(_):
                XCTFail("Unexpected failure")
            case .failure(let error):
                XCTAssertNotNil(error)
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 1)
    }
}

