# เริ่มใช้งาน Cloud Sync — Life OS Gentle Bloom

## สิ่งที่ทำไว้ในชุดนี้
- เพิ่ม Master Calendar มุมมองเดือนบน Dashboard เลือกวัน ดูงาน และเพิ่มงานลงวันที่เลือกได้
- งานเสร็จแสดงจางพร้อมเครื่องหมาย ✓
- เพิ่มหน้าตั้งค่าเชื่อม Supabase URL / Publishable (หรือ anon) key, สมัคร/เข้าสู่ระบบ และซิงก์ workspace
- ข้อมูลในเบราว์เซอร์ยังสำรองด้วย localStorage และไฟล์ JSON เหมือนเดิม

## ตั้งค่า Supabase (จำเป็นก่อน Cloud Sync จะทำงาน)
1. สร้างโปรเจกต์ที่ https://supabase.com/ และเปิด Authentication → Providers → Email
2. ไปที่ SQL Editor แล้วรันไฟล์ `supabase_schema.sql` ทั้งไฟล์
3. คัดลอก Project URL และ Publishable key (หรือ legacy anon key) จาก Project Settings → API
4. เปิดเว็บไซต์ แล้วไปที่ ตั้งค่า → บัญชีและ Cloud Sync กรอก URL และ key กด “เชื่อมต่อโปรเจกต์”
5. สมัครบัญชีด้วยอีเมล/รหัสผ่าน หรือเข้าสู่ระบบบัญชีเดิม จากนั้นกด “ซิงก์ตอนนี้”
6. ใช้อีเมลบัญชีเดียวกันบน iPhone และ MacBook เพื่อเข้าถึง workspace เดียวกัน

## สำคัญก่อนใช้ข้อมูลจริง
- สำรอง JSON ก่อนย้ายข้อมูลหรือเปิด Cloud Sync
- โครงสร้างปัจจุบันซิงก์ payload ทั้ง workspace ในแถวเดียวต่อผู้ใช้ เหมาะกับ MVP ส่วนตัว ไม่เหมาะกับการแก้ไขพร้อมกันหลายอุปกรณ์แบบ real-time; ให้กดซิงก์/รีโหลดหลังสลับอุปกรณ์
- RLS จำกัดแถวตาม `auth.uid()` แต่ต้องตรวจสอบการตั้งค่า Supabase และทดสอบบัญชีจริงก่อนเก็บข้อมูลสำคัญ
- อย่าใส่ `service_role` key ในเว็บไซต์เด็ดขาด ใช้เฉพาะ publishable/anon key
- หากเปิด Email confirmation ใน Supabase ต้องยืนยันอีเมลก่อนเข้าสู่ระบบ
- ยังไม่ได้ deploy เว็บไซต์ และยังไม่ได้ทดสอบกับโปรเจกต์ Supabase จริง เพราะต้องใช้ Project URL/key ของเจ้าของบัญชี

## ไฟล์หลัก
- `index.html`, `styles.css`, `app.js` — แอป
- `supabase_schema.sql` — ตารางและ RLS policy
- `CLOUD_SETUP_TH.md` — คู่มือตั้งค่า
- `BACKUP_BEFORE_CHANGES.zip` — สำเนา ZIP ต้นฉบับก่อนปรับปรุง (แนบในชุดดาวน์โหลดแยกต่างหาก)
