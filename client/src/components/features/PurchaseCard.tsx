import { Purchase } from '@/types';
import React from 'react'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { Icons } from '../icon';

interface PurchaseCardProps {
  purchaseData: Purchase;
}

const PurchaseCard: React.FC<PurchaseCardProps> = ({ purchaseData}) => {
  // 日付を整形する関数
const formatDate = (isoDateString:string) => {
  const date = new Date(isoDateString); // ISO 8601形式の日付文字列をDateオブジェクトに変換

  const year = date.getFullYear(); // 年を取得
  const month = String(date.getMonth() + 1).padStart(2, '0'); // 月を取得（0始まりのため+1し、2桁に整形）
  const day = String(date.getDate()).padStart(2, '0'); // 日を取得（2桁に整形）
  const hours = String(date.getHours()).padStart(2, '0'); // 時を取得（2桁に整形）
  const minutes = String(date.getMinutes()).padStart(2, '0'); // 分を取得（2桁に整形）

  return `${year}/${month}/${day} ${hours}:${minutes}`; // 整形された日付を返す
};

  return (
    <div className='flex items-center p-[16px] gap-4 border-t-[0.4px] [border-bottom-style:solid] border-[#cacaca]'>
      <img
        src={purchaseData.productImageUrl}
        alt={`${purchaseData.productName}のヘッダー画像`}
        className="self-stretch w-[64px] h-[64px] object-cover rounded-[4px]"
      />
      <div>
        <h3 className='text-[12px] mb-[5px]'>{purchaseData.productName}</h3>
        <div className='flex gap-[4px] items-center'> 
          <img src="/icon/time.png" alt="時計のアイコン" className="h-3"/>
          <p className='text-[12px]'>{formatDate(purchaseData.purchaseDate)}</p>
        </div>
      </div>
      <FontAwesomeIcon icon={Icons.back} className="h-5 transform rotate-180 ml-auto"/>
    </div>
  )
}

export default PurchaseCard
