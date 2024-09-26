import { dummyProducts, dummyShops, user } from "@/components/dummyData";
import ProductCard from "@/components/features/ProductCard";
import ProductView from "@/components/features/ProductView";
import ShopHeader from "@/components/features/ShopHeader";
import React from "react";

export default function page({ params }: { params: { id: string } }) {
  return <div>
    <ShopHeader shopData={dummyShops[0]} userData={user} />
    <ProductView products={dummyProducts} />
  </div>;
}
