// src/lib/apiClient.ts
import axios from "axios";
import { Shop, User } from "@/types";

// axios インスタンスの作成
const apiClient = axios.create({
  baseURL: "http://localhost:8080/api", // APIのベースURLを指定
});


export const matchShops = async (userId: string): Promise<Shop[]> => {
  try {
    // POST リクエストで userId をリクエストボディに含める
    const res = await apiClient.post<Shop[]>(`/match_shops`, { userId });
    return res.data; // レスポンスのデータを返す
  } catch (error) {
    console.error("Error matching shops:", error);
    return []; // エラーが発生した場合は空の配列を返す
  }
};

export const getUser = async (userId: string): Promise<User|null> => {
  try {
    // POST リクエストで userId をリクエストボディに含める
    const res = await apiClient.get<User>(`/users/${userId}`);
    return res.data; // レスポンスのデータを返す
  } catch (error) {
    console.error("Error fetching user:", error);
    return null; // エラーが発生した場合は空の配列を返す
  }
};
