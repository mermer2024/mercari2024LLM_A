import React from 'react'
import { Product } from '@/types';

interface DetailedProductCardProps {
  productData: Product;
}

const DetailedProductCard: React.FC<DetailedProductCardProps> = ({ productData })=> {
  return (
    <div className='flex gap-[10px] px-[12px] py-[12px] shadow-[0px_2px_8px_#00000020] rounded-[8px] items-center mb-8'>
      <div className='w-[80px] relative flex-shrink-0 h-[80px]'>
        <img
          src={productData.imageUrl}
          alt={`${productData.name}の画像`}
          className="self-stretch w-full h-[80px] object-cover rounded-[8px]"
        />
        <div className='inline-flex bg-[#1e1e1e66] rounded-[0px_11px_11px_8px] px-2 absolute bottom-0 left-0'>
          <p className='text-sm font-bold text-white'>
            ￥{productData.price}
          </p>
        </div>
      </div>
      <div>
        <h3 className='text-[14px] font-bold mb-1'>{productData.name}</h3>
        <p className='text-[10px] text-[#999]'>{productData.description}</p>
      </div>
    </div>
  )
}

export default DetailedProductCard
