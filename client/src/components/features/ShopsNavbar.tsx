'use client';
import React, { useState } from 'react';
import Link from 'next/link';

const ShopsNavbar = () => {
  const [activeTab, setActiveTab] = useState('recommended');

  const handleTabClick = (tab: string) => {
    setActiveTab(tab);
  };

  return (
    <nav className='fixed top-0 w-full z-10'>
      <div className="flex items-center justify-between px-4 py-5 relative pt-12 border-b-[0.4px] [border-bottom-style:solid] border-[#818181] bg-white">
        <Link href="/shoplist/featured">
          <div 
            className={`flex w-[100px] items-center justify-center gap-2.5 px-2.5 py-1 rounded-[14px] ${activeTab === 'featured' ? 'bg-mercari' : 'bg-white'}`} 
            onClick={() => handleTabClick('featured')}
          >
            <div className={`relative w-fit mt-[-1.00px] font-bold text-${activeTab === 'featured' ? 'white' : 'gray-400'} text-xs tracking-[0] leading-5 whitespace-nowrap`}>
              特集記事
            </div>
          </div>
        </Link>
        <Link href="/shoplist/recommended">
          <div 
            className={`flex w-[100px] items-center justify-center gap-2.5 px-2.5 py-1 rounded-[14px] ${activeTab === 'recommended' ? 'bg-mercari' : 'bg-white'}`} 
            onClick={() => handleTabClick('recommended')}
          >
            <div className={`relative w-fit mt-[-1.00px] font-bold text-${activeTab === 'recommended' ? 'white' : 'gray-400'} text-xs tracking-[0] leading-5 whitespace-nowrap`}>
              おすすめ
            </div>
          </div>
        </Link>
        <Link href="/shoplist/search">
          <div 
            className={`flex w-[100px] items-center justify-center gap-2.5 px-2.5 py-1 rounded-[14px] ${activeTab === 'search' ? 'bg-mercari' : 'bg-white'}`} 
            onClick={() => handleTabClick('search')}
          >
            <div className={`relative w-fit mt-[-1.00px] font-bold text-${activeTab === 'search' ? 'white' : 'gray-400'} text-xs tracking-[0] leading-5 whitespace-nowrap`}>
              検索
            </div>
          </div>
        </Link>
      </div>
    </nav>
  );
};

export default ShopsNavbar;
