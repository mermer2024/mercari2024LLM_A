"use client";

import React, { useEffect, useState } from "react";
import { Shop, User } from "@/types";
import { matchShops, getUser } from "./action"; // API 呼び出し関数をインポート
import ShopCard from "@/components/features/ShopCard";
import SelectButton from "@/components/features/SelectButton";
import { user } from "@/components/dummyData"; // 仮のユーザーデータ
import { userId } from "@/components/const";
import LoadingForAI from "@/components/features/LoadingForAI";

export default function Page() {
  const [shops, setShops] = useState<(Shop & { ownerData?: User })[]>([]); // ownerData 追加したShopの状態
  const [loading, setLoading] = useState(true); // ローディング状態
  const [error, setError] = useState<string | null>(null); // エラー状態

  // ショップデータを取得する関数
  const fetchShops = async () => {
    try {
      setLoading(true); // ローディング開始
      const matchedShops = await matchShops(userId); // API 呼び出し

      // 各ショップのオーナーのユーザー情報を取得してマージする
      const shopsWithUserData = await Promise.all(
        matchedShops.map(async (shop) => {
          const ownerData = await getUser(shop.ownerId) ?? undefined; // ownerData を undefined にする
          return { ...shop, ownerData }; // ownerDataを追加
        })
      );

      setShops(shopsWithUserData); // 取得したデータを状態に設定
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
          <ShopCard key={shop.id} shopData={shop} userData={shop.ownerData || user} /> // ショップデータを表示, ownerData がなければ仮のデータ
        ))
      )}
      <SelectButton /> {/* SelectButton を表示 */}
    </div>
  );
}
