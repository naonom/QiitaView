//
//  QiitaResponse.swift
//  QiitaView
//
//  Created by Naoki Noma on 2020/09/23.
//

import Foundation



struct QiitaResponse: Codable {
    let rendered_body: String
    let body: String
    let coediting: Bool
    let comments_count: Int
    let created_at: String
    let group: String?
    let id: String
    let likes_count: Int
    let `private`: Bool
    let reactions_count: Int
    let tags: [Tags]
    let title: String
    let updated_at: String
    let url: String
    let user: UserSmallCategory
    let page_views_count: String?
}

struct Tags: Codable {
    let name: String
    let versions: [String]
}

struct UserSmallCategory: Codable {
    let description: String?
    let facebook_id: String?
    let followees_cout: Int?
    let followers_cout: Int?
    let github_login_name: String?
    let id: String
    let items_cout: Int?
    let linkedin_id: String?
    let location: String?
    let name: String
    let organization: String?
    let permanent_id: Int?
    let profile_image_url: String
    let team_only: Bool
    let twitter_screen_name: String?
    let website_url: String?
}
