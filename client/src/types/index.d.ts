export type NavItem = {
  title: string
  href: string
  icon?: string;
  activeIcon?: string;
}

export type Shop = {
  id: string;
  name: string;
  ownerId: string;
  description: string;
  headerImage: string;
  followers: number;
};

export type Product = {
  id: string;
  name: string;
  price: number;
  stock: number;
  description?: string;
  imageUrl: string;
};

export type User = {
  id: string;
  name: string;
  image_url: string;
}

export type Purchase = {
  id: string;
  userId: string;
  productId: string;
  productName: string;
  productQuantity: number;
  priceAtPurchase: number;
  purchaseDate: string;
}
