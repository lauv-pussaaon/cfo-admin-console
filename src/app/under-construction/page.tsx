import Image from 'next/image';
import Link from 'next/link';

export const metadata = {
  title: 'อยู่ระหว่างการปรับปรุง | CFO Green Planet',
  description: 'เรากำลังปรับปรุงระบบเพื่อประสบการณ์ที่ดียิ่งขึ้น',
};

export default function UnderConstructionPage() {
  return (
    <main className="min-h-screen flex items-center justify-center bg-[var(--background)] text-[var(--foreground)]">
      <div className="max-w-2xl w-full px-6 py-12 text-center fade-in">
        <div className="relative mx-auto h-40 w-40 md:h-56 md:w-56 mb-8">
          <div className="absolute inset-0 rounded-full bg-emerald-500/15 blur-2xl" />
          <Image
            src="/globe.svg"
            alt="Green Planet"
            fill
            className="spin-slow drop-shadow-xl"
            priority
          />
        </div>
        <h1 className="text-3xl md:text-4xl font-semibold tracking-tight mb-3" style={{fontFamily: 'Sarabun, Inter, sans-serif'}}>
          อยู่ระหว่างการปรับปรุง
        </h1>
        <p className="text-base md:text-lg text-slate-500 dark:text-slate-300 mb-8" style={{fontFamily: 'Kanit, Inter, sans-serif'}}>
          เรากำลังปรับปรุงระบบ CFO เพื่อโลกสีเขียว ให้ดียิ่งขึ้น โปรดกลับมาใหม่เร็ว ๆ นี้
        </p>

        {/* <div className="inline-flex items-center rounded-xl border border-[var(--border)] bg-[var(--card-bg)] px-4 py-3 gap-3">
          <span className="inline-flex h-2.5 w-2.5 rounded-full bg-emerald-500 animate-pulse" />
          <span className="text-sm md:text-base" style={{fontFamily: 'Sarabun, Inter, sans-serif'}}>
            สถานะระบบ: กำลังพัฒนาเพื่อความเสถียรและความแม่นยำด้านคาร์บอนฟุตพริ้นท์
          </span>
        </div> */}

        <div className="mt-10 flex flex-col items-center gap-3 text-sm text-slate-500">
          {/* <span>
            ถ้าต้องการตรวจสอบสถานะเซิร์ฟเวอร์ โปรดเข้า <code className="px-1.5 py-0.5 rounded bg-slate-100 dark:bg-slate-800">/_health</code>
          </span> */}
          <Link href="/" className="text-emerald-600 hover:text-emerald-700 font-medium">
            กลับสู่หน้าแรกเมื่อพร้อมใช้งาน
          </Link>
        </div>
      </div>
    </main>
  );
}













