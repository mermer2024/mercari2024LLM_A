'use client';
import React from 'react'
import { useRouter } from 'next/navigation';

const SelectButton = () => {
  const router = useRouter();

  const handleCardClick = () => {
    router.push(`/shops/create`); // 遷移先のURLを指定
  };


  return (
    <img src="/select-button.png" alt="セレクトボタン" className='w-[56px] h-[56px] fixed right-4 bottom-[71px]' onClick={handleCardClick}/>
  )
}

export default SelectButton
