import { Product, Purchase, Shop, User } from "@/types";

export const dummyShops: Shop[] = [
  {
    id: "shop-1",
    name: "ビンテージ家具セレクト",
    ownerId: "user-1",
    description: "ビンテージ物は味があっていいですよね〜。１年ほど前にメルカリで初めてビンテージチェアを購入してから、すっかり虜になってしまっています（＾＾） 僕がいいなと思った商品をセレクトしてありますので、どうぞ参考になさってください。一緒にビンテージの扉を開きましょう！",
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

export const dummyProducts: Product[] = [
  {
    id: "product-1",
    name: "デジタル一眼レフカメラ",
    price: 75000,
    stock: 10,
    description: "あまり有名なブランドではないけれど、状態が良く90年代の気分を思い出せそうな商品です。3000円とお安いので、なくなる前にお急ぎください！",
    imageUrl: "/item1.png",
  },
  {
    id: "product-2",
    name: "高性能レンズ",
    price: 30000,
    stock: 15,
    description: "あまり有名なブランドではないけれど、状態が良く90年代の気分を思い出せそうな商品です。3000円とお安いので、なくなる前にお急ぎください！",
    imageUrl: "/item1.png",
  },
  {
    id: "product-3",
    name: "ゲームコンソール",
    price: 40000,
    stock: 5,
    description: "あまり有名なブランドではないけれど、状態が良く90年代の気分を思い出せそうな商品です。3000円とお安いので、なくなる前にお急ぎください！",
    imageUrl: "/item1.png",
  },
  {
    id: "product-4",
    name: "アクションゲーム",
    price: 7000,
    stock: 20,
    description: "あまり有名なブランドではないけれど、状態が良く90年代の気分を思い出せそうな商品です。3000円とお安いので、なくなる前にお急ぎください！",
    imageUrl: "/item1.png",
  },
  {
    id: "product-5",
    name: "ランニングシューズ",
    price: 12000,
    stock: 30,
    description: "あまり有名なブランドではないけれど、状態が良く90年代の気分を思い出せそうな商品です。3000円とお安いので、なくなる前にお急ぎください！",
    imageUrl: "/item1.png",
  },
  {
    id: "product-6",
    name: "ヨガマット",
    price: 3500,
    stock: 25,
    description: "あまり有名なブランドではないけれど、状態が良く90年代の気分を思い出せそうな商品です。3000円とお安いので、なくなる前にお急ぎください！",
    imageUrl: "/item1.png",
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

export const purchaseHistoryData: Purchase[] = [
  {
    id: "1",
    userId: "user123",
    productId: "product456",
    productName: "スマートフォンケース",
    productQuantity: 1,
    priceAtPurchase: 1500, // 購入時の価格（例: 1500円）
    purchaseDate: "2024-09-25T10:30:00.000Z" // 購入日（例: 2024年9月25日 19:30 JST）
  },
  {
    id: "2",
    userId: "user789",
    productId: "product123",
    productName: "ワイヤレスイヤホン",
    productQuantity: 2,
    priceAtPurchase: 8500, // 購入時の価格（例: 8500円）
    purchaseDate: "2024-09-24T14:15:00.000Z" // 購入日（例: 2024年9月24日 23:15 JST）
  },
  {
    id: "3",
    userId: "user123",
    productId: "product789",
    productName: "ノートパソコンスタンド",
    productQuantity: 1,
    priceAtPurchase: 3200, // 購入時の価格（例: 3200円）
    purchaseDate: "2024-09-23T18:45:00.000Z" // 購入日（例: 2024年9月23日 03:45 JST）
  },
  {
    id: "4",
    userId: "user456",
    productId: "product456",
    productName: "USB-C ハブ",
    productQuantity: 1,
    priceAtPurchase: 2500, // 購入時の価格（例: 2500円）
    purchaseDate: "2024-09-22T08:00:00.000Z" // 購入日（例: 2024年9月22日 17:00 JST）
  },
  {
    id: "5",
    userId: "user789",
    productId: "product456",
    productName: "ゲーミングマウス",
    productQuantity: 1,
    priceAtPurchase: 6000, // 購入時の価格（例: 6000円）
    purchaseDate: "2024-09-21T16:30:00.000Z" // 購入日（例: 2024年9月21日 01:30 JST）
  }
];
