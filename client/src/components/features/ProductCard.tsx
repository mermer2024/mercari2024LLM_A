import { Product } from '@/types';
import React from 'react'

interface ProductCardProps {
  productData: Product;
}

const ProductCard: React.FC<ProductCardProps> = ({ productData }) => {
  return (
    <div className='w-[116px]'>
      {/* <h3 className='font-bold text-[14px] text-center'>{productData.caption}</h3> */}
      <div className='relative'>
        <img
          src={productData.imageUrl}
          alt={`${productData.name}の画像`}
          className="self-stretch w-full h-[116px] object-cover rounded-[4px]"
        />
        <div className='inline-flex bg-[#1e1e1e66] rounded-[0px_11px_11px_4px] px-2 absolute bottom-0 left-0'>
          <p className='text-sm font-bold text-white'>
            ￥{productData.price}
          </p>
        </div>
      </div>
    </div>
  )
}

export default ProductCard
