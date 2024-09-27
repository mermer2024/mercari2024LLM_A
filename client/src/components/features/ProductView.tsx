import { Product } from '@/types';
import React from 'react';
import ProductCard from './ProductCard';
import DetailedProductCard from './DetailedProductCard'; // 詳細説明用のコンポーネントをインポート

interface ProductViewProps {
  products: Product[];
}

const ProductView: React.FC<ProductViewProps> = ({ products }) => {
  return (
    <div className='px-3'>
      {products.length > 0 && (
        <DetailedProductCard productData={products[0]} /> 
      )}
      <div className='grid grid-cols-3 justify-items-center  gap-1'>
        {products.slice(1).map((product) => ( 
          <ProductCard key={product.id} productData={product} />
        ))}
      </div>
    </div>
  );
};

export default ProductView;
