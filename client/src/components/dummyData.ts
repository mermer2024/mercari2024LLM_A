import { Product, Shop, User } from "@/types";

export const dummyShops: Shop[] = [
  {
    id: "shop-1",
    name: "ビンテージ家具セレクト",
    ownerId: "user-1",
    description: "ビンテージ物は味があっていいですよね〜。ミッドセンチュリーの家具を主にセレクトしていますので、ぜひ一度、訪れてみてください！",
    headerImage: "/header1.png",
    followers: 120,
  },
  {
    id: "shop-2",
    name: "旅人まるの北欧小物ショップ",
    ownerId: "user-2",
    description: "世界中を旅している私「まる」が厳選した、北欧小物を集めています。中古だからこそ味わえる良さをぜひ体感してみてください！",
    headerImage: "/header2.png",
    followers: 350,
  },
  {
    id: "shop-3",
    name: "スポーツ用品店",
    ownerId: "user-3",
    description: "アウトドアやフィットネス用のスポーツ用品を販売しています。",
    headerImage: "/header2.png",
    followers: 200,
  },
];

const dummyProducts: Product[] = [
  {
    id: "product-1",
    name: "デジタル一眼レフカメラ",
    price: 75000,
    stock: 10,
  },
  {
    id: "product-2",
    name: "高性能レンズ",
    price: 30000,
    stock: 15,
  },
  {
    id: "product-3",
    name: "ゲームコンソール",
    price: 40000,
    stock: 5,
  },
  {
    id: "product-4",
    name: "アクションゲーム",
    price: 7000,
    stock: 20,
  },
  {
    id: "product-5",
    name: "ランニングシューズ",
    price: 12000,
    stock: 30,
  },
  {
    id: "product-6",
    name: "ヨガマット",
    price: 3500,
    stock: 25,
  },
];

export const user: User = {
  id: "1",
  name: "ビンテージ太郎",
  iconImage: "/icon1.png",
}

export const users: User[] = [
  {
    id: "1",
    name: "ビンテージ太郎",
    iconImage: "/icon1.png",
  },
  {
    id: "2",
    name: "鈴木花子",
    iconImage: "https://example.com/images/user2.jpg",
  },
  {
    id: "3",
    name: "佐藤次郎",
    iconImage: "https://example.com/images/user3.jpg",
  },
  {
    id: "4",
    name: "高橋優子",
    iconImage: "https://example.com/images/user4.jpg",
  },
  {
    id: "5",
    name: "田中一郎",
    iconImage: "https://example.com/images/user5.jpg",
  },
];



