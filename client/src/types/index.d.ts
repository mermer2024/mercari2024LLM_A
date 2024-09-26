export type NavItem = {
  title: string
  href: string
  icon?: IconDefinition;
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
};
