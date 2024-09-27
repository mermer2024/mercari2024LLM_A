import React from 'react'

const LoadingForAI = () => {
  return (
    <div className="fixed inset-0 flex items-center justify-center bg-white z-[1] flex-col gap-4 mx-auto">
      <h3 className='text-[14px] font-bold'>少々お待ちください…</h3>
      <img src="/loading.png" alt="" className='w-[140px] animate-float-slow' />
      <p className='text-[12px] w-[240px]'>AIが購入履歴からあなたにマッチングするセレクトショップを探しています。</p>
    </div>
  )
}

export default LoadingForAI
