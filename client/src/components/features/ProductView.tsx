import { Product } from '@/types';
import React from 'react'
import ProductCard from './ProductCard';

interface ProductViewProps {
  products: Product[];
}

const ProductView: React.FC<ProductViewProps> = ({ products })  => {
  return (
    <div className='grid grid-cols-3 justify-items-center px-3 gap-1'>
      {products.map((product) => {
        return <ProductCard productData={product} />;
      })}
    </div>
  )
}

export default ProductView
