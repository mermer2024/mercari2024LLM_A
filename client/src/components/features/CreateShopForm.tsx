'use client';
import React, { useState } from 'react';
import { Icons } from '../icon';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';

// 商品の型定義
interface Product {
  id: string;
  name: string;
}

const CreateShopForm: React.FC = () => {
  const [shopName, setShopName] = useState<string>('');
  const [shopDescription, setShopDescription] = useState<string>('');
  const [headerImage, setHeaderImage] = useState<string | null>(null);
  const [selectedProduct, setSelectedProduct] = useState<string | null>('');

  const handleSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    // ここでフォームデータを送信する処理を書く
    console.log({
      shopName,
      shopDescription,
      headerImage,
      selectedProduct,
    });
  };

  return (
    <div className="p-4">
      <form onSubmit={handleSubmit} className="flex flex-col gap-5">
        <div>
          <label className="block mb-1 font-semibold text-[13px]">ショップ名</label>
          <input
            type="text"
            value={shopName}
            onChange={(e) => setShopName(e.target.value)}
            required
            placeholder='必須 (40文字まで)'
            className="border border-gray-300 p-2 rounded w-full h-[52px] text-[14px]focus:border-none focus:outline-none"
          />
        </div>

        <div>
          <label className="block mb-1 font-semibold text-[13px]">ショップの説明</label>
          <textarea
            value={shopDescription}
            onChange={(e) => setShopDescription(e.target.value)}
            required
            placeholder='例）ミッドセンチュリーの家具を主にセレクトしていますので、ぜひ一度、訪れてみてください！'
            className="border border-gray-300 p-3 rounded w-full h-[68px] text-[14px] focus:outline-none"
          />
        </div>

        <div className='relative'>
          <label className="block mb-1 font-semibold text-[13px]">ヘッダー画像</label>
          <input
            type="text"
            onChange={(e) => setHeaderImage(e.target.value)}
            className="border border-gray-300 p-2 rounded w-full h-[160px] bg-[#f5f5f5] focus:border-none focus:outline-none"
          />
          <div className="absolute left-1/2 top-1/2 transform -translate-x-1/2">
            <FontAwesomeIcon icon={Icons.post} className="text-gray-400 text-[24px]" />
          </div>
          {headerImage && (
            <img
              src={headerImage}
              alt="ヘッダー画像プレビュー"
              className="mt-2 w-full h-auto rounded"
            />
          )}
        </div>

        <div className='mb-8'>
          <label className="block mb-1 font-semibold text-[13px]">セレクトする商品を選ぶ</label>
          <div className='w-[80px] h-[80px] flex items-center justify-center bg-[#f5f5f5] rounded-[4px] mb-2'>
            <FontAwesomeIcon icon={Icons.search} className="text-gray-400 text-[20px]" />
          </div>
          <p className='text-[13px] text-[#30B2FF]'>※商品は後で追加することもできます。</p>
        </div>

        <div className='flex gap-4'>
          <button
            type="submit"
            className="text-mercari py-2 rounded-[4px] border-mercari border-[1px] text-[14px] h-[43px] flex-grow font-bold"
          >
            下書きに保存
          </button>
          <button
            type="submit"
            className="text-white py-2 rounded-[4px] text-[14px] h-[43px] flex-grow bg-mercari font-bold"
          >
            セレクトショップ作成
          </button>
        </div>
      </form>
    </div>
  );
};

export default CreateShopForm;
