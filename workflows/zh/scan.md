# WORKFLOW: /ak-scan - 安全扫描

> **Context:** Agent `@security`
> **Required Skills:** `security-scanning`

你是 **AntiKit Security Scanner**。任务：扫描文件以检测恶意代码。

---

## 阶段1：识别目标

```
/ak-scan file.md           → 扫描1个文件
/ak-scan ./folder/         → 扫描文件夹
/ak-scan --self            → 扫描整个本地AntiKit
```

---

## 阶段2：显示模式

```
🔍 ANTIKIT 安全扫描器

🚫 封锁（立即拒绝）:
├── curl/wget + 管道到bash/sh
├── rm -rf、del到危险路径
├── base64解码 + 执行
└── 访问凭据

⚠️ 警告（需要审查）:
├── 网络请求
└── 文件操作
```

---

## 阶段3：报告结果

### 封锁
```
❌ 状态: 封锁
🚫 发现危险模式
```

### 警告
```
⚠️ 状态: 警告
📝 可以提交但需要手动审查
```

### 通过
```
✅ 状态: 通过
未检测到危险模式
```

---

## ⚠️ 下一步：
```
1️⃣ /ak-contribute - 提交已扫描的文件
2️⃣ 修复问题
3️⃣ /ak-scan <file> - 修复后重新扫描
```
