// src/lib/apiClient.ts
import axios from "axios";
import { Shop, Product } from "@/types"; // 必要な型をインポート

// axios インスタンスの作成
const apiClient = axios.create({
  baseURL: "http://localhost:8080/api", // APIのベースURLを指定
});

// // 特定のショップを取得する関数
// export const getShopById = async (shopId: string): Promise<Shop | null> => {
//   try {
//     const res = await apiClient.get<Shop>(`/shops/${shopId}`); // APIからショップを取得
//     return res.data; // レスポンスのデータを返す
//   } catch (error) {
//     console.error("Error fetching shop:", error);
//     return null; // エラーが発生した場合は null を返す
//   }
// };

// 商品を検索する関数
export const searchProducts = async (shopId: string, keyword: string): Promise<Product[]> => {
  try {
    const res = await apiClient.get<Product[]>(`/shops/${shopId}/search_products`, {
      params: { keyword }, // 検索キーワードをクエリパラメータに追加
    });
    return res.data; // レスポンスのデータを返す
  } catch (error) {
    console.error("Error searching products:", error);
    return []; // エラーが発生した場合は空の配列を返す
  }
};
