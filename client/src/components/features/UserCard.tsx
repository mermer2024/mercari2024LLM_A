import { User } from '@/types';
import React from 'react';

interface UserCardProps {
  userData: User;
}

const UserCard: React.FC<UserCardProps> = ({ userData }) => {
  return (
    <div className="flex items-center">
      <img
        src={userData.image_url}
        alt={`${userData.name}のアイコン`}
        className="w-[24px] h-[24px] rounded-full mr-[6px]"
      />
      <div>
        <p className="text-[10px] font-bold">{userData.name}</p>
      </div>
    </div>
  );
}

export default UserCard;
