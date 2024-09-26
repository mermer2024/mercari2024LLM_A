'use client'
import { Shop, User } from '@/types';
import React from 'react'
import UserCard from './UserCard';
import FollowButton from './FollowButton';
import PageHeader from './PageHeader';

interface ShopCardProps {
  shopData: Shop;
  userData: User;
}

const ShopHeader: React.FC<ShopCardProps> = ({ shopData, userData }) => {
  return (
    <div className='w-full flex flex-col items-center mb-[37px] mt-[97px]'>
      <PageHeader title={shopData.name} />
      <img
        src={shopData.headerImage}
        alt={`${shopData.name}のヘッダー画像`}
        className="self-stretch w-full h-[200px] object-cover mb-5"
      />
      <p className='px-4 text-[13px] mb-5 leading-[24px]'>{shopData.description}</p>
      <div className='flex items-center gap-[24px]'>
        <UserCard userData={userData} />
        <FollowButton isFollow={true} />
      </div>
    </div>
  )
}

export default ShopHeader
