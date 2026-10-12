# -*- coding: utf-8 -*-
"""FileMgr 专属启动图标：蓝色圆角底 + 白色文件夹 + 上传箭头（纯 Python 画 PNG，4x 超采样抗锯齿）"""
import struct, zlib, os

def clamp(v):
    return 0 if v < 0 else (255 if v > 255 else int(v))

def in_rounded_rect(px, py, x0, y0, x1, y1, r):
    if px < x0 or px > x1 or py < y0 or py > y1:
        return False
    cx = min(max(px, x0 + r), x1 - r)
    cy = min(max(py, y0 + r), y1 - r)
    dx = px - cx
    dy = py - cy
    return dx * dx + dy * dy <= r * r

# 每个子采样最终只归属一个「最上层」颜色：箭头 > 暗部 > 白 > 标签页 > 描边 > 底色
COLORS = {
    "bg":     (43, 108, 223, 255),
    "edge":   (33, 86, 178, 255),
    "white":  (245, 247, 250, 255),
    "shadow": (214, 222, 232, 255),
    "arrow":  (43, 108, 223, 255),
}

def render(size):
    S = float(size)
    img = [[(0, 0, 0, 0)] * size for _ in range(size)]
    sub = 4
    for y in range(size):
        for x in range(size):
            counts = {}
            for sy in range(sub):
                for sx in range(sub):
                    px = x + (sx + 0.5) / sub
                    py = y + (sy + 0.5) / sub
                    col = None
                    m = S * 0.02
                    r = S * 0.185
                    if in_rounded_rect(px, py, m, m, S - m, S - m, r):
                        inner = in_rounded_rect(px, py, m + S * 0.028, m + S * 0.028,
                                                S - m - S * 0.028, S - m - S * 0.028,
                                                max(r - S * 0.028, 1.0))
                        if inner:
                            col = "bg"
                            fx0, fx1 = S * 0.20, S * 0.80
                            fy0, fy1 = S * 0.34, S * 0.76
                            fr = S * 0.05
                            if in_rounded_rect(px, py, fx0, fy0, fx1, fy1, fr):
                                ax = S * 0.5
                                half = S * 0.075
                                arrow = False
                                if abs(px - ax) <= half * 0.55 and S * 0.46 <= py <= S * 0.70:
                                    arrow = True
                                elif S * 0.32 <= py <= S * 0.50:
                                    t = (py - S * 0.32) / (S * 0.18)
                                    if abs(px - ax) <= half * (0.30 + 0.70 * t):
                                        arrow = True
                                if arrow:
                                    col = "arrow"
                                elif py > fy1 - S * 0.07:
                                    col = "shadow"
                                else:
                                    col = "white"
                            elif in_rounded_rect(px, py, fx0, S * 0.265,
                                                 fx0 + S * 0.26, fy0 + S * 0.03, fr * 0.7):
                                col = "white"   # 标签页（文件夹体没盖住的余部）
                        else:
                            col = "edge"
                    if col is not None:
                        counts[col] = counts.get(col, 0) + 1
            tot = float(sub * sub)
            if counts:
                r_ = g_ = b_ = a_ = 0.0
                for name, cnt in counts.items():
                    w_ = cnt / tot
                    c = COLORS[name]
                    r_ += c[0] * w_
                    g_ += c[1] * w_
                    b_ += c[2] * w_
                    a_ += c[3] * w_
                img[y][x] = (clamp(r_), clamp(g_), clamp(b_), clamp(a_))
    return img

def save_png(path, img):
    h = len(img)
    w = len(img[0])
    raw = b""
    for row in img:
        raw += b"\x00" + b"".join(struct.pack("4B", *p) for p in row)
    def chunk(tag, data):
        c = struct.pack(">I", len(data)) + tag + data
        return c + struct.pack(">I", zlib.crc32(tag + data) & 0xFFFFFFFF)
    png = b"\x89PNG\r\n\x1a\n"
    png += chunk(b"IHDR", struct.pack(">IIBBBBB", w, h, 8, 6, 0, 0, 0))
    png += chunk(b"IDAT", zlib.compress(raw, 9))
    png += chunk(b"IEND", b"")
    open(path, "wb").write(png)
    print(path, w, "x", h)

here = os.path.dirname(os.path.abspath(__file__))
save_png(os.path.join(here, "ic_48.png"), render(48))
save_png(os.path.join(here, "ic_96.png"), render(96))
save_png(os.path.join(here, "ic_192.png"), render(192))
