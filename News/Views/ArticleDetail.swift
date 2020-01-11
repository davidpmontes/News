//
//  ArticleDetail.swift
//  News
//
//  Created by David Montes on 1/10/20.
//  Copyright © 2020 David Montes. All rights reserved.
//

import SwiftUI

struct ArticleDetail: View {
    var article: Article
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("example")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()
            Text(article.title)
                .font(.headline)
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 0, trailing: 10))
            Text(article.author)
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 10))
            WebView(request: article.urlRequest)
        }
        .navigationBarTitle(Text(article.title), displayMode: .inline)
    }
}

struct ArticleDetail_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetail(article: articles[0])
    }
}
