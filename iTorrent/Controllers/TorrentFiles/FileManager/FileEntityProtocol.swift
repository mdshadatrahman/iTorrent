//
//  FileEntityProtocol.swift
//  iTorrent
//
//  Created by Даниил Виноградов on 22.04.2022.
//

import Foundation

class FileEntityProtocol: HidableItem {
    var name: String { "" }
    var size: UInt64 { 0 }
    var hidden: Bool { false }
}

extension FileEntityProtocol: Hashable {
    static func == (lhs: FileEntityProtocol, rhs: FileEntityProtocol) -> Bool {
        guard lhs.name == rhs.name else { return false }
        guard lhs.size == rhs.size else { return false }

        return true
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}