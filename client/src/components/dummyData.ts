import { Product, Shop } from "@/types";

export const dummyShops: Shop[] = [
  {
    id: "shop-1",
    name: "カメラショップ",
    ownerId: "user-1",
    description: "高品質なカメラやレンズを取り揃えた専門店です。",
    headerImage: "https://example.com/images/shop1.jpg",
    followers: 120,
  },
  {
    id: "shop-2",
    name: "ゲームストア",
    ownerId: "user-2",
    description: "最新のゲーム機とソフトを取り扱っています。",
    headerImage: "https://example.com/images/shop2.jpg",
    followers: 350,
  },
  {
    id: "shop-3",
    name: "スポーツ用品店",
    ownerId: "user-3",
    description: "アウトドアやフィットネス用のスポーツ用品を販売しています。",
    headerImage: "https://example.com/images/shop3.jpg",
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

