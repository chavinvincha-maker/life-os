# Life OS — Gentle Bloom v3 (Prototype)

เว็บต้นแบบ Responsive สำหรับ GitHub Pages สร้างด้วย HTML, CSS และ JavaScript โดยไม่ต้อง build step

## ไฟล์
- `index.html` — โครงหน้าและเมนู 10 ส่วน
- `styles.css` — Design System และ responsive layout
- `app.js` — ข้อมูลตัวอย่างและ interaction
- `manifest.json` — metadata สำหรับ Add to Home Screen

## ข้อควรรู้
- ข้อมูลจัดเก็บใน `localStorage` ของเบราว์เซอร์ ไม่มี Cloud Sync หรือบัญชีผู้ใช้
- Storage key เดิม `lifeos-elegant-v1` ถูกคงไว้เพื่อช่วยให้เข้าถึงข้อมูลเดิมในเบราว์เซอร์เดียวกันได้ แต่ยังต้องทดสอบกับไฟล์ backup จริงก่อนย้ายข้อมูล
- ควร Export JSON ก่อนแทนที่ไฟล์เดิมบน GitHub Pages
- ธีม Light, Pastel Pink, Sage, Lavender และ Dark ใช้งานได้
- การตั้งภาษา English เป็นเพียงการบันทึกค่าที่เลือก เนื้อหาทั้งหมดยังไม่ได้แปลครบ
- ไม่มี Push Notifications, Cloud Backup, authentication หรือ Face ID
- ตัวเลขเริ่มต้นเป็นข้อมูลตัวอย่าง ไม่ใช่ข้อมูลการเงินจริง

## เผยแพร่ผ่าน GitHub Pages
วางไฟล์ทั้ง 5 ไฟล์ไว้ที่ root ของ branch `main` และตั้ง Pages เป็น `Deploy from a branch` → `main` → `/(root)`

## ปรับปรุงรอบนี้
- คง storage key `lifeos-elegant-v1` เพื่อไม่ตัดขาดข้อมูลเดิมในเบราว์เซอร์เดียวกัน
- เพิ่มการตรวจไฟล์นำเข้าก่อนแทนที่ และดาวน์โหลดข้อมูลปัจจุบันเป็นไฟล์ก่อนนำเข้า
- ป้องกันคำศัพท์ซ้ำ และจำกัดความคืบหน้าเป้าหมายให้อยู่ในช่วง 0–100
- ปรับโทนสีตาม Gentle Bloom, focus ที่มองเห็นได้, ลด motion ตามค่าระบบ และเพิ่มพื้นที่สัมผัสบนมือถือ
- การนำเข้ายังควรทดลองกับไฟล์สำเนาก่อนเสมอ; ไม่ได้เปิดเผยแพร่เว็บหรือทดสอบบนอุปกรณ์จริงจากการสร้างไฟล์นี้
