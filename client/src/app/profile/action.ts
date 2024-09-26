// src/lib/apiClient.ts
import axios from "axios";
import { Purchase } from "@/types";

// axios インスタンスの作成
const apiClient = axios.create({
  baseURL: "http://localhost:8080/api", // APIのベースURLを指定
});

export const getHistories = async (userId: string): Promise<Purchase[]> => {
  try {
    const res = await apiClient.get<Purchase[]>(`users/${userId}/purchase_histories`);
    return res.data;
  } catch (error) {
    console.error("Error fetching purchase histories:", error);
    return []; // エラーが発生した場合は空の配列を返す
  }
};
