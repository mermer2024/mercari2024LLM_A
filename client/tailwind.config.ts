import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./src/pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/components/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      colors: {
        background: "var(--background)",
        foreground: "var(--foreground)",
        mercari: "var(--mercari)",
      },
      keyframes: {
        sway: {
          '0%, 100%': { transform: 'translateX(0px)' }, // 初期位置と終了位置
          '50%': { transform: 'translateX(10px)' }, // 中間で少し右に移動
        },
        float: {
          '0%, 100%': { transform: 'translateY(0px)' }, // 初期位置と終了位置
          '50%': { transform: 'translateY(-8px)' }, // 中間で少し上に移動
        },
      },
      animation: {
        'sway-slow': 'sway 3s ease-in-out infinite', // 横揺れのアニメーション
        'float-slow': 'float 2.5s ease-in-out infinite', // 上下揺れのアニメーション
      },
    },
  },
  plugins: [],
};
export default config;

