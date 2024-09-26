// src/app/shop/[id]/page.tsx
"use client";

import React, { useEffect, useState } from "react";
import { Shop, Product } from "@/types"; // 必要な型をインポート
import { searchProducts } from "./action"; // API呼び出し関数のインポート
import ProductView from "@/components/features/ProductView"; // 商品表示コンポーネントのインポート
import ShopHeader from "@/components/features/ShopHeader"; // ショップヘッダーコンポーネントのインポート
import { dummyShops, user } from "@/components/dummyData"; // 仮のユーザーデータ

const Page = ({ params }: { params: { id: string } }) => {
  const [shop, setShop] = useState<Shop | null>(dummyShops[0]); // ショップデータの状態
  const [products, setProducts] = useState<Product[]>([]); // 商品データの状態
  const [loading, setLoading] = useState(true); // ローディング状態
  const [error, setError] = useState<string | null>(null); // エラー状態

  // URLからショップIDを取得
  const shopId = params.id;

  // データを取得する関数
  const fetchData = async () => {
    try {
      setLoading(true);
      // // shopIdに基づいてショップデータを取得
      // const fetchedShop = await getShopById(shopId); // getShopById関数はAPIからショップを取得する
      // setShop(fetchedShop); // 取得したショップデータを設定

      // shopIdを使って商品のデータを取得
      const fetchedProducts = await searchProducts(shopId, ""); // 空のキーワードで商品検索
      setProducts(fetchedProducts); // 取得した商品データを設定
    } catch (error) {
      setError("Failed to load shop or products."); // エラーメッセージ設定
    } finally {
      setLoading(false); // ローディング終了
    }
  };

  useEffect(() => {
    fetchData(); // ページがマウントされたときにデータを取得
  }, [shopId]); // shopIdが変わったときにも再取得

  if (loading) {
    return <div>Loading...</div>; // ローディング中の表示
  }

  if (error) {
    return <div>{error}</div>; // エラー発生時の表示
  }

  return (
    <div>
      {shop && <ShopHeader shopData={shop} userData={user} />} {/* ショップヘッダーを表示 */}
      <ProductView products={products} /> {/* 商品表示コンポーネント */}
    </div>
  );
};

export default Page;
