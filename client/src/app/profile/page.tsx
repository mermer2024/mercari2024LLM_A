import { purchaseHistoryData } from '@/components/dummyData'
import PageHeader from '@/components/features/PageHeader'
import PurchaseCard from '@/components/features/PurchaseCard'
import React from 'react'

const page = () => {
  return (
    <div className='mt-[112px]'>
      <PageHeader title='購入した商品' />
      <div className='flex gap-[17px] my-[13px] ml-[21px]'>
        <input type="checkbox" id="name"/>
        <label className='text-[14px]'>取引中の商品</label>
      </div> 
      {purchaseHistoryData.map((purchase) => {
        return <PurchaseCard purchaseData={purchase} />;
      })}
    </div>
  )
}

export default page
