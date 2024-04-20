//
//  Product.swift
//  funiture-store-swiftui
//
//  Created by Gideon Okoroafor on 4/18/24.
//

import Foundation

struct Product : Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
    var width: String
    var height: String
    var diameter: String
}

var productList = [
    Product(
        name: "Living room furniture",
        image: "fn1",
        description: "Indulge in comfort and style with our exquisite living room sitting set. Featuring carefully curated pieces such as plush sofas, cozy armchairs, and elegant coffee tables, our set creates a welcoming atmosphere for relaxation and social gatherings. Crafted with premium materials and impeccable attention to detail, each item blends seamlessly to enhance your living space's aesthetic appeal while ensuring utmost comfort for you and your guests. Elevate your home décor and create unforgettable moments with our luxurious living room sitting set.",
        supplier: "IKEA",
        price: 340,
        width: "200cm",
        height: "135cm",
        diameter: "104cm"),
    Product(
        name: "Blue couch set",
        image: "fn2",
        description: "A stunning ensemble designed to transform your living space into a haven of sophistication and comfort. This set features beautifully crafted blue-hued couches that exude elegance and charm, elevating the ambiance of any room they grace. With plush cushions and sleek design, our blue couch set offers both style and coziness, making it the perfect centerpiece for your living room. Experience luxury and relaxation like never before with our exquisite Blue Couch Set.",
        supplier: "Walmart",
        price: 340,
        width: "230",
        height: "321",
        diameter: "123"),
    Product(
        name: "Wooden bed frame",
        image: "fn3",
        description: "Introducing our exquisite Wooden Bed Frame, a timeless centerpiece for your bedroom sanctuary. Crafted with precision and attention to detail, our bed frame boasts the natural beauty and durability of solid wood, adding warmth and character to your space. Its elegant design seamlessly blends modern aesthetics with rustic charm, creating a captivating focal point for your bedroom decor. With sturdy construction and a sleek finish, our Wooden Bed Frame promises both style and reliability, ensuring years of restful nights and serene mornings. Upgrade your sleep experience with the elegance and quality of our Wooden Bed Frame.",
        supplier: "Bestbuy",
        price: 238,
        width: "250",
        height: "890",
        diameter: "1000"),
    Product(
        name: "Living room set",
        image: "fn4",
        description: "Elevate your living space with our chic Living Room Set. Crafted for both style and comfort, this ensemble includes sofas, armchairs, and coffee tables designed to create a cohesive and inviting atmosphere. Upgrade your home's ambiance effortlessly with our sophisticated Living Room Set.",
        supplier: "Home Depo",
        price: 439,
        width: "135",
        height: "143", 
        diameter: "231"),
    Product(
        name: "Wooden Couch",
        image: "fn5",
        description: "Introducing our Wooden Couch — a fusion of timeless elegance and modern comfort. Crafted with exquisite woodwork, this couch adds a touch of sophistication to any living space. With its sturdy frame and plush cushions, it offers both style and relaxation. Elevate your home's ambiance with the natural beauty and durability of our Wooden Couch.",
        supplier: "IKEA",
        price: 500,
        width: "231",
        height: "324",
        diameter: "541"),
    Product(
        name: "Couch",
        image: "fn5",
        description: "Introducing our Couch — the epitome of comfort and style. Crafted with premium materials and sleek design, it's the perfect centerpiece for any living space. Sink into luxury and elevate your home decor with our exquisite Couch.",
        supplier: "Home Depo",
        price: 250,
        width: "524",
        height: "345",
        diameter: "284"),
]
