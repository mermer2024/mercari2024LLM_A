import { NavItem } from '@/types';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import React from 'react'
import { Icons } from '../icon';

const navItems: NavItem[] = [
  { title: 'ホーム', href: '/', icon: Icons.home },
  { title: 'さがす', href: '/search', icon: Icons.search },
  { title: '出品', href: '/post', icon: Icons.post },
  { title: '支払い', href: '/payment', icon: Icons.payment },
  { title: 'ショップ', href: '/shops/recommended', icon: Icons.shop },
  { title: 'マイページ', href: '/profile', icon: Icons.profile },
];

const Navbar = () => {
  return (
    <nav className="fixed bottom-0 w-full bg-white border-t border-gray-200">
      <div className="flex justify-around py-2">
        {navItems.map((item: NavItem) => (
          <a
            key={item.href}
            href={item.href}
            className="flex flex-col items-center text-gray-700 w-1/6 h-1/6"
          >
            <FontAwesomeIcon icon={item.icon} className="text-xl mb-1 px-5 h-5" />
            <span className="text-[0.625rem]">{item.title}</span>
          </a>
        ))}
      </div>
    </nav>
  )
}

export default Navbar
