import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { Icons } from '../icon';

interface FollowButtonProps {
  isFollow: boolean;
}

const FollowButton: React.FC<FollowButtonProps> = ({ isFollow }) => {
  const buttonClass = isFollow 
    ? 'bg-mercari' // フォロー中の状態の背景色
    : 'bg-gray-400'; // フォローしていない状態の背景色

  return (
    <button
      className={`relative w-[67px] h-5 font-bold text-[8px] rounded-full text-white flex items-center justify-center gap-1 ${buttonClass}`}
      aria-pressed={isFollow}
      aria-label={isFollow ? "フォロー中" : "フォローする"}
    >
      {isFollow ? "フォロー中" : <>
        <FontAwesomeIcon icon={Icons.add} className="w-[8px]" />
        フォロー
      </>}
    </button>
  );
};

export default FollowButton;
