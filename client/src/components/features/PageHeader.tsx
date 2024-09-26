'use client'
import React from 'react'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { Icons } from '../icon';
import { useRouter } from 'next/navigation';

const PageHeader = ({title}: {title: string}) => {
  const router = useRouter();

  const goBack = () => {
    router.back(); // 前のページに戻る
  };

  return (
    <div className='fixed top-0 bg-white right-0 left-0 z-10'>
      <div className='relative w-full border-b-[0.4px] [border-bottom-style:solid] border-[#818181] flex items-center justify-center  mt-12 '>
        <FontAwesomeIcon icon={Icons.back} className="absolute left-4 h-5" onClick={goBack}/>
        <h1 className='font-bold my-[12px]'>{title}
        </h1>
      </div>
    </div>
   
  )
}

export default PageHeader
