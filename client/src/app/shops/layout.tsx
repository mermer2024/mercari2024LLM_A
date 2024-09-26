import ShopsNavbar from "@/components/features/ShopsNavbar";

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
      <>
        <ShopsNavbar />
        {children}
      </>
  );
}
