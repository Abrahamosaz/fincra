import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "Fincra",
  description: "Fincra is a platform for managing your finances",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className={`antialiased`}>{children}</body>
    </html>
  );
}
