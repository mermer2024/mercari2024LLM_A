// src/pages/purchaseHistoriesPage.tsx
"use client";

import PageHeader from "@/components/features/PageHeader";
import PurchaseCard from "@/components/features/PurchaseCard";
import React, { useEffect, useState } from "react";
import { Purchase } from "@/types";
import { getHistories } from "./action";
import LoadingSpinner from "@/components/features/LoadingSpinner";

const PurchaseHistoriesPage = () => {
  const [histories, setHistories] = useState<Purchase[]>([]);
  const [loading, setLoading] = useState(true); // ローディング状態を管理する
  const [error, setError] = useState<string | null>(null); // エラー状態を管理する

  // 仮のユーザーID
  const userId = "114639E0-6E0D-420F-998F-A52BB9ECC145";
  
  // 購入履歴を取得する関数
  const handleHistories = async () => {
    try {
      const fetchedHistories = await getHistories(userId); // getHistories関数を非同期で呼び出す
      setHistories(fetchedHistories); // 取得したデータで状態を更新
    } catch (error) {
      setError("Failed to load purchase histories");
    } finally {
      setLoading(false); // ローディング状態を解除
    }
  };

  // コンポーネントがマウントされたときに購入履歴を取得
  useEffect(() => {
    handleHistories();
  }, []); // 空の依存配列で初回のみ実行

  return (
    <div className="mt-[112px] mb-[103px]">
      <PageHeader title="購入した商品" />
      <div className="flex gap-[17px] my-[13px] ml-[21px]">
        <input type="checkbox" id="name" />
        <label className="text-[14px]">取引中の商品</label>
      </div>
      {/* ローディング中またはエラー時の表示 */}
      {loading ? (
        <LoadingSpinner />
      ) : error ? (
        <div>{error}</div>
      ) : histories.length === 0 ? (
        <div>No purchase history found.</div>
      ) : (
        histories.map((purchase) => (
          <PurchaseCard key={purchase.id} purchaseData={purchase} />
        ))
      )}
    </div>
  );
};

export default PurchaseHistoriesPage;
