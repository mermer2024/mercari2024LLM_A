// src/components/LoadingSpinner.tsx

import React from 'react';

const LoadingSpinner: React.FC = () => {
  return (
    <div className="fixed inset-0 flex items-center justify-center bg-white z-[1]">
      <div className="animate-spin h-10 w-10 border-4 border-gray-400 rounded-full border-t-transparent"></div>
    </div>
  );
};

export default LoadingSpinner;
