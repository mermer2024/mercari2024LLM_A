import { Shop, User } from '@/types';
import React from 'react'
import UserCard from './UserCard';
import FollowButton from './FollowButton';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { Icons } from '../icon';

interface ShopCardProps {
  shopData: Shop;
  userData: User;
}

const ShopHeader: React.FC<ShopCardProps> = ({ shopData, userData }) => {
  return (
    <div className='w-full flex flex-col mt-12 items-center mb-[37px]'>
      <div className='relative w-full border-b-[0.4px] [border-bottom-style:solid] border-[#818181] flex items-center justify-center'>
        <FontAwesomeIcon icon={Icons.back} className="absolute left-4 h-5" />
        <h1 className='font-bold my-[12px]'>{shopData.name}
        </h1>
      </div>
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
