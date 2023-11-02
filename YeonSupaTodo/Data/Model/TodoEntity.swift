//
//  TodoEntity.swift
//  YeonSupaTodo
//
//  Created by yeon I on 11/3/23.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let todoEntity = try? JSONDecoder().decode(TodoEntity.self, from: jsonData)

import Foundation

// MARK: - TodoEntity
public struct TodoEntity: Decodable {
    let id: Int?
    let createdAt, content: String?
    let isDone: Bool?

    enum CodingKeys: String, CodingKey {
        case id
        case createdAt = "created_at"
        case content
        case isDone = "is_done"
    }
}

//typealias TodoEntity = [TodoEntityElement]
