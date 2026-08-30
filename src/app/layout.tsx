import type { Metadata } from "next";
import { Anuphan } from "next/font/google";
import "./globals.css";
import { CustomThemeProvider } from "@/components/ThemeProvider";
import { AuthProvider } from "@/contexts/AuthContext";

const anuphan = Anuphan({
  subsets: ["thai", "latin"],
  weight: ["400", "500", "600", "700"],
  display: "swap",
  variable: "--font-anuphan",
});

export const metadata: Metadata = {
  title: "CFO Admin Console",
  description: "Admin console for managing organizations and system users",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" className={anuphan.variable}>
      <body className="antialiased">
        <CustomThemeProvider>
          <AuthProvider>
            {children}
          </AuthProvider>
        </CustomThemeProvider>
      </body>
    </html>
  );
}
