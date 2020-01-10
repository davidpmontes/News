//
//  ArticleRow.swift
//  News
//
//  Created by David Montes on 1/8/20.
//  Copyright © 2020 David Montes. All rights reserved.
//

import SwiftUI

struct ArticleRow: View {
    var article: Article
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(article.title)
                .font(.headline)
                .lineLimit(3)
                .padding(EdgeInsets(top: 5, leading: 5, bottom: 0, trailing: 5))
            Text(article.author)
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 0, leading: 5, bottom: 5, trailing: 5))
        }
    }
}

struct ArticleRow_Previews: PreviewProvider {
    static var previews: some View {
        ArticleRow(article: articles[0])
    }
}
