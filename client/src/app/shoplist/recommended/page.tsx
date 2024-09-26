import { dummyShops, user } from "@/components/dummyData";
import SelectButton from "@/components/features/SelectButton";
import ShopCard from "@/components/features/ShopCard";
import React from "react";

export default function page() {
  return(
    <div className="flex flex-col justify-center p-4 gap-[19px]">
      {dummyShops.map((shop) => {
        return <ShopCard shopData={shop} userData={user}/>;
      })}
      <SelectButton />
    </div>
  )
  ;
}
