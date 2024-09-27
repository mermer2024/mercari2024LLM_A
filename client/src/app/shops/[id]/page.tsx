"use client";

import React, { useEffect, useState } from "react";
import { Shop, Product, User } from "@/types"; // 必要な型をインポート
import { getShopById, searchProducts, getUser } from "./action"; // API呼び出し関数のインポート
import ProductView from "@/components/features/ProductView"; // 商品表示コンポーネントのインポート
import ShopHeader from "@/components/features/ShopHeader"; // ショップヘッダーコンポーネントのインポート
import LoadingSpinner from "@/components/features/LoadingSpinner";
import { user } from "@/components/dummyData";

const Page = ({ params }: { params: { id: string } }) => {
  const [shop, setShop] = useState<Shop | null>(null); // ショップデータの状態
  const [products, setProducts] = useState<Product[]>([]); // 商品データの状態
  const [userData, setUserData] = useState<User | null>(user); // ユーザーデータの状態
  const [loading, setLoading] = useState(true); // ローディング状態
  const [error, setError] = useState<string | null>(null); // エラー状態

  // URLからショップIDを取得
  const shopId = params.id;

  // データを取得する関数
  const fetchData = async () => {
    try {
      setLoading(true);
      // shopIdに基づいてショップデータを取得
      const fetchedShop = await getShopById(shopId); // getShopById関数はAPIからショップを取得する
      setShop(fetchedShop); // 取得したショップデータを設定
      
      // ショップのオーナーのユーザーデータを取得
      if (fetchedShop?.ownerId) { // fetchedShopがnullでないことを確認
        const ownerUserData = await getUser(fetchedShop.ownerId);
        setUserData(ownerUserData); // オーナーのユーザーデータを設定
      }

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
    return <LoadingSpinner />; // ローディング中の表示
  }

  if (error) {
    return <div>{error}</div>; // エラー発生時の表示
  }

  return (
    <div className="pb-[103px]">
      {shop && userData && <ShopHeader shopData={shop} userData={userData} />} {/* ショップヘッダーを表示 */}
      <ProductView products={products} /> {/* 商品表示コンポーネント */}
    </div>
  );
};

export default Page;
