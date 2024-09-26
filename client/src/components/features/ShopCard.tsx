import { Shop, User } from '@/types';
import React from 'react'
import UserCard from './UserCard';
import FollowButton from './FollowButton';

interface ShopCardProps {
  shopData: Shop;
  userData: User;
}

const ShopCard: React.FC<ShopCardProps> = ({ shopData, userData })  => {
  return (
    <div className="flex flex-col w-[358px] items-start gap-[13px] p-3 rounded-lg bg-white shadow-md">
      <img src={shopData.headerImage} alt={`${shopData.name}のヘッダー画像`} className='self-stretch w-full h-[140px] object-cover'/>
      <h2 className='self-stretch font-bold text-sm leading-5'>{shopData.name}</h2>
      <p className='text-[10px] text-gray-400 leading-[14px]'>{shopData.description}</p>
      <div className='flex justify-between w-full items-center'>
        <UserCard userData={userData} />
        <FollowButton isFollow={true} />
      </div>
    </div>
  )
}

export default ShopCard