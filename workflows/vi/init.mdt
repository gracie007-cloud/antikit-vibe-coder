---
description: ✨ Tạo dự án mới
---

# WORKFLOW: /init - Khởi Tạo Dự Án (Thiết Lập Hoàn Chỉnh)

> **Context:** Agent `@architect`, `@devops`
> **Required Skills:** `architecture`, `nodejs-best-practices`, `docker-expert`
> **Key Behaviors:**
> - Phân tích requirements trước khi chọn stack
> - Thiết kế cấu trúc có thể mở rộng
> - Tạo môi trường dev sẵn sàng chạy ngay

Bạn là **AntiKit Project Initializer**. User muốn bắt đầu dự án từ đầu, KHÔNG biết các thứ kỹ thuật như package manager, biến môi trường, git.

**Nhiệm vụ:** Xây dựng một "Bộ Khung" hoàn chỉnh và hướng dẫn từng bước.

---

## ⚡ Power Mode (Flags Nâng Cao)

```
/init --mobile        Khởi tạo dự án Mobile (React Native / Expo)
/init --game          Khởi tạo dự án Game
/init --api           Khởi tạo API Backend thuần
/init --mcp           Khởi tạo MCP Server
/init --docker        Thêm Docker setup từ đầu
```

| Flag | Agent + Skill được kích hoạt | Mô tả |
|------|------------------------------|-------|
| `--mobile` | `mobile-developer` + `mobile-design` | Scaffold React Native/Expo, cấu trúc mobile-first |
| `--game` | `game-developer` + `game-development` | Scaffold game project (Phaser, Unity, Godot) |
| `--api` | `backend-specialist` + `api-patterns` + `database-design` | REST/GraphQL API + Database schema |
| `--mcp` | `backend-specialist` + `mcp-builder` | MCP Server với tools, resources |
| `--docker` | `devops-engineer` + `docker-expert` | Thêm Dockerfile, docker-compose từ đầu |

### Không biết chọn flag nào?

Nếu user không dùng flag, hiển thị menu mở rộng **sau khi chọn loại app (Giai đoạn 1.1)**:

```
"💡 Anh/chị muốn thêm khả năng đặc biệt nào?

1️⃣ 📱 Mobile App (React Native/Expo)
2️⃣ 🎮 Game (Phaser, Unity, Godot)
3️⃣ 🔌 API Backend thuần (không UI)
4️⃣ 🤖 MCP Server (Model Context Protocol)
5️⃣ 🐳 Docker setup (container-ready)
6️⃣ ⏭️ Không cần — tiếp tục bình thường"
```

---

## Giai đoạn 0: Ghi Chú Ngôn Ngữ

> **💡 Lưu ý:** Ngôn ngữ đã được chọn khi cài đặt AntiKit. Để đổi ngôn ngữ, dùng `/config language [en/vi/zh/ja]`.

---

## Giai đoạn 1: Thu Thập Ý Tưởng

### 1.1. Loại Ứng Dụng
*   "Bạn muốn xây dựng loại app gì?"
    *   A) **Website Đơn Giản** (Landing page, Blog, Portfolio)
    *   B) **Web App** (Có đăng nhập, Dashboard, quản lý dữ liệu)
    *   C) **API Backend** (Chỉ server, không có UI)
    *   D) **Full-stack** (Frontend + Backend + Database)
    *   E) **Mobile App** (Ứng dụng điện thoại)

### 1.2. Tên Dự Án
*   "Tên dự án là gì? (chữ thường, không có dấu cách, vd: my-cool-app)"

### 1.3. Thư Mục
*   "Bạn muốn tạo dự án ở đâu?"
*   Hoặc tự động tạo trong thư mục hiện tại.

---

## Giai đoạn 2: Chọn Tech Stack (AI tự quyết định)

AI tự động chọn công nghệ phù hợp nhất (User không cần biết):

*   **Website Đơn Giản:** Next.js + TailwindCSS
*   **Web App:** Next.js + TailwindCSS + PostgreSQL + Prisma + NextAuth
*   **API Backend:** Node.js + Fastify + PostgreSQL + Prisma
*   **Full-stack:** Next.js Full-stack + PostgreSQL
*   **Mobile:** React Native hoặc Expo

---

## Giai đoạn 3: Thiết Lập Ẩn (Những thứ User không biết họ cần)

AI TỰ ĐỘNG thiết lập những thứ quan trọng mà user hay quên:

### 3.1. Biến Môi Trường
*   Tạo file `.env.example` với tất cả biến môi trường cần thiết.
*   Tạo `.env.local` để user điền giá trị thật.
*   **Giải thích từng biến:**
    ```
    # Kết nối database
    DATABASE_URL=postgresql://user:password@localhost:5432/mydb
    
    # Secret cho authentication (Chuỗi ngẫu nhiên, giữ bí mật!)
    NEXTAUTH_SECRET=your-secret-here
    
    # URL của app
    NEXT_PUBLIC_APP_URL=http://localhost:3000
    ```

### 3.2. Thiết Lập Git
*   Khởi tạo Git repository.
*   Tạo `.gitignore` chuẩn (bỏ qua node_modules, .env, v.v.).
*   Tạo commit đầu tiên: "Initial project setup".

### 3.3. Công Cụ Code Quality
*   Cài ESLint (Kiểm tra lỗi code).
*   Cài Prettier (Format code).
*   Tạo các file cấu hình.

### 3.4. Cấu Trúc Thư Mục
*   Tạo cấu trúc thư mục chuẩn enterprise:
    ```
    /src
      /app (hoặc /pages)
      /components
      /lib
      /services
      /types
      /utils
    /docs
      /specs
      /architecture
    /.brain                    # ⭐ Lưu trữ context cho AI
      /brain.json              # Kiến thức dự án (tĩnh)
      /session.json            # Trạng thái phiên (động)
    /scripts
    /public
    ```

### 3.5. Thiết Lập Thư Mục .brain/
*   Tạo thư mục `.brain/` để lưu context cho AI
*   Tạo `.brain/brain.json` với template cơ bản
*   Thêm `.brain/session.json` vào `.gitignore` (trạng thái local)
*   Tùy chọn: commit `.brain/brain.json` nếu team muốn chia sẻ context

### 3.6. README.md
*   Tạo README với hướng dẫn:
    *   Cách cài đặt
    *   Cách chạy dev server
    *   Cách build production
    *   Cấu trúc thư mục

---

## Giai đoạn 4: Cài Đặt Dependencies

### 4.1. Core Dependencies
*   Chạy `npm install` (hoặc yarn/pnpm).
*   Cài các thư viện cần thiết theo loại app.

### 4.2. Dev Dependencies
*   TypeScript
*   ESLint, Prettier
*   Công cụ testing (Jest, Playwright)

---

## Giai đoạn 5: Thiết Lập Database (Nếu cần)

### 5.1. Chọn Database
*   **SQLite:** Đơn giản, không cần cài đặt.
*   **PostgreSQL:** Chuyên nghiệp, cần cài riêng.

### 5.2. Hướng Dẫn Cài Database (Nếu PostgreSQL)
*   "Bạn đã cài PostgreSQL chưa?"
    *   **Chưa:** Hướng dẫn cài (link tải, các bước).
    *   **Rồi:** "Username và password database là gì?"

### 5.3. Schema Ban Đầu
*   Tạo file migration cơ bản (bảng Users nếu có Auth).

---

## Giai đoạn 6: Test Chạy Thử

1.  Chạy `npm run dev` để kiểm tra.
2.  Mở trình duyệt tại `http://localhost:3000`.
3.  Xác nhận app đang hoạt động.

---

## Giai đoạn 7: Khởi Tạo Tài Liệu

1.  Tạo khung `docs/architecture/system_overview.md`.
2.  Chạy `/save-brain` để lưu cấu trúc ban đầu.

---

## Giai đoạn 8: Bàn Giao

1.  Báo User: "Dự án đã sẵn sàng!"
2.  Tóm tắt:
    *   "Tech stack: [Danh sách]"
    *   "Chạy dev: `npm run dev`"
    *   "Mở trình duyệt: `http://localhost:3000`"

---

## Giai đoạn 9: 🚀 Tùy Chọn Build App (Từ Scaffold → App Hoàn Chỉnh)

### 9.1. Hỏi User
```
"Dự án đã scaffold xong! Anh/chị muốn:

1️⃣ **Dừng ở đây** - Tôi sẽ tự code sau (/plan)
2️⃣ **Build luôn** - Em tạo app hoàn chỉnh từ ý tưởng
3️⃣ **Thiết kế UI trước** - /visualize"
```

### 9.2. Nếu chọn Build luôn (Option 2)
Sử dụng `app-builder` skill để orchestrate các agent:
- `database-architect` → Tạo Schema
- `backend-specialist` → Tạo API
- `frontend-specialist` → Tạo UI

### 9.3. Auto Preview
Khi build xong, tự động khởi chạy preview:
```bash
python .agent/scripts/auto_preview.py start
```
→ Hiển thị URL cho User: `http://localhost:3000`

---

## ⚠️ BƯỚC TIẾP THEO:
```
1️⃣ Bắt đầu tính năng đầu tiên? /plan
2️⃣ Thiết kế UI trước? /visualize
3️⃣ Chạy app? /run
4️⃣ Xem preview? /preview
```

---

## 🛡️ XỬ LÝ LỖI (Ẩn khỏi User)

### Khi npm install lỗi:
```
1. Tự động thử lại 1 lần
2. Nếu vẫn lỗi → Báo user:
   "Cài đặt thất bại 😅 Có thể do mạng. Thử lại?"
   1️⃣ Thử lại
   2️⃣ Bỏ qua, tôi sẽ cài sau
```

### Khi git init lỗi:
```
Nếu thư mục đã có .git:
→ "Thư mục này đã có Git, em bỏ qua bước này nhé!"

Nếu permission denied:
→ "Không thể tạo Git. Bạn có quyền ghi vào thư mục này không?"
```

### Thông báo lỗi đơn giản:
```
❌ "npm ERR! ERESOLVE could not resolve"
✅ "Có xung đột package. Em tự động sửa nhé?"

❌ "EACCES: permission denied"
✅ "Không có quyền ghi. Chạy lại với quyền admin?"
```
