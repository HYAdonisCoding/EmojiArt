//
//  Adam_20220502_EmojiArtApp.swift
//  Shared
//
//  Created by Adam on 2022/5/2.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    @StateObject var paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        DocumentGroup(newDocument: { EmojiArtDocument() }) { config in
            EmojiArtDocumentView(document: config.document)
                .environmentObject(paletteStore)
        }
    }
}

