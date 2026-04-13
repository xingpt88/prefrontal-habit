# Prefrontal Habit — 前额叶修复习惯养成教练

一个基于 Hermes Agent 的 AI 习惯教练，帮助你养成修复前额叶（提升专注力、减少碎片化信息摄入、建立用脑卫生）的日常习惯。

## 功能

- 根据个人情况生成个性化习惯计划
- 每日打卡跟踪（积分制激励）
- 每周自动复盘，分析坚持情况
- 实时教练模式——随时汇报状态获得反馈
- 支持 Obsidian 笔记同步

---

## 安装

### 方式一：直接克隆（推荐）

```bash
# 克隆到本地
git clone https://github.com/YOUR_USERNAME/hermes-prefrontal-habit.git
cd hermes-prefrontal-habit

# 一键安装（复制到 Hermes skills 目录）
make install
# 或者手动执行
cp -r prefrontal-habit ~/.hermes/skills/
```

### 方式二：手动安装

```bash
# 1. 确保 Hermes skills 目录存在
mkdir -p ~/.hermes/skills/productivity

# 2. 复制整个 skill 目录
cp -r prefrontal-habit ~/.hermes/skills/productivity/prefrontal-habit

# 3. 验证安装
ls ~/.hermes/skills/productivity/prefrontal-habit/
# 应看到: SKILL.md references/ scripts/ templates/
```

### 方式三： submodule（如果你有主 Hermes 配置仓库）

```bash
cd ~/your-hermes-config
git submodule add https://github.com/YOUR_USERNAME/hermes-prefrontal-habit.git ~/.hermes/skills/productivity/prefrontal-habit
git submodule init
```

---

## 使用

### 激活方式

在 Hermes 对话中说出（或打出）以下任意触发词：

| 触发词 | 效果 |
|--------|------|
| `帮我制定前额叶修复计划` | AI 分析你的情况，生成个性化习惯清单 |
| `打卡` / `今天打卡` | 启动每日打卡流程 |
| `本周复盘` | 触发每周复盘，分析本周数据 |
| `我的习惯数据` | 查看当前积分和完成率 |
| `我要戒掉短视频` | 启动针对性习惯建议 |
| `专注力训练` | 提供专注力训练方法和建议 |

### 首次使用流程

1. **说"帮我制定前额叶修复计划"**
2. **AI 会询问你的基本情况**（每日刷手机时长、主要症状、作息）
3. **AI 从习惯库中选择 2-4 个适合你的习惯**，制定第一周计划
4. **每天说"打卡"**，AI 引导你逐项记录
5. **每周日说"本周复盘"**，AI 分析数据并给出下周建议

---

## 习惯候选库

### 基础习惯（新入用户选 2-4 个）

- 🌙 睡前 1 小时不看任何屏幕
- 📱 刷手机设置计时器（不超过 X 分钟/天）
- 🧘 每天冥想至少 5 分钟
- 🏃 每天运动至少 30 分钟
- 🌅 早起后先做 1 件重要的事再看手机

### 进阶习惯（基础习惯坚持 2 周后加入）

- 📖 每天阅读纸质书 30 分钟
- 😴 每天留出 30 分钟"无聊时间"（什么都不做）
- 📝 记录"今日 3 件好事"
- 🚶 深度散步（不带手机）30 分钟

### 深度习惯（进阶用户）

- ✍️ 每周写一篇长文（至少 1000 字）
- 📵 每月进行 2-3 天数字排毒（完全脱离社交网络）
- 🧠 建立第二大脑（Obsidian/笔记系统）处理琐事

---

## 积分系统

每完成一项习惯获得对应积分：

| 习惯类型 | 单次得分 | 连续 7 天额外奖励 |
|----------|----------|-------------------|
| 基础习惯 | +2 分 | +10 分 |
| 进阶习惯 | +3 分 | +15 分 |
| 深度习惯 | +5 分 | +25 分 |
| 主动复盘 | — | +5 分 |

### 每周目标参考

| 等级 | 周积分目标 | 说明 |
|------|-----------|------|
| 🥉 及格 | 30 分 | 保持习惯不断 |
| 🥈 良好 | 50 分 | 形成节奏 |
| 🥇 优秀 | 70 分 | 习惯已稳固 |

---

## 数据存储

习惯数据默认保存在本地：

```bash
~/.hermes/data/prefrontal-habit/
├── daily_log.md      # 每日打卡记录
├── weekly_review.md  # 每周复盘
└── habits.json       # 习惯配置和积分统计
```

如果你使用 Obsidian，可以在 Vault 中创建同名文件，AI 会自动同步。

---

## 目录结构

```
prefrontal-habit/
├── SKILL.md                    # 主 Skill 定义文件
├── references/
│   └── habit_library.md        # 完整习惯库（含科学依据）
├── templates/
│   ├── daily_checkin.md        # 每日打卡模板
│   └── weekly_review.md        # 每周复盘模板
└── scripts/
    └── habit_tracker.py        # 命令行习惯追踪器（可选）
```

---

## 依赖

- **Hermes Agent**（这个 skill 运行在其上）
- 可选：`habit_tracker.py` 需要 Python 3.8+

```bash
# 安装 Python 依赖（可选）
pip install rich

# 测试追踪器
python scripts/habit_tracker.py --help
```

---

## Contributing

欢迎提交 Issue 和 PR！如果你有成功的前额叶修复经验，或者发现了更好的习惯方法，欢迎分享。

---

## License

MIT

---

## 参考文献

- 《海妖在呼唤：你我的注意力如何成为商品》— Chris Hayes
- 《贪婪的多巴胺》— Daniel Z. Lieberman
- 《监视资本主义：智能陷阱》—纪录片
- 《如何阅读一本书》— Mortimer J. Adler
- 澳大利亚 2025 年社交媒体立法（16岁以下禁止使用）
