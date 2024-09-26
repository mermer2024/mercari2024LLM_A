import ShopsNavbar from "@/components/features/ShopsNavbar";

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
      <div className="bg-[#f5f5f5] mt-[96px]">
        <ShopsNavbar />
        {children}
      </div>
  );
}
