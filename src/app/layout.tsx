import type { Metadata } from "next";
import localFont from "next/font/local";
import "./globals.css";
import { CustomThemeProvider } from "@/components/ThemeProvider";
import { AuthProvider } from "@/contexts/AuthContext";

const anuphan = localFont({
  src: [
    { path: "../fonts/anuphan-400.ttf", weight: "400", style: "normal" },
    { path: "../fonts/anuphan-500.ttf", weight: "500", style: "normal" },
    { path: "../fonts/anuphan-600.ttf", weight: "600", style: "normal" },
    { path: "../fonts/anuphan-700.ttf", weight: "700", style: "normal" },
  ],
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
    <html lang="en" className={anuphan.variable} suppressHydrationWarning>
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
