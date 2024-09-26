import FollowButton from "@/components/features/FollowButton";
import React from "react";

export default function page() {
  return <div>おすすめ
    <FollowButton  isFollow={true} />
    <FollowButton  isFollow={false} />
  </div>;
}
