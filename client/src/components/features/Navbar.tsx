'use client';
import { NavItem } from '@/types';
import React from 'react';
import { usePathname } from "next/navigation";

const navItems: NavItem[] = [
  { title: 'ホーム', href: '/', icon: "/icon/home.png", activeIcon: "/icon/home-active.png" },
  { title: 'さがす', href: '/search', icon: "/icon/search.png", activeIcon: "/icon/search-active.png" },
  { title: '出品', href: '/post', icon: "/icon/camera.png", activeIcon: "/icon/camera-active.png" },
  { title: '支払い', href: '/payment', icon: "/icon/money.png", activeIcon: "/icon/money-active.png" },
  { title: 'セレクト', href: '/shoplist/recommended', icon: "/icon/select.png", activeIcon: "/icon/select-active.png" },
  { title: 'マイページ', href: '/profile', icon: "/icon/profile.png", activeIcon: "/icon/profile-active.png" },
];

const Navbar = () => {
  const pathname = usePathname();

  return (
    <nav className="fixed bottom-0 w-full bg-white border-t border-gray-200 z-10">
      <div className="flex justify-around">
        {navItems.map((item: NavItem) => {
          // isActiveの条件を修正
          const isActive = item.href === '/shoplist/recommended' 
            ? pathname.startsWith('/shoplist/') || pathname.startsWith('/shops/') // セレクト用の条件
            : pathname === item.href; // 他のアイテムの条件

          return (
            <a
              key={item.href}
              href={item.href}
              className="flex flex-col items-center text-gray-700 w-1/6 h-1/6"
            >
              <img
                src={isActive ? item.activeIcon : item.icon} // isActive によってアイコンを変更
                alt={item.title}
                className="w-[48px] h-[48px] mb-[32px] mt-[4px]"
              />
            </a>
          );
        })}
      </div>
    </nav>
  );
}

export default Navbar;
