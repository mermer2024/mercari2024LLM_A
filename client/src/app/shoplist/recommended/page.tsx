"use client";

import React, { useEffect, useState } from "react";
import { Shop } from "@/types";
import { matchShops } from "./action"; // API 呼び出し関数をインポート
import ShopCard from "@/components/features/ShopCard";
import SelectButton from "@/components/features/SelectButton";
import { user } from "@/components/dummyData"; // 仮のユーザーデータ
import { userId } from "@/components/const";
import LoadingForAI from "@/components/features/LoadingForAI";

export default function Page() {
  const [shops, setShops] = useState<Shop[]>([]); // ショップデータの状態
  const [loading, setLoading] = useState(true); // ローディング状態
  const [error, setError] = useState<string | null>(null); // エラー状態

  // ショップデータを取得する関数
  const fetchShops = async () => {
    try {
      setLoading(true); // ローディング開始
      const matchedShops = await matchShops(userId); // API 呼び出し
      setShops(matchedShops); // 取得したデータを状態に設定
    } catch (error) {
      setError("Failed to load shops."); // エラー発生時のメッセージ設定
    } finally {
      setLoading(false); // ローディング終了
    }
  };

  // コンポーネントがマウントされたときにデータを取得
  useEffect(() => {
    fetchShops();
  }, []);

  return (
    <div className="flex flex-col justify-center p-4 gap-[19px] items-center pb-[103px]">
      {loading ? ( // ローディング中の表示
        <LoadingForAI />
      ) : error ? ( // エラー発生時の表示
        <div>{error}</div>
      ) : (
        shops.map((shop) => (
          <ShopCard key={shop.id} shopData={shop} userData={user} /> // ショップデータを表示
        ))
      )}
      <SelectButton /> {/* SelectButton を表示 */}
    </div>
  );
}
