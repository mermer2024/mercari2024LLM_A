import CreateShopForm from '@/components/features/CreateShopForm'
import PageHeader from '@/components/features/PageHeader'
import React from 'react'

const page = () => {
  return (
    <div className='mt-[97px]'>
      <PageHeader title='セレクトショップを作る' />
      <CreateShopForm />
    </div>
  )
}

export default page
