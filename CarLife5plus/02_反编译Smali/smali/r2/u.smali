.class public final Lr2/u;
.super Landroid/view/ViewGroup;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/q1;
.implements Lq2/x1;
.implements Lk2/j;
.implements Landroidx/lifecycle/e;
.implements Lq2/o1;


# static fields
.field public static O0:Ljava/lang/Class;

.field public static P0:Ljava/lang/reflect/Method;

.field public static Q0:Ljava/lang/reflect/Method;

.field public static final R0:Ls/d0;

.field public static S0:Ll8/j;

.field public static T0:Ljava/lang/reflect/Method;


# instance fields
.field public A:Z

.field public A0:J

.field public final B:Lk2/k;

.field public final B0:Landroid/support/v4/media/session/t;

.field public final C:Lb1/q;

.field public final C0:Ls/d0;

.field public D:Lf9/k;

.field public D0:F

.field public final E:Lba/a;

.field public E0:F

.field public final F:Ls1/c;

.field public final F0:Lcom/tencent/bugly/proguard/c0;

.field public G:Z

.field public final G0:Landroidx/lifecycle/z;

.field public final H:Lr2/h;

.field public H0:Z

.field public final I:Lr2/g;

.field public final I0:Lr2/s;

.field public final J:Lq2/s1;

.field public final J0:Lr2/a1;

.field public K:Z

.field public K0:Z

.field public L:Lr2/w0;

.field public final L0:Lv/a1;

.field public M:Lr2/n1;

.field public M0:Landroid/view/View;

.field public N:Ln3/a;

.field public final N0:Lr2/q;

.field public O:Z

.field public final P:Lq2/w0;

.field public Q:J

.field public final R:[I

.field public final S:[F

.field public final T:[F

.field public final U:[F

.field public V:J

.field public W:Z

.field public a:J

.field public final b:Z

.field public final c:Lq2/j0;

.field public final d:Lf1/k1;

.field public final e:Landroid/view/View;

.field public final f:Z

.field public f0:J

.field public final g:Lw1/j;

.field public g0:Z

.field public h:Lw8/h;

.field public final h0:Lf1/k1;

.field public final i:Lu1/a;

.field public final i0:Lf1/f0;

.field public final j:Lr2/v1;

.field public j0:Lf9/k;

.field public final k:Ly1/p;

.field public final k0:Lr2/i;

.field public final l:Lr2/v0;

.field public final l0:Lr2/j;

.field public final m:Lo2/q;

.field public final m0:Lr2/k;

.field public final n:Lq2/h0;

.field public final n0:Lg3/z;

.field public final o:Ls/w;

.field public final o0:Lg3/x;

.field public final p:Lz2/a;

.field public final p0:Ljava/util/concurrent/atomic/AtomicReference;

.field public final q:Lr2/u;

.field public final q0:Lr2/j1;

.field public final r:Ly2/o;

.field public final r0:Lr2/t1;

.field public final s:Lr2/b0;

.field public final s0:Lf1/k1;

.field public t:Lt1/c;

.field public t0:I

.field public final u:Lr2/f;

.field public final u0:Lf1/k1;

.field public final v:Ly1/e;

.field public final v0:Lg2/b;

.field public final w:Ls1/k;

.field public final w0:Lh2/c;

.field public final x:Ljava/util/ArrayList;

.field public final x0:Lp2/c;

.field public y:Ljava/util/ArrayList;

.field public final y0:Lr2/q0;

.field public z:Z

.field public z0:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls/d0;

    .line 2
    .line 3
    invoke-direct {v0}, Ls/d0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lr2/u;->R0:Ls/d0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lw8/h;)V
    .locals 19

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v0, v2, Lr2/u;->a:J

    .line 14
    .line 15
    const/4 v10, 0x1

    .line 16
    iput-boolean v10, v2, Lr2/u;->b:Z

    .line 17
    .line 18
    new-instance v0, Lq2/j0;

    .line 19
    .line 20
    invoke-direct {v0}, Lq2/j0;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, v2, Lr2/u;->c:Lq2/j0;

    .line 24
    .line 25
    invoke-static {v9}, La/a;->b(Landroid/content/Context;)Ln3/e;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v11, Lf1/w0;->d:Lf1/w0;

    .line 30
    .line 31
    new-instance v1, Lf1/k1;

    .line 32
    .line 33
    invoke-direct {v1, v0, v11}, Lf1/k1;-><init>(Ljava/lang/Object;Lf1/p2;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, v2, Lr2/u;->d:Lf1/k1;

    .line 37
    .line 38
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    .line 40
    const/16 v0, 0x23

    .line 41
    .line 42
    const/4 v13, 0x0

    .line 43
    if-lt v12, v0, :cond_0

    .line 44
    .line 45
    const/4 v14, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v14, 0x0

    .line 48
    :goto_0
    iput-boolean v14, v2, Lr2/u;->f:Z

    .line 49
    .line 50
    new-instance v0, Ly2/d;

    .line 51
    .line 52
    invoke-direct {v0}, Lr1/o;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v1, Landroidx/compose/ui/semantics/EmptySemanticsElement;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Landroidx/compose/ui/semantics/EmptySemanticsElement;-><init>(Ly2/d;)V

    .line 58
    .line 59
    .line 60
    new-instance v3, Landroidx/compose/ui/platform/AndroidComposeView$bringIntoViewNode$1;

    .line 61
    .line 62
    invoke-direct {v3, v2}, Landroidx/compose/ui/platform/AndroidComposeView$bringIntoViewNode$1;-><init>(Lr2/u;)V

    .line 63
    .line 64
    .line 65
    new-instance v4, Lw1/j;

    .line 66
    .line 67
    invoke-direct {v4, v2, v2}, Lw1/j;-><init>(Lr2/u;Lr2/u;)V

    .line 68
    .line 69
    .line 70
    iput-object v4, v2, Lr2/u;->g:Lw1/j;

    .line 71
    .line 72
    move-object/from16 v4, p2

    .line 73
    .line 74
    iput-object v4, v2, Lr2/u;->h:Lw8/h;

    .line 75
    .line 76
    new-instance v4, Lu1/a;

    .line 77
    .line 78
    invoke-direct {v4}, Lu1/a;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v4, v2, Lr2/u;->i:Lu1/a;

    .line 82
    .line 83
    new-instance v4, Lr2/v1;

    .line 84
    .line 85
    invoke-direct {v4}, Lr2/v1;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v4, v2, Lr2/u;->j:Lr2/v1;

    .line 89
    .line 90
    new-instance v4, Lr2/p;

    .line 91
    .line 92
    invoke-direct {v4, v2, v13}, Lr2/p;-><init>(Lr2/u;I)V

    .line 93
    .line 94
    .line 95
    sget-object v5, Lr1/m;->a:Lr1/m;

    .line 96
    .line 97
    invoke-static {v5, v4}, Landroidx/compose/ui/input/key/a;->a(Lr1/p;Lf9/k;)Lr1/p;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {}, Landroidx/compose/ui/input/rotary/a;->a()Lr1/p;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    new-instance v6, Ly1/p;

    .line 106
    .line 107
    invoke-direct {v6}, Ly1/p;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object v6, v2, Lr2/u;->k:Ly1/p;

    .line 111
    .line 112
    new-instance v6, Lr2/v0;

    .line 113
    .line 114
    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-direct {v6, v7}, Lr2/v0;-><init>(Landroid/view/ViewConfiguration;)V

    .line 119
    .line 120
    .line 121
    iput-object v6, v2, Lr2/u;->l:Lr2/v0;

    .line 122
    .line 123
    new-instance v6, Lo2/q;

    .line 124
    .line 125
    invoke-direct {v6}, Lo2/q;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object v6, v2, Lr2/u;->m:Lo2/q;

    .line 129
    .line 130
    new-instance v7, Lq2/h0;

    .line 131
    .line 132
    const/4 v8, 0x3

    .line 133
    invoke-direct {v7, v8}, Lq2/h0;-><init>(I)V

    .line 134
    .line 135
    .line 136
    sget-object v8, Lo2/a1;->b:Lo2/a1;

    .line 137
    .line 138
    invoke-virtual {v7, v8}, Lq2/h0;->c0(Lo2/m0;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Lr2/u;->getDensity()Ln3/c;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-virtual {v7, v8}, Lq2/h0;->Z(Ln3/c;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Lr2/u;->getViewConfiguration()Lr2/q2;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-virtual {v7, v8}, Lq2/h0;->e0(Lr2/q2;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v6}, Landroidx/compose/ui/layout/b;->b(Lo2/q;)Lr1/p;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    check-cast v6, Lq2/z0;

    .line 160
    .line 161
    invoke-static {v6, v1}, Lp9/v;->f(Lr1/p;Lr1/p;)Lr1/p;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-interface {v1, v5}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-interface {v1, v4}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v2}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    check-cast v4, Lw1/j;

    .line 178
    .line 179
    iget-object v4, v4, Lw1/j;->e:Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;

    .line 180
    .line 181
    invoke-interface {v1, v4}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v2}, Lr2/u;->getDragAndDropManager()Lu1/a;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    iget-object v4, v4, Lu1/a;->c:Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;

    .line 190
    .line 191
    invoke-interface {v1, v4}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-interface {v1, v3}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v7, v1}, Lq2/h0;->d0(Lr1/p;)V

    .line 200
    .line 201
    .line 202
    iput-object v7, v2, Lr2/u;->n:Lq2/h0;

    .line 203
    .line 204
    sget-object v1, Ls/l;->a:Ls/w;

    .line 205
    .line 206
    new-instance v1, Ls/w;

    .line 207
    .line 208
    invoke-direct {v1}, Ls/w;-><init>()V

    .line 209
    .line 210
    .line 211
    iput-object v1, v2, Lr2/u;->o:Ls/w;

    .line 212
    .line 213
    new-instance v1, Lz2/a;

    .line 214
    .line 215
    invoke-virtual {v2}, Lr2/u;->getLayoutNodes()Ls/w;

    .line 216
    .line 217
    .line 218
    invoke-direct {v1}, Lz2/a;-><init>()V

    .line 219
    .line 220
    .line 221
    iput-object v1, v2, Lr2/u;->p:Lz2/a;

    .line 222
    .line 223
    iput-object v2, v2, Lr2/u;->q:Lr2/u;

    .line 224
    .line 225
    new-instance v1, Ly2/o;

    .line 226
    .line 227
    invoke-virtual {v2}, Lr2/u;->getRoot()Lq2/h0;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v2}, Lr2/u;->getLayoutNodes()Ls/w;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-direct {v1, v3, v0, v4}, Ly2/o;-><init>(Lq2/h0;Ly2/d;Ls/w;)V

    .line 236
    .line 237
    .line 238
    iput-object v1, v2, Lr2/u;->r:Ly2/o;

    .line 239
    .line 240
    new-instance v15, Lr2/b0;

    .line 241
    .line 242
    invoke-direct {v15, v2}, Lr2/b0;-><init>(Lr2/u;)V

    .line 243
    .line 244
    .line 245
    iput-object v15, v2, Lr2/u;->s:Lr2/b0;

    .line 246
    .line 247
    new-instance v0, Lt1/c;

    .line 248
    .line 249
    move-object v1, v0

    .line 250
    new-instance v0, Lc/l0;

    .line 251
    .line 252
    const/4 v7, 0x0

    .line 253
    const/4 v8, 0x3

    .line 254
    move-object v3, v1

    .line 255
    const/4 v1, 0x0

    .line 256
    move-object v4, v3

    .line 257
    const-class v3, Lr2/j0;

    .line 258
    .line 259
    move-object v5, v4

    .line 260
    const-string v4, "getContentCaptureSessionCompat"

    .line 261
    .line 262
    move-object v6, v5

    .line 263
    const-string v5, "getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;"

    .line 264
    .line 265
    move-object/from16 v16, v6

    .line 266
    .line 267
    const/4 v6, 0x1

    .line 268
    move-object/from16 v13, v16

    .line 269
    .line 270
    invoke-direct/range {v0 .. v8}, Lc/l0;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 271
    .line 272
    .line 273
    invoke-direct {v13, v2, v0}, Lt1/c;-><init>(Lr2/u;Lc/l0;)V

    .line 274
    .line 275
    .line 276
    iput-object v13, v2, Lr2/u;->t:Lt1/c;

    .line 277
    .line 278
    new-instance v0, Lr2/f;

    .line 279
    .line 280
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string v1, "accessibility"

    .line 284
    .line 285
    invoke-virtual {v9, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const-string v3, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    .line 290
    .line 291
    invoke-static {v1, v3}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 295
    .line 296
    iput-object v0, v2, Lr2/u;->u:Lr2/f;

    .line 297
    .line 298
    new-instance v0, Ly1/e;

    .line 299
    .line 300
    invoke-direct {v0, v2}, Ly1/e;-><init>(Lr2/u;)V

    .line 301
    .line 302
    .line 303
    iput-object v0, v2, Lr2/u;->v:Ly1/e;

    .line 304
    .line 305
    new-instance v0, Ls1/k;

    .line 306
    .line 307
    invoke-direct {v0}, Ls1/k;-><init>()V

    .line 308
    .line 309
    .line 310
    iput-object v0, v2, Lr2/u;->w:Ls1/k;

    .line 311
    .line 312
    new-instance v0, Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .line 316
    .line 317
    iput-object v0, v2, Lr2/u;->x:Ljava/util/ArrayList;

    .line 318
    .line 319
    new-instance v0, Lk2/k;

    .line 320
    .line 321
    invoke-direct {v0}, Lk2/k;-><init>()V

    .line 322
    .line 323
    .line 324
    iput-object v0, v2, Lr2/u;->B:Lk2/k;

    .line 325
    .line 326
    new-instance v0, Lb1/q;

    .line 327
    .line 328
    invoke-virtual {v2}, Lr2/u;->getRoot()Lq2/h0;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 333
    .line 334
    .line 335
    iput-object v1, v0, Lb1/q;->b:Ljava/lang/Object;

    .line 336
    .line 337
    new-instance v3, Lk2/e;

    .line 338
    .line 339
    iget-object v1, v1, Lq2/h0;->E:Lq2/d1;

    .line 340
    .line 341
    iget-object v1, v1, Lq2/d1;->c:Lq2/t;

    .line 342
    .line 343
    invoke-direct {v3, v1}, Lk2/e;-><init>(Lo2/w;)V

    .line 344
    .line 345
    .line 346
    iput-object v3, v0, Lb1/q;->c:Ljava/lang/Object;

    .line 347
    .line 348
    new-instance v1, La2/d;

    .line 349
    .line 350
    const/16 v6, 0x1d

    .line 351
    .line 352
    invoke-direct {v1, v6}, La2/d;-><init>(I)V

    .line 353
    .line 354
    .line 355
    iput-object v1, v0, Lb1/q;->d:Ljava/lang/Object;

    .line 356
    .line 357
    new-instance v1, Lq2/r;

    .line 358
    .line 359
    invoke-direct {v1}, Lq2/r;-><init>()V

    .line 360
    .line 361
    .line 362
    iput-object v1, v0, Lb1/q;->e:Ljava/lang/Object;

    .line 363
    .line 364
    iput-object v0, v2, Lr2/u;->C:Lb1/q;

    .line 365
    .line 366
    sget-object v0, Lr2/n;->b:Lr2/n;

    .line 367
    .line 368
    iput-object v0, v2, Lr2/u;->D:Lf9/k;

    .line 369
    .line 370
    invoke-static {}, Lr2/u;->l()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    const/4 v7, 0x0

    .line 375
    if-eqz v0, :cond_1

    .line 376
    .line 377
    new-instance v0, Lba/a;

    .line 378
    .line 379
    invoke-virtual {v2}, Lr2/u;->getAutofillTree()Ls1/k;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-direct {v0, v2, v1}, Lba/a;-><init>(Lr2/u;Ls1/k;)V

    .line 384
    .line 385
    .line 386
    goto :goto_1

    .line 387
    :cond_1
    move-object v0, v7

    .line 388
    :goto_1
    iput-object v0, v2, Lr2/u;->E:Lba/a;

    .line 389
    .line 390
    invoke-static {}, Lr2/u;->l()Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    const/16 v8, 0x14

    .line 395
    .line 396
    if-eqz v0, :cond_3

    .line 397
    .line 398
    invoke-static {}, Lq0/o;->m()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-static {v9, v0}, Ls1/g;->f(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-static {v0}, Lq0/o;->g(Ljava/lang/Object;)Landroid/view/autofill/AutofillManager;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    if-eqz v0, :cond_2

    .line 411
    .line 412
    new-instance v1, Ls1/c;

    .line 413
    .line 414
    move-object v3, v1

    .line 415
    new-instance v1, Lkb/a;

    .line 416
    .line 417
    invoke-direct {v1, v8, v0}, Lkb/a;-><init>(ILjava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual/range {p0 .. p0}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-virtual/range {p0 .. p0}, Lr2/u;->getRectManager()Lz2/a;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    move-object v0, v3

    .line 433
    move-object/from16 v3, p0

    .line 434
    .line 435
    invoke-direct/range {v0 .. v5}, Ls1/c;-><init>(Lkb/a;Ly2/o;Lr2/u;Lz2/a;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    move-object v2, v3

    .line 439
    move-object v1, v0

    .line 440
    goto :goto_2

    .line 441
    :cond_2
    const-string v0, "Autofill service could not be located."

    .line 442
    .line 443
    invoke-static {v0}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    throw v0

    .line 448
    :cond_3
    move-object v1, v7

    .line 449
    :goto_2
    iput-object v1, v2, Lr2/u;->F:Ls1/c;

    .line 450
    .line 451
    new-instance v0, Lr2/h;

    .line 452
    .line 453
    invoke-direct {v0, v9}, Lr2/h;-><init>(Landroid/content/Context;)V

    .line 454
    .line 455
    .line 456
    iput-object v0, v2, Lr2/u;->H:Lr2/h;

    .line 457
    .line 458
    new-instance v0, Lr2/g;

    .line 459
    .line 460
    invoke-virtual {v2}, Lr2/u;->getClipboardManager()Lr2/h;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    invoke-direct {v0, v1}, Lr2/g;-><init>(Lr2/h;)V

    .line 465
    .line 466
    .line 467
    iput-object v0, v2, Lr2/u;->I:Lr2/g;

    .line 468
    .line 469
    new-instance v0, Lq2/s1;

    .line 470
    .line 471
    new-instance v1, Lr2/p;

    .line 472
    .line 473
    invoke-direct {v1, v2, v10}, Lr2/p;-><init>(Lr2/u;I)V

    .line 474
    .line 475
    .line 476
    invoke-direct {v0, v1}, Lq2/s1;-><init>(Lr2/p;)V

    .line 477
    .line 478
    .line 479
    iput-object v0, v2, Lr2/u;->J:Lq2/s1;

    .line 480
    .line 481
    new-instance v0, Lq2/w0;

    .line 482
    .line 483
    invoke-virtual {v2}, Lr2/u;->getRoot()Lq2/h0;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-direct {v0, v1}, Lq2/w0;-><init>(Lq2/h0;)V

    .line 488
    .line 489
    .line 490
    iput-object v0, v2, Lr2/u;->P:Lq2/w0;

    .line 491
    .line 492
    const v0, 0x7fffffff

    .line 493
    .line 494
    .line 495
    int-to-long v0, v0

    .line 496
    const/16 v3, 0x20

    .line 497
    .line 498
    shl-long v3, v0, v3

    .line 499
    .line 500
    const-wide v17, 0xffffffffL

    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    and-long v0, v0, v17

    .line 506
    .line 507
    or-long/2addr v0, v3

    .line 508
    iput-wide v0, v2, Lr2/u;->Q:J

    .line 509
    .line 510
    const/4 v0, 0x0

    .line 511
    filled-new-array {v0, v0}, [I

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    iput-object v1, v2, Lr2/u;->R:[I

    .line 516
    .line 517
    invoke-static {}, Ly1/a0;->a()[F

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    iput-object v0, v2, Lr2/u;->S:[F

    .line 522
    .line 523
    invoke-static {}, Ly1/a0;->a()[F

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    iput-object v1, v2, Lr2/u;->T:[F

    .line 528
    .line 529
    invoke-static {}, Ly1/a0;->a()[F

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    iput-object v1, v2, Lr2/u;->U:[F

    .line 534
    .line 535
    const-wide/16 v3, -0x1

    .line 536
    .line 537
    iput-wide v3, v2, Lr2/u;->V:J

    .line 538
    .line 539
    const-wide v3, 0x7f8000007f800000L    # 1.404448428688076E306

    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    iput-wide v3, v2, Lr2/u;->f0:J

    .line 545
    .line 546
    iput-boolean v10, v2, Lr2/u;->g0:Z

    .line 547
    .line 548
    invoke-static {v7}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    iput-object v1, v2, Lr2/u;->h0:Lf1/k1;

    .line 553
    .line 554
    new-instance v1, Lr2/s;

    .line 555
    .line 556
    invoke-direct {v1, v2, v10}, Lr2/s;-><init>(Lr2/u;I)V

    .line 557
    .line 558
    .line 559
    invoke-static {v1}, Lf1/b;->o(Lf9/a;)Lf1/f0;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    iput-object v1, v2, Lr2/u;->i0:Lf1/f0;

    .line 564
    .line 565
    new-instance v1, Lr2/i;

    .line 566
    .line 567
    invoke-direct {v1, v2}, Lr2/i;-><init>(Lr2/u;)V

    .line 568
    .line 569
    .line 570
    iput-object v1, v2, Lr2/u;->k0:Lr2/i;

    .line 571
    .line 572
    new-instance v1, Lr2/j;

    .line 573
    .line 574
    invoke-direct {v1, v2}, Lr2/j;-><init>(Lr2/u;)V

    .line 575
    .line 576
    .line 577
    iput-object v1, v2, Lr2/u;->l0:Lr2/j;

    .line 578
    .line 579
    new-instance v1, Lr2/k;

    .line 580
    .line 581
    invoke-direct {v1, v2}, Lr2/k;-><init>(Lr2/u;)V

    .line 582
    .line 583
    .line 584
    iput-object v1, v2, Lr2/u;->m0:Lr2/k;

    .line 585
    .line 586
    new-instance v1, Lg3/z;

    .line 587
    .line 588
    invoke-virtual {v2}, Lr2/u;->getView()Landroid/view/View;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    invoke-direct {v1, v3, v2}, Lg3/z;-><init>(Landroid/view/View;Lr2/u;)V

    .line 593
    .line 594
    .line 595
    iput-object v1, v2, Lr2/u;->n0:Lg3/z;

    .line 596
    .line 597
    new-instance v3, Lg3/x;

    .line 598
    .line 599
    invoke-direct {v3, v1}, Lg3/x;-><init>(Lg3/r;)V

    .line 600
    .line 601
    .line 602
    iput-object v3, v2, Lr2/u;->o0:Lg3/x;

    .line 603
    .line 604
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 605
    .line 606
    invoke-direct {v1, v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    iput-object v1, v2, Lr2/u;->p0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 610
    .line 611
    new-instance v1, Lr2/j1;

    .line 612
    .line 613
    invoke-virtual {v2}, Lr2/u;->getTextInputService()Lg3/x;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    invoke-direct {v1, v3}, Lr2/j1;-><init>(Lg3/x;)V

    .line 618
    .line 619
    .line 620
    iput-object v1, v2, Lr2/u;->q0:Lr2/j1;

    .line 621
    .line 622
    new-instance v1, Lr2/t1;

    .line 623
    .line 624
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 625
    .line 626
    .line 627
    iput-object v1, v2, Lr2/u;->r0:Lr2/t1;

    .line 628
    .line 629
    invoke-static {v9}, Li9/a;->u(Landroid/content/Context;)Lf3/e;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    new-instance v3, Lf1/k1;

    .line 634
    .line 635
    invoke-direct {v3, v1, v11}, Lf1/k1;-><init>(Ljava/lang/Object;Lf1/p2;)V

    .line 636
    .line 637
    .line 638
    iput-object v3, v2, Lr2/u;->s0:Lf1/k1;

    .line 639
    .line 640
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    const/16 v3, 0x1f

    .line 649
    .line 650
    if-lt v12, v3, :cond_4

    .line 651
    .line 652
    invoke-static {v1}, Lc3/c;->a(Landroid/content/res/Configuration;)I

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    goto :goto_3

    .line 657
    :cond_4
    const/4 v1, 0x0

    .line 658
    :goto_3
    iput v1, v2, Lr2/u;->t0:I

    .line 659
    .line 660
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 669
    .line 670
    .line 671
    move-result v1

    .line 672
    sget-object v4, Ln3/m;->a:Ln3/m;

    .line 673
    .line 674
    if-eqz v1, :cond_6

    .line 675
    .line 676
    if-eq v1, v10, :cond_5

    .line 677
    .line 678
    move-object v1, v7

    .line 679
    goto :goto_4

    .line 680
    :cond_5
    sget-object v1, Ln3/m;->b:Ln3/m;

    .line 681
    .line 682
    goto :goto_4

    .line 683
    :cond_6
    move-object v1, v4

    .line 684
    :goto_4
    if-nez v1, :cond_7

    .line 685
    .line 686
    goto :goto_5

    .line 687
    :cond_7
    move-object v4, v1

    .line 688
    :goto_5
    invoke-static {v4}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    iput-object v1, v2, Lr2/u;->u0:Lf1/k1;

    .line 693
    .line 694
    new-instance v1, Lg2/b;

    .line 695
    .line 696
    const/4 v4, 0x0

    .line 697
    invoke-direct {v1, v2, v4}, Lg2/b;-><init>(Landroid/view/View;I)V

    .line 698
    .line 699
    .line 700
    iput-object v1, v2, Lr2/u;->v0:Lg2/b;

    .line 701
    .line 702
    new-instance v1, Lh2/c;

    .line 703
    .line 704
    invoke-virtual {v2}, Landroid/view/View;->isInTouchMode()Z

    .line 705
    .line 706
    .line 707
    move-result v4

    .line 708
    if-eqz v4, :cond_8

    .line 709
    .line 710
    const/4 v4, 0x1

    .line 711
    goto :goto_6

    .line 712
    :cond_8
    const/4 v4, 0x2

    .line 713
    :goto_6
    invoke-direct {v1, v4}, Lh2/c;-><init>(I)V

    .line 714
    .line 715
    .line 716
    iput-object v1, v2, Lr2/u;->w0:Lh2/c;

    .line 717
    .line 718
    new-instance v1, Lp2/c;

    .line 719
    .line 720
    invoke-direct {v1, v2}, Lp2/c;-><init>(Lr2/u;)V

    .line 721
    .line 722
    .line 723
    iput-object v1, v2, Lr2/u;->x0:Lp2/c;

    .line 724
    .line 725
    new-instance v1, Lr2/q0;

    .line 726
    .line 727
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 728
    .line 729
    .line 730
    new-instance v4, Ln6/a;

    .line 731
    .line 732
    new-instance v5, Lb1/a;

    .line 733
    .line 734
    const/16 v11, 0xf

    .line 735
    .line 736
    invoke-direct {v5, v11, v1}, Lb1/a;-><init>(ILjava/lang/Object;)V

    .line 737
    .line 738
    .line 739
    invoke-direct {v4, v5}, Ln6/a;-><init>(Lb1/a;)V

    .line 740
    .line 741
    .line 742
    iput-object v1, v2, Lr2/u;->y0:Lr2/q0;

    .line 743
    .line 744
    new-instance v1, Landroid/support/v4/media/session/t;

    .line 745
    .line 746
    const/16 v4, 0x18

    .line 747
    .line 748
    invoke-direct {v1, v4}, Landroid/support/v4/media/session/t;-><init>(I)V

    .line 749
    .line 750
    .line 751
    iput-object v1, v2, Lr2/u;->B0:Landroid/support/v4/media/session/t;

    .line 752
    .line 753
    new-instance v1, Ls/d0;

    .line 754
    .line 755
    invoke-direct {v1}, Ls/d0;-><init>()V

    .line 756
    .line 757
    .line 758
    iput-object v1, v2, Lr2/u;->C0:Ls/d0;

    .line 759
    .line 760
    new-instance v1, Lcom/tencent/bugly/proguard/c0;

    .line 761
    .line 762
    const/16 v4, 0x8

    .line 763
    .line 764
    invoke-direct {v1, v4, v2}, Lcom/tencent/bugly/proguard/c0;-><init>(ILjava/lang/Object;)V

    .line 765
    .line 766
    .line 767
    iput-object v1, v2, Lr2/u;->F0:Lcom/tencent/bugly/proguard/c0;

    .line 768
    .line 769
    new-instance v1, Landroidx/lifecycle/z;

    .line 770
    .line 771
    invoke-direct {v1, v8, v2}, Landroidx/lifecycle/z;-><init>(ILjava/lang/Object;)V

    .line 772
    .line 773
    .line 774
    iput-object v1, v2, Lr2/u;->G0:Landroidx/lifecycle/z;

    .line 775
    .line 776
    new-instance v1, Lr2/s;

    .line 777
    .line 778
    const/4 v4, 0x0

    .line 779
    invoke-direct {v1, v2, v4}, Lr2/s;-><init>(Lr2/u;I)V

    .line 780
    .line 781
    .line 782
    iput-object v1, v2, Lr2/u;->I0:Lr2/s;

    .line 783
    .line 784
    if-ge v12, v6, :cond_9

    .line 785
    .line 786
    new-instance v1, Lu0/j;

    .line 787
    .line 788
    invoke-direct {v1, v0}, Lu0/j;-><init>([F)V

    .line 789
    .line 790
    .line 791
    goto :goto_7

    .line 792
    :cond_9
    new-instance v1, Lr2/b1;

    .line 793
    .line 794
    invoke-direct {v1}, Lr2/b1;-><init>()V

    .line 795
    .line 796
    .line 797
    :goto_7
    iput-object v1, v2, Lr2/u;->J0:Lr2/a1;

    .line 798
    .line 799
    iget-object v0, v2, Lr2/u;->t:Lt1/c;

    .line 800
    .line 801
    invoke-virtual {v2, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 802
    .line 803
    .line 804
    const/4 v4, 0x0

    .line 805
    invoke-virtual {v2, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v2, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 809
    .line 810
    .line 811
    const/16 v0, 0x1a

    .line 812
    .line 813
    if-lt v12, v0, :cond_a

    .line 814
    .line 815
    sget-object v0, Lr2/i0;->a:Lr2/i0;

    .line 816
    .line 817
    invoke-virtual {v0, v2, v10, v4}, Lr2/i0;->a(Landroid/view/View;IZ)V

    .line 818
    .line 819
    .line 820
    :cond_a
    invoke-virtual {v2, v10}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 821
    .line 822
    .line 823
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 824
    .line 825
    .line 826
    invoke-static {v2, v15}, Le4/k0;->j(Landroid/view/View;Le4/b;)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {v2}, Lr2/u;->getDragAndDropManager()Lu1/a;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 834
    .line 835
    .line 836
    invoke-virtual {v2}, Lr2/u;->getRoot()Lq2/h0;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    invoke-virtual {v0, v2}, Lq2/h0;->d(Lq2/q1;)V

    .line 841
    .line 842
    .line 843
    if-lt v12, v6, :cond_b

    .line 844
    .line 845
    sget-object v0, Lr2/d0;->a:Lr2/d0;

    .line 846
    .line 847
    invoke-virtual {v0, v2}, Lr2/d0;->a(Landroid/view/View;)V

    .line 848
    .line 849
    .line 850
    :cond_b
    if-eqz v14, :cond_c

    .line 851
    .line 852
    new-instance v0, Landroid/view/View;

    .line 853
    .line 854
    invoke-direct {v0, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 855
    .line 856
    .line 857
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 858
    .line 859
    invoke-direct {v1, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    .line 864
    .line 865
    const v1, 0x7f080063

    .line 866
    .line 867
    .line 868
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 869
    .line 870
    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 871
    .line 872
    .line 873
    iput-object v0, v2, Lr2/u;->e:Landroid/view/View;

    .line 874
    .line 875
    const/4 v1, -0x1

    .line 876
    invoke-virtual {v2, v0, v1}, Lr2/u;->addView(Landroid/view/View;I)V

    .line 877
    .line 878
    .line 879
    :cond_c
    if-lt v12, v3, :cond_d

    .line 880
    .line 881
    new-instance v7, Lv/a1;

    .line 882
    .line 883
    const/4 v0, 0x4

    .line 884
    invoke-direct {v7, v0}, Lv/a1;-><init>(I)V

    .line 885
    .line 886
    .line 887
    :cond_d
    iput-object v7, v2, Lr2/u;->L0:Lv/a1;

    .line 888
    .line 889
    new-instance v0, Lr2/q;

    .line 890
    .line 891
    invoke-direct {v0, v2}, Lr2/q;-><init>(Lr2/u;)V

    .line 892
    .line 893
    .line 894
    iput-object v0, v2, Lr2/u;->N0:Lr2/q;

    .line 895
    .line 896
    return-void
.end method

.method public static synthetic getFontLoader$annotations()V
    .locals 0
    .annotation runtime Lr8/c;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getLastMatrixRecalculationAnimationTime$ui_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getRoot$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getShowLayoutBounds$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getTextInputService$annotations()V
    .locals 0
    .annotation runtime Lr8/c;
    .end annotation

    .line 1
    return-void
.end method

.method private final get_viewTreeOwners()Lr2/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->h0:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lr2/l;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final h(Lr2/u;ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lr2/u;->s:Lr2/b0;

    .line 2
    .line 3
    iget-object v0, p0, Lr2/b0;->G:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p3, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lr2/b0;->E:Ls/u;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ls/u;->d(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eq p0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lr2/b0;->H:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p3, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lr2/b0;->F:Ls/u;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ls/u;->d(I)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eq p0, v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public static final synthetic i(Landroid/view/MotionEvent;Lr2/u;)Z
    .locals 0

    .line 1
    invoke-super {p1, p0}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic j(Lr2/u;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic k(Lr2/u;)Lr2/l;
    .locals 0

    .line 1
    invoke-direct {p0}, Lr2/u;->get_viewTreeOwners()Lr2/l;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static l()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public static m(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    instance-of v3, v2, Lr2/u;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    check-cast v2, Lr2/u;

    .line 17
    .line 18
    invoke-virtual {v2}, Lr2/u;->B()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    check-cast v2, Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-static {v2}, Lr2/u;->m(Landroid/view/ViewGroup;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method public static n(I)J
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    const/16 v2, 0x20

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/high16 v1, 0x40000000    # 2.0f

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    int-to-long v0, p0

    .line 23
    shl-long v2, v0, v2

    .line 24
    .line 25
    or-long/2addr v0, v2

    .line 26
    return-wide v0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_1
    int-to-long v0, v3

    .line 34
    shl-long/2addr v0, v2

    .line 35
    const p0, 0x7fffffff

    .line 36
    .line 37
    .line 38
    int-to-long v2, p0

    .line 39
    or-long/2addr v0, v2

    .line 40
    return-wide v0

    .line 41
    :cond_2
    int-to-long v0, v3

    .line 42
    shl-long/2addr v0, v2

    .line 43
    int-to-long v2, p0

    .line 44
    or-long/2addr v0, v2

    .line 45
    return-wide v0
.end method

.method public static o(Landroid/view/View;I)Landroid/view/View;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_2

    .line 7
    .line 8
    const-class v0, Landroid/view/View;

    .line 9
    .line 10
    const-string v1, "getAccessibilityViewId"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    check-cast p0, Landroid/view/ViewGroup;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_0
    if-ge v1, v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3, p1}, Lr2/u;->o(Landroid/view/View;I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    return-object v3

    .line 59
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-object v2
.end method

.method public static r(Lq2/h0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq2/h0;->D()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq2/h0;->z()Lh1/e;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-object v0, p0, Lh1/e;->a:[Ljava/lang/Object;

    .line 9
    .line 10
    iget p0, p0, Lh1/e;->c:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, p0, :cond_0

    .line 14
    .line 15
    aget-object v2, v0, v1

    .line 16
    .line 17
    check-cast v2, Lq2/h0;

    .line 18
    .line 19
    invoke-static {v2}, Lr2/u;->r(Lq2/h0;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private setDensity(Ln3/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->d:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private setFontFamilyResolver(Lf3/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->s0:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private setLayoutDirection(Ln3/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->u0:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final set_viewTreeOwners(Lr2/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->h0:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static t(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x7fffffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v0, v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 16
    .line 17
    if-ge v0, v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    and-int/2addr v0, v1

    .line 28
    if-ge v0, v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    and-int/2addr v0, v1

    .line 39
    if-ge v0, v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    and-int/2addr v0, v1

    .line 50
    if-ge v0, v4, :cond_0

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x1

    .line 55
    :goto_0
    if-nez v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    const/4 v6, 0x1

    .line 62
    :goto_1
    if-ge v6, v5, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    and-int/2addr v0, v1

    .line 73
    if-ge v0, v4, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    and-int/2addr v0, v1

    .line 84
    if-ge v0, v4, :cond_2

    .line 85
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 87
    .line 88
    const/16 v7, 0x1d

    .line 89
    .line 90
    if-lt v0, v7, :cond_1

    .line 91
    .line 92
    sget-object v0, Lr2/x1;->a:Lr2/x1;

    .line 93
    .line 94
    invoke-virtual {v0, p0, v6}, Lr2/x1;->a(Landroid/view/MotionEvent;I)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_1
    const/4 v0, 0x0

    .line 102
    goto :goto_3

    .line 103
    :cond_2
    :goto_2
    const/4 v0, 0x1

    .line 104
    :goto_3
    if-nez v0, :cond_3

    .line 105
    .line 106
    add-int/lit8 v6, v6, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    return v0
.end method


# virtual methods
.method public final A(Lq2/p1;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->x:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    iget-boolean p2, p0, Lr2/u;->z:Z

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lr2/u;->y:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    iget-boolean p2, p0, Lr2/u;->z:Z

    .line 21
    .line 22
    if-nez p2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iget-object p2, p0, Lr2/u;->y:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-nez p2, :cond_3

    .line 31
    .line 32
    new-instance p2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lr2/u;->y:Ljava/util/ArrayList;

    .line 38
    .line 39
    :cond_3
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final B()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lr2/u;->G:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lr2/u;->getSnapshotObserver()Lq2/s1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lq2/s1;->a:Lp1/u;

    .line 12
    .line 13
    iget-object v3, v0, Lp1/u;->g:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v3

    .line 16
    :try_start_0
    iget-object v0, v0, Lp1/u;->f:Lh1/e;

    .line 17
    .line 18
    iget v4, v0, Lh1/e;->c:I

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    :goto_0
    if-ge v5, v4, :cond_2

    .line 23
    .line 24
    iget-object v7, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 25
    .line 26
    aget-object v7, v7, v5

    .line 27
    .line 28
    check-cast v7, Lp1/t;

    .line 29
    .line 30
    invoke-virtual {v7}, Lp1/t;->e()V

    .line 31
    .line 32
    .line 33
    iget-object v7, v7, Lp1/t;->f:Ls/h0;

    .line 34
    .line 35
    invoke-virtual {v7}, Ls/h0;->j()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-nez v7, :cond_0

    .line 40
    .line 41
    add-int/lit8 v6, v6, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    if-lez v6, :cond_1

    .line 45
    .line 46
    iget-object v7, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 47
    .line 48
    sub-int v8, v5, v6

    .line 49
    .line 50
    aget-object v9, v7, v5

    .line 51
    .line 52
    aput-object v9, v7, v8

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object v5, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 61
    .line 62
    sub-int v6, v4, v6

    .line 63
    .line 64
    invoke-static {v5, v6, v4, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iput v6, v0, Lh1/e;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    monitor-exit v3

    .line 70
    iput-boolean v2, p0, Lr2/u;->G:Z

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :goto_2
    monitor-exit v3

    .line 74
    throw v0

    .line 75
    :cond_3
    :goto_3
    iget-object v0, p0, Lr2/u;->L:Lr2/w0;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-static {v0}, Lr2/u;->m(Landroid/view/ViewGroup;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-static {}, Lr2/u;->l()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    iget-object v0, p0, Lr2/u;->F:Ls1/c;

    .line 89
    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    iget-object v3, v0, Ls1/c;->h:Ls/x;

    .line 93
    .line 94
    iget v4, v3, Ls/x;->d:I

    .line 95
    .line 96
    if-nez v4, :cond_5

    .line 97
    .line 98
    iget-boolean v4, v0, Ls1/c;->i:Z

    .line 99
    .line 100
    if-eqz v4, :cond_5

    .line 101
    .line 102
    iget-object v4, v0, Ls1/c;->a:Lkb/a;

    .line 103
    .line 104
    iget-object v4, v4, Lkb/a;->b:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v4, Landroid/view/autofill/AutofillManager;

    .line 107
    .line 108
    invoke-static {v4}, Ls1/o;->m(Landroid/view/autofill/AutofillManager;)V

    .line 109
    .line 110
    .line 111
    iput-boolean v2, v0, Ls1/c;->i:Z

    .line 112
    .line 113
    :cond_5
    iget v3, v3, Ls/x;->d:I

    .line 114
    .line 115
    if-eqz v3, :cond_6

    .line 116
    .line 117
    const/4 v3, 0x1

    .line 118
    iput-boolean v3, v0, Ls1/c;->i:Z

    .line 119
    .line 120
    :cond_6
    :goto_4
    iget-object v0, p0, Lr2/u;->C0:Ls/d0;

    .line 121
    .line 122
    invoke-virtual {v0}, Ls/d0;->h()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_a

    .line 127
    .line 128
    iget-object v0, p0, Lr2/u;->C0:Ls/d0;

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Ls/d0;->e(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_a

    .line 135
    .line 136
    iget-object v0, p0, Lr2/u;->C0:Ls/d0;

    .line 137
    .line 138
    iget v0, v0, Ls/d0;->b:I

    .line 139
    .line 140
    const/4 v3, 0x0

    .line 141
    :goto_5
    if-ge v3, v0, :cond_9

    .line 142
    .line 143
    iget-object v4, p0, Lr2/u;->C0:Ls/d0;

    .line 144
    .line 145
    invoke-virtual {v4, v3}, Ls/d0;->e(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Lf9/a;

    .line 150
    .line 151
    iget-object v5, p0, Lr2/u;->C0:Ls/d0;

    .line 152
    .line 153
    if-ltz v3, :cond_8

    .line 154
    .line 155
    iget v6, v5, Ls/d0;->b:I

    .line 156
    .line 157
    if-ge v3, v6, :cond_8

    .line 158
    .line 159
    iget-object v5, v5, Ls/d0;->a:[Ljava/lang/Object;

    .line 160
    .line 161
    aget-object v6, v5, v3

    .line 162
    .line 163
    aput-object v1, v5, v3

    .line 164
    .line 165
    if-eqz v4, :cond_7

    .line 166
    .line 167
    invoke-interface {v4}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_8
    invoke-virtual {v5, v3}, Ls/d0;->m(I)V

    .line 174
    .line 175
    .line 176
    throw v1

    .line 177
    :cond_9
    iget-object v3, p0, Lr2/u;->C0:Ls/d0;

    .line 178
    .line 179
    invoke-virtual {v3, v2, v0}, Ls/d0;->k(II)V

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_a
    return-void
.end method

.method public final C(Lq2/h0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lr2/u;->s:Lr2/b0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lr2/b0;->A:Z

    .line 5
    .line 6
    invoke-virtual {v0}, Lr2/b0;->q()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Lr2/b0;->r(Lq2/h0;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object p1, p0, Lr2/u;->t:Lt1/c;

    .line 17
    .line 18
    iput-boolean v1, p1, Lt1/c;->g:Z

    .line 19
    .line 20
    invoke-virtual {p1}, Lt1/c;->l()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object p1, p1, Lt1/c;->h:Lcc/h;

    .line 27
    .line 28
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    invoke-interface {p1, v0}, Lcc/x;->x(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final D(Lq2/h0;ZZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lr2/u;->P:Lq2/w0;

    .line 2
    .line 3
    if-eqz p2, :cond_b

    .line 4
    .line 5
    iget-object p2, v0, Lq2/w0;->b:La2/b;

    .line 6
    .line 7
    iget-object v1, p1, Lq2/h0;->g:Lq2/h0;

    .line 8
    .line 9
    iget-object v2, p1, Lq2/h0;->F:Lq2/l0;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v1, "Error: requestLookaheadRemeasure cannot be called on a node outside LookaheadScope"

    .line 15
    .line 16
    invoke-static {v1}, Ln2/a;->b(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object v1, v2, Lq2/l0;->d:Lq2/d0;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz v1, :cond_a

    .line 27
    .line 28
    if-eq v1, v3, :cond_c

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    if-eq v1, v4, :cond_a

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    if-eq v1, v4, :cond_a

    .line 35
    .line 36
    const/4 v4, 0x4

    .line 37
    if-ne v1, v4, :cond_9

    .line 38
    .line 39
    iget-boolean v1, v2, Lq2/l0;->e:Z

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    if-nez p3, :cond_1

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_1
    iput-boolean v3, v2, Lq2/l0;->e:Z

    .line 48
    .line 49
    iget-object p3, v2, Lq2/l0;->p:Lq2/y0;

    .line 50
    .line 51
    iput-boolean v3, p3, Lq2/y0;->t:Z

    .line 52
    .line 53
    iget-boolean p3, p1, Lq2/h0;->P:Z

    .line 54
    .line 55
    if-eqz p3, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {p1}, Lq2/h0;->K()Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-static {p3, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-nez p3, :cond_3

    .line 69
    .line 70
    invoke-static {p1}, Lq2/w0;->h(Lq2/h0;)Z

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    if-eqz p3, :cond_4

    .line 75
    .line 76
    :cond_3
    invoke-virtual {p1}, Lq2/h0;->v()Lq2/h0;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    if-eqz p3, :cond_7

    .line 81
    .line 82
    iget-object p3, p3, Lq2/h0;->F:Lq2/l0;

    .line 83
    .line 84
    iget-boolean p3, p3, Lq2/l0;->e:Z

    .line 85
    .line 86
    if-ne p3, v3, :cond_7

    .line 87
    .line 88
    :cond_4
    invoke-virtual {p1}, Lq2/h0;->J()Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-nez p3, :cond_5

    .line 93
    .line 94
    invoke-static {p1}, Lq2/w0;->i(Lq2/h0;)Z

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    if-eqz p3, :cond_8

    .line 99
    .line 100
    :cond_5
    invoke-virtual {p1}, Lq2/h0;->v()Lq2/h0;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    if-eqz p3, :cond_6

    .line 105
    .line 106
    invoke-virtual {p3}, Lq2/h0;->r()Z

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    if-ne p3, v3, :cond_6

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_6
    sget-object p3, Lq2/u;->c:Lq2/u;

    .line 114
    .line 115
    invoke-virtual {p2, p1, p3}, La2/b;->q(Lq2/h0;Lq2/u;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    sget-object p3, Lq2/u;->a:Lq2/u;

    .line 120
    .line 121
    invoke-virtual {p2, p1, p3}, La2/b;->q(Lq2/h0;Lq2/u;)V

    .line 122
    .line 123
    .line 124
    :cond_8
    :goto_1
    iget-boolean p2, v0, Lq2/w0;->d:Z

    .line 125
    .line 126
    if-nez p2, :cond_c

    .line 127
    .line 128
    if-eqz p4, :cond_c

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lr2/u;->K(Lq2/h0;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_9
    new-instance p1, Lac/p;

    .line 135
    .line 136
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_a
    iget-object p2, v0, Lq2/w0;->h:Lh1/e;

    .line 141
    .line 142
    new-instance p4, Lq2/v0;

    .line 143
    .line 144
    invoke-direct {p4, p1, v3, p3}, Lq2/v0;-><init>(Lq2/h0;ZZ)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, p4}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_b
    invoke-virtual {v0, p1, p3}, Lq2/w0;->p(Lq2/h0;Z)Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-eqz p2, :cond_c

    .line 156
    .line 157
    if-eqz p4, :cond_c

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Lr2/u;->K(Lq2/h0;)V

    .line 160
    .line 161
    .line 162
    :cond_c
    :goto_2
    return-void
.end method

.method public final E(Lq2/h0;ZZ)V
    .locals 9

    .line 1
    iget-object v0, p1, Lq2/h0;->F:Lq2/l0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lq2/u;->d:Lq2/u;

    .line 5
    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x2

    .line 9
    iget-object v6, p0, Lr2/u;->P:Lq2/w0;

    .line 10
    .line 11
    const/4 v7, 0x1

    .line 12
    if-eqz p2, :cond_b

    .line 13
    .line 14
    iget-object p2, v6, Lq2/w0;->b:La2/b;

    .line 15
    .line 16
    iget-object v8, v0, Lq2/l0;->d:Lq2/d0;

    .line 17
    .line 18
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    if-eqz v8, :cond_1

    .line 23
    .line 24
    if-eq v8, v7, :cond_13

    .line 25
    .line 26
    if-eq v8, v5, :cond_1

    .line 27
    .line 28
    if-eq v8, v4, :cond_13

    .line 29
    .line 30
    if-ne v8, v3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Lac/p;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    :goto_0
    iget-boolean v3, v0, Lq2/l0;->e:Z

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    iget-boolean v3, v0, Lq2/l0;->f:Z

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    :cond_2
    if-nez p3, :cond_3

    .line 48
    .line 49
    goto/16 :goto_6

    .line 50
    .line 51
    :cond_3
    iput-boolean v7, v0, Lq2/l0;->f:Z

    .line 52
    .line 53
    iput-boolean v7, v0, Lq2/l0;->g:Z

    .line 54
    .line 55
    iget-object p3, v0, Lq2/l0;->p:Lq2/y0;

    .line 56
    .line 57
    iput-boolean v7, p3, Lq2/y0;->u:Z

    .line 58
    .line 59
    iput-boolean v7, p3, Lq2/y0;->v:Z

    .line 60
    .line 61
    iget-boolean p3, p1, Lq2/h0;->P:Z

    .line 62
    .line 63
    if-eqz p3, :cond_4

    .line 64
    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_4
    invoke-virtual {p1}, Lq2/h0;->v()Lq2/h0;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {p1}, Lq2/h0;->K()Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-static {v0, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    if-eqz p3, :cond_5

    .line 84
    .line 85
    iget-object v0, p3, Lq2/h0;->F:Lq2/l0;

    .line 86
    .line 87
    iget-boolean v0, v0, Lq2/l0;->e:Z

    .line 88
    .line 89
    if-ne v0, v7, :cond_5

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    if-eqz p3, :cond_6

    .line 93
    .line 94
    iget-object v0, p3, Lq2/h0;->F:Lq2/l0;

    .line 95
    .line 96
    iget-boolean v0, v0, Lq2/l0;->f:Z

    .line 97
    .line 98
    if-ne v0, v7, :cond_6

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_6
    sget-object p3, Lq2/u;->b:Lq2/u;

    .line 102
    .line 103
    invoke-virtual {p2, p1, p3}, La2/b;->q(Lq2/h0;Lq2/u;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lq2/h0;->J()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_a

    .line 112
    .line 113
    if-eqz p3, :cond_8

    .line 114
    .line 115
    invoke-virtual {p3}, Lq2/h0;->q()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-ne v0, v7, :cond_8

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_8
    if-eqz p3, :cond_9

    .line 123
    .line 124
    invoke-virtual {p3}, Lq2/h0;->r()Z

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    if-ne p3, v7, :cond_9

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_9
    invoke-virtual {p2, p1, v2}, La2/b;->q(Lq2/h0;Lq2/u;)V

    .line 132
    .line 133
    .line 134
    :cond_a
    :goto_2
    iget-boolean p1, v6, Lq2/w0;->d:Z

    .line 135
    .line 136
    if-nez p1, :cond_13

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Lr2/u;->K(Lq2/h0;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    iget-object p2, v0, Lq2/l0;->d:Lq2/d0;

    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_13

    .line 152
    .line 153
    if-eq p2, v7, :cond_13

    .line 154
    .line 155
    if-eq p2, v5, :cond_13

    .line 156
    .line 157
    if-eq p2, v4, :cond_13

    .line 158
    .line 159
    if-ne p2, v3, :cond_12

    .line 160
    .line 161
    invoke-virtual {p1}, Lq2/h0;->v()Lq2/h0;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    if-eqz p2, :cond_d

    .line 166
    .line 167
    invoke-virtual {p2}, Lq2/h0;->J()Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_c

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_c
    const/4 v3, 0x0

    .line 175
    goto :goto_4

    .line 176
    :cond_d
    :goto_3
    const/4 v3, 0x1

    .line 177
    :goto_4
    if-nez p3, :cond_e

    .line 178
    .line 179
    invoke-virtual {p1}, Lq2/h0;->r()Z

    .line 180
    .line 181
    .line 182
    move-result p3

    .line 183
    if-nez p3, :cond_13

    .line 184
    .line 185
    invoke-virtual {p1}, Lq2/h0;->q()Z

    .line 186
    .line 187
    .line 188
    move-result p3

    .line 189
    if-eqz p3, :cond_e

    .line 190
    .line 191
    invoke-virtual {p1}, Lq2/h0;->J()Z

    .line 192
    .line 193
    .line 194
    move-result p3

    .line 195
    if-ne p3, v3, :cond_e

    .line 196
    .line 197
    invoke-virtual {p1}, Lq2/h0;->J()Z

    .line 198
    .line 199
    .line 200
    move-result p3

    .line 201
    iget-object v4, v0, Lq2/l0;->p:Lq2/y0;

    .line 202
    .line 203
    iget-boolean v4, v4, Lq2/y0;->s:Z

    .line 204
    .line 205
    if-ne p3, v4, :cond_e

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_e
    iget-object p3, v0, Lq2/l0;->p:Lq2/y0;

    .line 209
    .line 210
    iput-boolean v7, p3, Lq2/y0;->u:Z

    .line 211
    .line 212
    iput-boolean v7, p3, Lq2/y0;->v:Z

    .line 213
    .line 214
    iget-boolean v0, p1, Lq2/h0;->P:Z

    .line 215
    .line 216
    if-eqz v0, :cond_f

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_f
    iget-boolean p3, p3, Lq2/y0;->s:Z

    .line 220
    .line 221
    if-eqz p3, :cond_13

    .line 222
    .line 223
    if-eqz v3, :cond_13

    .line 224
    .line 225
    if-eqz p2, :cond_10

    .line 226
    .line 227
    invoke-virtual {p2}, Lq2/h0;->q()Z

    .line 228
    .line 229
    .line 230
    move-result p3

    .line 231
    if-ne p3, v7, :cond_10

    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_10
    if-eqz p2, :cond_11

    .line 235
    .line 236
    invoke-virtual {p2}, Lq2/h0;->r()Z

    .line 237
    .line 238
    .line 239
    move-result p2

    .line 240
    if-ne p2, v7, :cond_11

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_11
    iget-object p2, v6, Lq2/w0;->b:La2/b;

    .line 244
    .line 245
    invoke-virtual {p2, p1, v2}, La2/b;->q(Lq2/h0;Lq2/u;)V

    .line 246
    .line 247
    .line 248
    :goto_5
    iget-boolean p1, v6, Lq2/w0;->d:Z

    .line 249
    .line 250
    if-nez p1, :cond_13

    .line 251
    .line 252
    invoke-virtual {p0, v1}, Lr2/u;->K(Lq2/h0;)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :cond_12
    new-instance p1, Lac/p;

    .line 257
    .line 258
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 259
    .line 260
    .line 261
    throw p1

    .line 262
    :cond_13
    :goto_6
    return-void
.end method

.method public final F()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr2/u;->s:Lr2/b0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lr2/b0;->A:Z

    .line 5
    .line 6
    invoke-virtual {v0}, Lr2/b0;->q()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-boolean v2, v0, Lr2/b0;->L:Z

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iput-boolean v1, v0, Lr2/b0;->L:Z

    .line 17
    .line 18
    iget-object v2, v0, Lr2/b0;->l:Landroid/os/Handler;

    .line 19
    .line 20
    iget-object v0, v0, Lr2/b0;->N:Landroidx/lifecycle/z;

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lr2/u;->t:Lt1/c;

    .line 26
    .line 27
    iput-boolean v1, v0, Lt1/c;->g:Z

    .line 28
    .line 29
    invoke-virtual {v0}, Lt1/c;->l()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-boolean v2, v0, Lt1/c;->n:Z

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    iput-boolean v1, v0, Lt1/c;->n:Z

    .line 40
    .line 41
    iget-object v1, v0, Lt1/c;->i:Landroid/os/Handler;

    .line 42
    .line 43
    iget-object v0, v0, Lt1/c;->o:Landroidx/lifecycle/z;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final G()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lr2/u;->W:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lr2/u;->V:J

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-eqz v4, :cond_1

    .line 14
    .line 15
    iput-wide v0, p0, Lr2/u;->V:J

    .line 16
    .line 17
    iget-object v0, p0, Lr2/u;->J0:Lr2/a1;

    .line 18
    .line 19
    iget-object v1, p0, Lr2/u;->T:[F

    .line 20
    .line 21
    invoke-interface {v0, p0, v1}, Lr2/a1;->c(Landroid/view/View;[F)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lr2/u;->U:[F

    .line 25
    .line 26
    invoke-static {v1, v0}, Lr2/j0;->p([F[F)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    move-object v1, p0

    .line 34
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    move-object v1, v0

    .line 39
    check-cast v1, Landroid/view/View;

    .line 40
    .line 41
    move-object v0, v1

    .line 42
    check-cast v0, Landroid/view/ViewGroup;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lr2/u;->R:[I

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 52
    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    aget v3, v0, v2

    .line 56
    .line 57
    int-to-float v3, v3

    .line 58
    const/4 v4, 0x1

    .line 59
    aget v5, v0, v4

    .line 60
    .line 61
    int-to-float v5, v5

    .line 62
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 63
    .line 64
    .line 65
    aget v1, v0, v2

    .line 66
    .line 67
    int-to-float v1, v1

    .line 68
    aget v0, v0, v4

    .line 69
    .line 70
    int-to-float v0, v0

    .line 71
    sub-float/2addr v3, v1

    .line 72
    sub-float/2addr v5, v0

    .line 73
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    int-to-long v0, v0

    .line 78
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    int-to-long v2, v2

    .line 83
    const/16 v4, 0x20

    .line 84
    .line 85
    shl-long/2addr v0, v4

    .line 86
    const-wide v4, 0xffffffffL

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    and-long/2addr v2, v4

    .line 92
    or-long/2addr v0, v2

    .line 93
    iput-wide v0, p0, Lr2/u;->f0:J

    .line 94
    .line 95
    :cond_1
    return-void
.end method

.method public final H(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lr2/u;->V:J

    .line 6
    .line 7
    iget-object v0, p0, Lr2/u;->J0:Lr2/a1;

    .line 8
    .line 9
    iget-object v1, p0, Lr2/u;->T:[F

    .line 10
    .line 11
    invoke-interface {v0, p0, v1}, Lr2/a1;->c(Landroid/view/View;[F)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lr2/u;->U:[F

    .line 15
    .line 16
    invoke-static {v1, v0}, Lr2/j0;->p([F[F)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-long v3, v0

    .line 32
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-long v5, v0

    .line 37
    const/16 v0, 0x20

    .line 38
    .line 39
    shl-long v2, v3, v0

    .line 40
    .line 41
    const-wide v7, 0xffffffffL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    and-long/2addr v5, v7

    .line 47
    or-long/2addr v2, v5

    .line 48
    invoke-static {v2, v3, v1}, Ly1/a0;->b(J[F)J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    shr-long v4, v1, v0

    .line 57
    .line 58
    long-to-int v5, v4

    .line 59
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    sub-float/2addr v3, v4

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    and-long/2addr v1, v7

    .line 69
    long-to-int v2, v1

    .line 70
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    sub-float/2addr p1, v1

    .line 75
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    int-to-long v1, v1

    .line 80
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    int-to-long v3, p1

    .line 85
    shl-long v0, v1, v0

    .line 86
    .line 87
    and-long/2addr v3, v7

    .line 88
    or-long/2addr v0, v3

    .line 89
    iput-wide v0, p0, Lr2/u;->f0:J

    .line 90
    .line 91
    return-void
.end method

.method public final I(Lq2/p1;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lr2/u;->M:Lr2/n1;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lr2/r2;->v:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x17

    .line 12
    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    if-eqz v0, :cond_4

    .line 20
    .line 21
    :cond_2
    iget-object v1, p0, Lr2/u;->B0:Landroid/support/v4/media/session/t;

    .line 22
    .line 23
    iget-object v2, v1, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ljava/lang/ref/ReferenceQueue;

    .line 26
    .line 27
    iget-object v3, v1, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Lh1/e;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Lh1/e;->k(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_3
    if-nez v2, :cond_2

    .line 41
    .line 42
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 43
    .line 44
    iget-object v1, v1, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Ljava/lang/ref/ReferenceQueue;

    .line 47
    .line 48
    invoke-direct {v2, p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v2}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_4
    iget-object v1, p0, Lr2/u;->x:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    return v0
.end method

.method public final J()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v0, 0x82

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method public final K(Lq2/h0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lq2/h0;->s()Lq2/f0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lq2/f0;->a:Lq2/f0;

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    iget-boolean v0, p0, Lr2/u;->O:Z

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lq2/h0;->v()Lq2/h0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, v0, Lq2/h0;->E:Lq2/d1;

    .line 36
    .line 37
    iget-object v0, v0, Lq2/d1;->c:Lq2/t;

    .line 38
    .line 39
    iget-wide v0, v0, Lo2/v0;->d:J

    .line 40
    .line 41
    invoke-static {v0, v1}, Ln3/a;->f(J)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-static {v0, v1}, Ln3/a;->e(J)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {p1}, Lq2/h0;->v()Lq2/h0;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lr2/u;->getRoot()Lq2/h0;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-ne p1, v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 87
    .line 88
    .line 89
    :cond_5
    return-void
.end method

.method public final L(J)J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lr2/u;->G()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    shr-long v1, p1, v0

    .line 7
    .line 8
    long-to-int v2, v1

    .line 9
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-wide v2, p0, Lr2/u;->f0:J

    .line 14
    .line 15
    shr-long/2addr v2, v0

    .line 16
    long-to-int v3, v2

    .line 17
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sub-float/2addr v1, v2

    .line 22
    const-wide v2, 0xffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    and-long/2addr p1, v2

    .line 28
    long-to-int p2, p1

    .line 29
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-wide v4, p0, Lr2/u;->f0:J

    .line 34
    .line 35
    and-long/2addr v4, v2

    .line 36
    long-to-int p2, v4

    .line 37
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    sub-float/2addr p1, p2

    .line 42
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    int-to-long v4, p2

    .line 47
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    int-to-long p1, p1

    .line 52
    shl-long v0, v4, v0

    .line 53
    .line 54
    and-long/2addr p1, v2

    .line 55
    or-long/2addr p1, v0

    .line 56
    iget-object v0, p0, Lr2/u;->U:[F

    .line 57
    .line 58
    invoke-static {p1, p2, v0}, Ly1/a0;->b(J[F)J

    .line 59
    .line 60
    .line 61
    move-result-wide p1

    .line 62
    return-wide p1
.end method

.method public final M(Landroid/view/MotionEvent;)I
    .locals 8

    .line 1
    iget-boolean v0, p0, Lr2/u;->K0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lr2/u;->K0:Z

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v2, p0, Lr2/u;->j:Lr2/v1;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v2, Lr2/u2;->a:Lf1/k1;

    .line 18
    .line 19
    new-instance v3, Lk2/f0;

    .line 20
    .line 21
    invoke-direct {v3, v0}, Lk2/f0;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lr2/u;->B:Lk2/k;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p0}, Lk2/k;->a(Landroid/view/MotionEvent;Lr2/u;)Landroid/support/v4/media/session/t;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v3, p0, Lr2/u;->C:Lb1/q;

    .line 34
    .line 35
    if-eqz v2, :cond_8

    .line 36
    .line 37
    iget-object v1, v2, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    add-int/lit8 v4, v4, -0x1

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    if-ltz v4, :cond_3

    .line 49
    .line 50
    :goto_0
    add-int/lit8 v6, v4, -0x1

    .line 51
    .line 52
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    move-object v7, v4

    .line 57
    check-cast v7, Lk2/y;

    .line 58
    .line 59
    iget-boolean v7, v7, Lk2/y;->e:Z

    .line 60
    .line 61
    if-eqz v7, :cond_1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    if-gez v6, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move v4, v6

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    :goto_1
    move-object v4, v5

    .line 70
    :goto_2
    check-cast v4, Lk2/y;

    .line 71
    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    iget-wide v6, v4, Lk2/y;->d:J

    .line 75
    .line 76
    iput-wide v6, p0, Lr2/u;->a:J

    .line 77
    .line 78
    :cond_4
    invoke-virtual {p0, p1}, Lr2/u;->u(Landroid/view/MotionEvent;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v3, v2, p0, v1}, Lb1/q;->f(Landroid/support/v4/media/session/t;Lr2/u;Z)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iput-object v5, v2, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    const/4 v3, 0x5

    .line 95
    if-ne v2, v3, :cond_6

    .line 96
    .line 97
    :cond_5
    and-int/lit8 v2, v1, 0x1

    .line 98
    .line 99
    if-eqz v2, :cond_7

    .line 100
    .line 101
    :cond_6
    return v1

    .line 102
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iget-object v2, v0, Lk2/k;->c:Landroid/util/SparseBooleanArray;

    .line 111
    .line 112
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 113
    .line 114
    .line 115
    iget-object v0, v0, Lk2/k;->b:Landroid/util/SparseLongArray;

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 118
    .line 119
    .line 120
    return v1

    .line 121
    :cond_8
    iget-boolean p1, v3, Lb1/q;->a:Z

    .line 122
    .line 123
    if-nez p1, :cond_9

    .line 124
    .line 125
    iget-object p1, v3, Lb1/q;->d:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p1, La2/d;

    .line 128
    .line 129
    iget-object p1, p1, La2/d;->b:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p1, Ls/q;

    .line 132
    .line 133
    invoke-virtual {p1}, Ls/q;->b()V

    .line 134
    .line 135
    .line 136
    iget-object p1, v3, Lb1/q;->c:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p1, Lk2/e;

    .line 139
    .line 140
    invoke-virtual {p1}, Lk2/e;->f()V

    .line 141
    .line 142
    .line 143
    :cond_9
    return v1
.end method

.method public final N(Landroid/view/MotionEvent;IJZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v6, 0x1

    .line 13
    if-eq v2, v6, :cond_1

    .line 14
    .line 15
    const/4 v7, 0x6

    .line 16
    if-eq v2, v7, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/16 v2, 0x9

    .line 25
    .line 26
    if-eq v5, v2, :cond_2

    .line 27
    .line 28
    const/16 v2, 0xa

    .line 29
    .line 30
    if-eq v5, v2, :cond_2

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ltz v3, :cond_3

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    const/4 v7, 0x0

    .line 42
    :goto_1
    sub-int/2addr v2, v7

    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    return-void

    .line 46
    :cond_4
    new-array v7, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    :goto_2
    if-ge v8, v2, :cond_5

    .line 50
    .line 51
    new-instance v9, Landroid/view/MotionEvent$PointerProperties;

    .line 52
    .line 53
    invoke-direct {v9}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 54
    .line 55
    .line 56
    aput-object v9, v7, v8

    .line 57
    .line 58
    add-int/lit8 v8, v8, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    new-array v8, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    :goto_3
    if-ge v9, v2, :cond_6

    .line 65
    .line 66
    new-instance v10, Landroid/view/MotionEvent$PointerCoords;

    .line 67
    .line 68
    invoke-direct {v10}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 69
    .line 70
    .line 71
    aput-object v10, v8, v9

    .line 72
    .line 73
    add-int/lit8 v9, v9, 0x1

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_6
    const/4 v9, 0x0

    .line 77
    :goto_4
    if-ge v9, v2, :cond_9

    .line 78
    .line 79
    if-ltz v3, :cond_8

    .line 80
    .line 81
    if-ge v9, v3, :cond_7

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_7
    const/4 v10, 0x1

    .line 85
    goto :goto_6

    .line 86
    :cond_8
    :goto_5
    const/4 v10, 0x0

    .line 87
    :goto_6
    add-int/2addr v10, v9

    .line 88
    aget-object v11, v7, v9

    .line 89
    .line 90
    invoke-virtual {v1, v10, v11}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 91
    .line 92
    .line 93
    aget-object v11, v8, v9

    .line 94
    .line 95
    invoke-virtual {v1, v10, v11}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 96
    .line 97
    .line 98
    iget v10, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 99
    .line 100
    iget v12, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 101
    .line 102
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    int-to-long v13, v10

    .line 107
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    int-to-long v4, v10

    .line 112
    const/16 v10, 0x20

    .line 113
    .line 114
    shl-long/2addr v13, v10

    .line 115
    const-wide v15, 0xffffffffL

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    and-long/2addr v4, v15

    .line 121
    or-long/2addr v4, v13

    .line 122
    invoke-virtual {v0, v4, v5}, Lr2/u;->x(J)J

    .line 123
    .line 124
    .line 125
    move-result-wide v4

    .line 126
    shr-long v13, v4, v10

    .line 127
    .line 128
    long-to-int v10, v13

    .line 129
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    iput v10, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 134
    .line 135
    and-long/2addr v4, v15

    .line 136
    long-to-int v5, v4

    .line 137
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    iput v4, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 142
    .line 143
    add-int/lit8 v9, v9, 0x1

    .line 144
    .line 145
    move/from16 v5, p2

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_9
    if-eqz p5, :cond_a

    .line 149
    .line 150
    const/4 v10, 0x0

    .line 151
    goto :goto_7

    .line 152
    :cond_a
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    move v10, v4

    .line 157
    :goto_7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 158
    .line 159
    .line 160
    move-result-wide v3

    .line 161
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 162
    .line 163
    .line 164
    move-result-wide v11

    .line 165
    cmp-long v5, v3, v11

    .line 166
    .line 167
    if-nez v5, :cond_b

    .line 168
    .line 169
    move-wide/from16 v3, p3

    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_b
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 173
    .line 174
    .line 175
    move-result-wide v3

    .line 176
    :goto_8
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getXPrecision()F

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getYPrecision()F

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    .line 197
    .line 198
    .line 199
    move-result v15

    .line 200
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    .line 201
    .line 202
    .line 203
    move-result v16

    .line 204
    move/from16 v5, p2

    .line 205
    .line 206
    move v6, v2

    .line 207
    move-wide v1, v3

    .line 208
    move-wide/from16 v3, p3

    .line 209
    .line 210
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    iget-object v2, v0, Lr2/u;->B:Lk2/k;

    .line 215
    .line 216
    invoke-virtual {v2, v1, v0}, Lk2/k;->a(Landroid/view/MotionEvent;Lr2/u;)Landroid/support/v4/media/session/t;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    iget-object v3, v0, Lr2/u;->C:Lb1/q;

    .line 224
    .line 225
    const/4 v4, 0x1

    .line 226
    invoke-virtual {v3, v2, v0, v4}, Lb1/q;->f(Landroid/support/v4/media/session/t;Lr2/u;Z)I

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 230
    .line 231
    .line 232
    return-void
.end method

.method public final O(Lf9/n;Ly8/c;)V
    .locals 4

    .line 1
    instance-of v0, p2, Lr2/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lr2/t;

    .line 7
    .line 8
    iget v1, v0, Lr2/t;->f:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lr2/t;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lr2/t;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lr2/t;-><init>(Lr2/u;Ly8/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lr2/t;->d:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lr2/t;->f:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-eq v1, v2, :cond_1

    .line 33
    .line 34
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {p2}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Lr2/p;

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    invoke-direct {p2, p0, v1}, Lr2/p;-><init>(Lr2/u;I)V

    .line 53
    .line 54
    .line 55
    iput v2, v0, Lr2/t;->f:I

    .line 56
    .line 57
    new-instance v1, Ldc/i;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    iget-object v3, p0, Lr2/u;->p0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    .line 62
    invoke-direct {v1, p2, v3, p1, v2}, Ldc/i;-><init>(Lf9/k;Ljava/util/concurrent/atomic/AtomicReference;Lf9/n;Lw8/c;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v0}, Lac/z;->f(Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 70
    .line 71
    if-ne p1, p2, :cond_3

    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    :goto_1
    new-instance p1, Lac/p;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method public final P()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lr2/u;->R:[I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    .line 7
    .line 8
    iget-wide v2, v0, Lr2/u;->Q:J

    .line 9
    .line 10
    const/16 v4, 0x20

    .line 11
    .line 12
    shr-long v5, v2, v4

    .line 13
    .line 14
    long-to-int v6, v5

    .line 15
    const-wide v7, 0xffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    and-long/2addr v2, v7

    .line 21
    long-to-int v3, v2

    .line 22
    const/4 v2, 0x0

    .line 23
    aget v5, v1, v2

    .line 24
    .line 25
    const/4 v9, 0x1

    .line 26
    if-ne v6, v5, :cond_0

    .line 27
    .line 28
    aget v10, v1, v9

    .line 29
    .line 30
    if-ne v3, v10, :cond_0

    .line 31
    .line 32
    iget-wide v10, v0, Lr2/u;->V:J

    .line 33
    .line 34
    const-wide/16 v12, 0x0

    .line 35
    .line 36
    cmp-long v14, v10, v12

    .line 37
    .line 38
    if-gez v14, :cond_1

    .line 39
    .line 40
    :cond_0
    aget v1, v1, v9

    .line 41
    .line 42
    int-to-long v10, v5

    .line 43
    shl-long/2addr v10, v4

    .line 44
    int-to-long v12, v1

    .line 45
    and-long/2addr v12, v7

    .line 46
    or-long/2addr v10, v12

    .line 47
    iput-wide v10, v0, Lr2/u;->Q:J

    .line 48
    .line 49
    const v1, 0x7fffffff

    .line 50
    .line 51
    .line 52
    if-eq v6, v1, :cond_1

    .line 53
    .line 54
    if-eq v3, v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0}, Lr2/u;->getRoot()Lq2/h0;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v1, v1, Lq2/h0;->F:Lq2/l0;

    .line 61
    .line 62
    iget-object v1, v1, Lq2/l0;->p:Lq2/y0;

    .line 63
    .line 64
    invoke-virtual {v1}, Lq2/y0;->g0()V

    .line 65
    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v1, 0x0

    .line 70
    :goto_0
    invoke-virtual {v0}, Lr2/u;->G()V

    .line 71
    .line 72
    .line 73
    iget-object v3, v0, Lr2/u;->M0:Landroid/view/View;

    .line 74
    .line 75
    if-nez v3, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iput-object v3, v0, Lr2/u;->M0:Landroid/view/View;

    .line 82
    .line 83
    :cond_2
    invoke-virtual {v0}, Lr2/u;->getRectManager()Lz2/a;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    iget-wide v10, v0, Lr2/u;->Q:J

    .line 88
    .line 89
    iget-wide v12, v0, Lr2/u;->f0:J

    .line 90
    .line 91
    invoke-static {v12, v13}, Li9/a;->M(J)J

    .line 92
    .line 93
    .line 94
    move-result-wide v12

    .line 95
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget-object v14, v0, Lr2/u;->T:[F

    .line 107
    .line 108
    invoke-static {v14}, Lp9/p1;->e([F)I

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    iget-object v2, v5, Lz2/a;->b:Lz2/b;

    .line 113
    .line 114
    and-int/lit8 v15, v15, 0x2

    .line 115
    .line 116
    if-nez v15, :cond_3

    .line 117
    .line 118
    :goto_1
    move-wide/from16 v16, v7

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    const/4 v14, 0x0

    .line 122
    goto :goto_1

    .line 123
    :goto_2
    iget-wide v7, v2, Lz2/b;->c:J

    .line 124
    .line 125
    invoke-static {v12, v13, v7, v8}, Ln3/j;->a(JJ)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-nez v7, :cond_4

    .line 130
    .line 131
    iput-wide v12, v2, Lz2/b;->c:J

    .line 132
    .line 133
    const/4 v7, 0x1

    .line 134
    goto :goto_3

    .line 135
    :cond_4
    const/4 v7, 0x0

    .line 136
    :goto_3
    iget-wide v12, v2, Lz2/b;->d:J

    .line 137
    .line 138
    invoke-static {v10, v11, v12, v13}, Ln3/j;->a(JJ)Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-nez v8, :cond_5

    .line 143
    .line 144
    iput-wide v10, v2, Lz2/b;->d:J

    .line 145
    .line 146
    const/4 v7, 0x1

    .line 147
    :cond_5
    if-eqz v14, :cond_6

    .line 148
    .line 149
    const/4 v7, 0x1

    .line 150
    :cond_6
    int-to-long v10, v6

    .line 151
    shl-long/2addr v10, v4

    .line 152
    int-to-long v3, v3

    .line 153
    and-long v3, v3, v16

    .line 154
    .line 155
    or-long/2addr v3, v10

    .line 156
    iget-wide v10, v2, Lz2/b;->e:J

    .line 157
    .line 158
    cmp-long v6, v3, v10

    .line 159
    .line 160
    if-eqz v6, :cond_7

    .line 161
    .line 162
    iput-wide v3, v2, Lz2/b;->e:J

    .line 163
    .line 164
    const/4 v7, 0x1

    .line 165
    :cond_7
    if-nez v7, :cond_9

    .line 166
    .line 167
    iget-boolean v2, v5, Lz2/a;->e:Z

    .line 168
    .line 169
    if-eqz v2, :cond_8

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_8
    const/4 v2, 0x0

    .line 173
    goto :goto_5

    .line 174
    :cond_9
    :goto_4
    const/4 v2, 0x1

    .line 175
    :goto_5
    iput-boolean v2, v5, Lz2/a;->e:Z

    .line 176
    .line 177
    iget-object v2, v0, Lr2/u;->P:Lq2/w0;

    .line 178
    .line 179
    invoke-virtual {v2, v1}, Lq2/w0;->a(Z)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Lr2/u;->getRectManager()Lz2/a;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lz2/a;->a()V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public final Q(F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lr2/u;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    cmpl-float v1, p1, v0

    .line 7
    .line 8
    if-lez v1, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lr2/u;->D0:F

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lr2/u;->D0:F

    .line 19
    .line 20
    cmpl-float v0, p1, v0

    .line 21
    .line 22
    if-lez v0, :cond_3

    .line 23
    .line 24
    :cond_0
    iput p1, p0, Lr2/u;->D0:F

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    cmpg-float v0, p1, v0

    .line 28
    .line 29
    if-gez v0, :cond_3

    .line 30
    .line 31
    iget v0, p0, Lr2/u;->E0:F

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget v0, p0, Lr2/u;->E0:F

    .line 40
    .line 41
    cmpg-float v0, p1, v0

    .line 42
    .line 43
    if-gez v0, :cond_3

    .line 44
    .line 45
    :cond_2
    iput p1, p0, Lr2/u;->E0:F

    .line 46
    .line 47
    :cond_3
    return-void
.end method

.method public final a(Landroidx/lifecycle/t;)V
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x1e

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lr2/j0;->n()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lr2/u;->setShowLayoutBounds(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lr2/u;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 2

    .line 2
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final addView(Landroid/view/View;II)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, 0x1

    const/4 p3, -0x1

    .line 7
    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final autofill(Landroid/util/SparseArray;)V
    .locals 7

    .line 1
    invoke-static {}, Lr2/u;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iget-object v1, p0, Lr2/u;->F:Ls1/c;

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_5

    .line 18
    .line 19
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static {v5}, Lq0/o;->h(Ljava/lang/Object;)Landroid/view/autofill/AutofillValue;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v5}, Lq0/o;->D(Landroid/view/autofill/AutofillValue;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    iget-object v6, v1, Ls1/c;->b:Ly2/o;

    .line 38
    .line 39
    iget-object v6, v6, Ly2/o;->c:Ls/k;

    .line 40
    .line 41
    invoke-virtual {v6, v4}, Ls/k;->b(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lq2/h0;

    .line 46
    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    invoke-virtual {v4}, Lq2/h0;->x()Ly2/j;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    sget-object v6, Ly2/i;->g:Ly2/u;

    .line 56
    .line 57
    iget-object v4, v4, Ly2/j;->a:Ls/h0;

    .line 58
    .line 59
    invoke-virtual {v4, v6}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-nez v4, :cond_0

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    :cond_0
    check-cast v4, Ly2/a;

    .line 67
    .line 68
    if-eqz v4, :cond_4

    .line 69
    .line 70
    iget-object v4, v4, Ly2/a;->b:Lr8/e;

    .line 71
    .line 72
    check-cast v4, Lf9/k;

    .line 73
    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    new-instance v6, Lb3/g;

    .line 77
    .line 78
    invoke-static {v5}, Lq0/o;->k(Landroid/view/autofill/AutofillValue;)Ljava/lang/CharSequence;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-direct {v6, v5}, Lb3/g;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v4, v6}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Ljava/lang/Boolean;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    invoke-static {v5}, Lq0/o;->y(Landroid/view/autofill/AutofillValue;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    const-string v6, "ComposeAutofillManager"

    .line 101
    .line 102
    if-eqz v4, :cond_2

    .line 103
    .line 104
    const-string v4, "Auto filling Date fields is not yet supported."

    .line 105
    .line 106
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-static {v5}, Lq0/o;->C(Landroid/view/autofill/AutofillValue;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_3

    .line 115
    .line 116
    const-string v4, "Auto filling dropdown lists is not yet supported."

    .line 117
    .line 118
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    invoke-static {v5}, Lq0/o;->B(Landroid/view/autofill/AutofillValue;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_4

    .line 127
    .line 128
    const-string v4, "Auto filling toggle fields are not yet supported."

    .line 129
    .line 130
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_5
    iget-object v1, p0, Lr2/u;->E:Lba/a;

    .line 137
    .line 138
    if-eqz v1, :cond_c

    .line 139
    .line 140
    iget-object v1, v1, Lba/a;->c:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v1, Ls1/k;

    .line 143
    .line 144
    iget-object v2, v1, Ls1/k;->a:Ljava/util/LinkedHashMap;

    .line 145
    .line 146
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_6

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_6
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    :goto_2
    if-ge v0, v2, :cond_c

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-static {v4}, Lq0/o;->h(Ljava/lang/Object;)Landroid/view/autofill/AutofillValue;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-static {v4}, Lq0/o;->D(Landroid/view/autofill/AutofillValue;)Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-eqz v5, :cond_8

    .line 176
    .line 177
    invoke-static {v4}, Lq0/o;->k(Landroid/view/autofill/AutofillValue;)Ljava/lang/CharSequence;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    iget-object v4, v1, Ls1/k;->a:Ljava/util/LinkedHashMap;

    .line 185
    .line 186
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    if-nez v3, :cond_7

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_7
    new-instance p1, Ljava/lang/ClassCastException;

    .line 198
    .line 199
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 200
    .line 201
    .line 202
    throw p1

    .line 203
    :cond_8
    invoke-static {v4}, Lq0/o;->y(Landroid/view/autofill/AutofillValue;)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-nez v3, :cond_b

    .line 208
    .line 209
    invoke-static {v4}, Lq0/o;->C(Landroid/view/autofill/AutofillValue;)Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-nez v3, :cond_a

    .line 214
    .line 215
    invoke-static {v4}, Lq0/o;->B(Landroid/view/autofill/AutofillValue;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-nez v3, :cond_9

    .line 220
    .line 221
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_9
    new-instance p1, Lac/y;

    .line 225
    .line 226
    const-string v0, "An operation is not implemented: b/138604541:  Add onFill() callback for toggle"

    .line 227
    .line 228
    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw p1

    .line 232
    :cond_a
    new-instance p1, Lac/y;

    .line 233
    .line 234
    const-string v0, "An operation is not implemented: b/138604541: Add onFill() callback for list"

    .line 235
    .line 236
    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p1

    .line 240
    :cond_b
    new-instance p1, Lac/y;

    .line 241
    .line 242
    const-string v0, "An operation is not implemented: b/138604541: Add onFill() callback for date"

    .line 243
    .line 244
    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw p1

    .line 248
    :cond_c
    :goto_4
    return-void
.end method

.method public final synthetic b(Landroidx/lifecycle/t;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final canScrollHorizontally(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-wide v1, p0, Lr2/u;->a:J

    .line 3
    .line 4
    iget-object v3, p0, Lr2/u;->s:Lr2/b0;

    .line 5
    .line 6
    invoke-virtual {v3, v1, v2, p1, v0}, Lr2/b0;->h(JIZ)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final canScrollVertically(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-wide v1, p0, Lr2/u;->a:J

    .line 3
    .line 4
    iget-object v3, p0, Lr2/u;->s:Lr2/b0;

    .line 5
    .line 6
    invoke-virtual {v3, v1, v2, p1, v0}, Lr2/b0;->h(JIZ)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final synthetic d(Landroidx/lifecycle/t;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lr2/u;->getRoot()Lq2/h0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lr2/u;->r(Lq2/h0;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lr2/u;->y(Z)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lp1/f;->m()V

    .line 23
    .line 24
    .line 25
    iput-boolean v0, p0, Lr2/u;->z:Z

    .line 26
    .line 27
    iget-object v0, p0, Lr2/u;->k:Ly1/p;

    .line 28
    .line 29
    iget-object v1, v0, Ly1/p;->a:Ly1/b;

    .line 30
    .line 31
    iget-object v2, v1, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 32
    .line 33
    iput-object p1, v1, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 34
    .line 35
    invoke-virtual {p0}, Lr2/u;->getRoot()Lq2/h0;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual {v3, v1, v4}, Lq2/h0;->i(Ly1/o;Lb2/c;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Ly1/p;->a:Ly1/b;

    .line 44
    .line 45
    iput-object v2, v0, Ly1/b;->a:Landroid/graphics/Canvas;

    .line 46
    .line 47
    iget-object v0, p0, Lr2/u;->x:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x0

    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v3, 0x0

    .line 61
    :goto_0
    if-ge v3, v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Lq2/p1;

    .line 68
    .line 69
    invoke-interface {v5}, Lq2/p1;->k()V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    sget-boolean v1, Lr2/r2;->v:Z

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 85
    .line 86
    .line 87
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    .line 95
    .line 96
    iput-boolean v2, p0, Lr2/u;->z:Z

    .line 97
    .line 98
    iget-object v1, p0, Lr2/u;->y:Ljava/util/ArrayList;

    .line 99
    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-boolean v0, p0, Lr2/u;->f:Z

    .line 109
    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    iget v0, p0, Lr2/u;->D0:F

    .line 113
    .line 114
    invoke-static {p0, v0}, Lr2/y0;->a(Landroid/view/View;F)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lr2/u;->e:Landroid/view/View;

    .line 118
    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    iget v1, p0, Lr2/u;->E0:F

    .line 122
    .line 123
    invoke-static {v0, v1}, Lr2/y0;->a(Landroid/view/View;F)V

    .line 124
    .line 125
    .line 126
    iget v1, p0, Lr2/u;->E0:F

    .line 127
    .line 128
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_4

    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    .line 138
    .line 139
    .line 140
    move-result-wide v1

    .line 141
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 142
    .line 143
    .line 144
    :cond_4
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 145
    .line 146
    iput p1, p0, Lr2/u;->D0:F

    .line 147
    .line 148
    iput p1, p0, Lr2/u;->E0:F

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_5
    const-string p1, "frameRateCategoryView"

    .line 152
    .line 153
    invoke-static {p1}, Lg9/l;->j(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v4

    .line 157
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lr2/u;->getRectManager()Lz2/a;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lz2/a;->a()V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    iget-boolean v0, p0, Lr2/u;->H0:Z

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lr2/u;->G0:Landroidx/lifecycle/z;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ne v3, v1, :cond_0

    .line 18
    .line 19
    iput-boolean v2, p0, Lr2/u;->H0:Z

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroidx/lifecycle/z;->run()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-static {p1}, Lr2/u;->t(Landroid/view/MotionEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_42

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    goto/16 :goto_22

    .line 38
    .line 39
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v3, 0x0

    .line 44
    const/16 v4, 0x10

    .line 45
    .line 46
    const-string v5, "visitAncestors called on an unattached node"

    .line 47
    .line 48
    const/4 v6, 0x1

    .line 49
    if-ne v0, v1, :cond_35

    .line 50
    .line 51
    const/high16 v0, 0x400000

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_33

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/16 v1, 0x1a

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    .line 78
    if-lt v8, v1, :cond_3

    .line 79
    .line 80
    sget-object v7, Le4/l0;->a:Ljava/lang/reflect/Method;

    .line 81
    .line 82
    invoke-static {v0}, Le4/k;->d(Landroid/view/ViewConfiguration;)F

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-static {v0, v7}, Le4/l0;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    if-lt v8, v1, :cond_4

    .line 94
    .line 95
    invoke-static {v0}, Le4/k;->c(Landroid/view/ViewConfiguration;)F

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    invoke-static {v0, v7}, Le4/l0;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    .line 100
    .line 101
    .line 102
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-instance v1, Lk2/d;

    .line 113
    .line 114
    const/4 v7, 0x4

    .line 115
    invoke-direct {v1, v7, p0, p1}, Lk2/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    check-cast v0, Lw1/j;

    .line 119
    .line 120
    iget-object p1, v0, Lw1/j;->d:Lw1/g;

    .line 121
    .line 122
    iget-boolean p1, p1, Lw1/g;->e:Z

    .line 123
    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    const-string p1, "FocusRelatedWarning: Dispatching rotary event while the focus system is invalidated."

    .line 127
    .line 128
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return v2

    .line 134
    :cond_5
    iget-object p1, v0, Lw1/j;->c:Lw1/s;

    .line 135
    .line 136
    invoke-static {p1}, Lw1/f;->g(Lw1/s;)Lw1/s;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-eqz p1, :cond_12

    .line 141
    .line 142
    iget-object v0, p1, Lr1/o;->a:Lr1/o;

    .line 143
    .line 144
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 145
    .line 146
    if-nez v0, :cond_6

    .line 147
    .line 148
    invoke-static {v5}, Ln2/a;->b(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    iget-object v0, p1, Lr1/o;->a:Lr1/o;

    .line 152
    .line 153
    invoke-static {p1}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    :goto_3
    if-eqz p1, :cond_11

    .line 158
    .line 159
    iget-object v7, p1, Lq2/h0;->E:Lq2/d1;

    .line 160
    .line 161
    iget-object v7, v7, Lq2/d1;->f:Lr1/o;

    .line 162
    .line 163
    iget v7, v7, Lr1/o;->d:I

    .line 164
    .line 165
    and-int/lit16 v7, v7, 0x4000

    .line 166
    .line 167
    if-eqz v7, :cond_f

    .line 168
    .line 169
    :goto_4
    if-eqz v0, :cond_f

    .line 170
    .line 171
    iget v7, v0, Lr1/o;->c:I

    .line 172
    .line 173
    and-int/lit16 v7, v7, 0x4000

    .line 174
    .line 175
    if-eqz v7, :cond_e

    .line 176
    .line 177
    move-object v7, v0

    .line 178
    move-object v8, v3

    .line 179
    :goto_5
    if-eqz v7, :cond_e

    .line 180
    .line 181
    instance-of v9, v7, Lm2/a;

    .line 182
    .line 183
    if-eqz v9, :cond_7

    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_7
    iget v9, v7, Lr1/o;->c:I

    .line 187
    .line 188
    and-int/lit16 v9, v9, 0x4000

    .line 189
    .line 190
    if-eqz v9, :cond_d

    .line 191
    .line 192
    instance-of v9, v7, Lq2/m;

    .line 193
    .line 194
    if-eqz v9, :cond_d

    .line 195
    .line 196
    move-object v9, v7

    .line 197
    check-cast v9, Lq2/m;

    .line 198
    .line 199
    iget-object v9, v9, Lq2/m;->p:Lr1/o;

    .line 200
    .line 201
    const/4 v10, 0x0

    .line 202
    :goto_6
    if-eqz v9, :cond_c

    .line 203
    .line 204
    iget v11, v9, Lr1/o;->c:I

    .line 205
    .line 206
    and-int/lit16 v11, v11, 0x4000

    .line 207
    .line 208
    if-eqz v11, :cond_b

    .line 209
    .line 210
    add-int/lit8 v10, v10, 0x1

    .line 211
    .line 212
    if-ne v10, v6, :cond_8

    .line 213
    .line 214
    move-object v7, v9

    .line 215
    goto :goto_7

    .line 216
    :cond_8
    if-nez v8, :cond_9

    .line 217
    .line 218
    new-instance v8, Lh1/e;

    .line 219
    .line 220
    new-array v11, v4, [Lr1/o;

    .line 221
    .line 222
    invoke-direct {v8, v11}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    :cond_9
    if-eqz v7, :cond_a

    .line 226
    .line 227
    invoke-virtual {v8, v7}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    move-object v7, v3

    .line 231
    :cond_a
    invoke-virtual {v8, v9}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_b
    :goto_7
    iget-object v9, v9, Lr1/o;->f:Lr1/o;

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_c
    if-ne v10, v6, :cond_d

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_d
    invoke-static {v8}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    goto :goto_5

    .line 245
    :cond_e
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_f
    invoke-virtual {p1}, Lq2/h0;->v()Lq2/h0;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    if-eqz p1, :cond_10

    .line 253
    .line 254
    iget-object v0, p1, Lq2/h0;->E:Lq2/d1;

    .line 255
    .line 256
    if-eqz v0, :cond_10

    .line 257
    .line 258
    iget-object v0, v0, Lq2/d1;->e:Lq2/a2;

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_10
    move-object v0, v3

    .line 262
    goto :goto_3

    .line 263
    :cond_11
    move-object v7, v3

    .line 264
    :goto_8
    check-cast v7, Lm2/a;

    .line 265
    .line 266
    goto :goto_9

    .line 267
    :cond_12
    move-object v7, v3

    .line 268
    :goto_9
    if-eqz v7, :cond_34

    .line 269
    .line 270
    move-object p1, v7

    .line 271
    check-cast p1, Lr1/o;

    .line 272
    .line 273
    iget-object v0, p1, Lr1/o;->a:Lr1/o;

    .line 274
    .line 275
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 276
    .line 277
    if-nez v0, :cond_13

    .line 278
    .line 279
    invoke-static {v5}, Ln2/a;->b(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    :cond_13
    iget-object v0, p1, Lr1/o;->a:Lr1/o;

    .line 283
    .line 284
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 285
    .line 286
    invoke-static {v7}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    move-object v7, v3

    .line 291
    :goto_a
    if-eqz v5, :cond_1f

    .line 292
    .line 293
    iget-object v8, v5, Lq2/h0;->E:Lq2/d1;

    .line 294
    .line 295
    iget-object v8, v8, Lq2/d1;->f:Lr1/o;

    .line 296
    .line 297
    iget v8, v8, Lr1/o;->d:I

    .line 298
    .line 299
    and-int/lit16 v8, v8, 0x4000

    .line 300
    .line 301
    if-eqz v8, :cond_1d

    .line 302
    .line 303
    :goto_b
    if-eqz v0, :cond_1d

    .line 304
    .line 305
    iget v8, v0, Lr1/o;->c:I

    .line 306
    .line 307
    and-int/lit16 v8, v8, 0x4000

    .line 308
    .line 309
    if-eqz v8, :cond_1c

    .line 310
    .line 311
    move-object v8, v0

    .line 312
    move-object v9, v3

    .line 313
    :goto_c
    if-eqz v8, :cond_1c

    .line 314
    .line 315
    instance-of v10, v8, Lm2/a;

    .line 316
    .line 317
    if-eqz v10, :cond_15

    .line 318
    .line 319
    if-nez v7, :cond_14

    .line 320
    .line 321
    new-instance v7, Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .line 325
    .line 326
    :cond_14
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    goto :goto_f

    .line 330
    :cond_15
    iget v10, v8, Lr1/o;->c:I

    .line 331
    .line 332
    and-int/lit16 v10, v10, 0x4000

    .line 333
    .line 334
    if-eqz v10, :cond_1b

    .line 335
    .line 336
    instance-of v10, v8, Lq2/m;

    .line 337
    .line 338
    if-eqz v10, :cond_1b

    .line 339
    .line 340
    move-object v10, v8

    .line 341
    check-cast v10, Lq2/m;

    .line 342
    .line 343
    iget-object v10, v10, Lq2/m;->p:Lr1/o;

    .line 344
    .line 345
    const/4 v11, 0x0

    .line 346
    :goto_d
    if-eqz v10, :cond_1a

    .line 347
    .line 348
    iget v12, v10, Lr1/o;->c:I

    .line 349
    .line 350
    and-int/lit16 v12, v12, 0x4000

    .line 351
    .line 352
    if-eqz v12, :cond_19

    .line 353
    .line 354
    add-int/lit8 v11, v11, 0x1

    .line 355
    .line 356
    if-ne v11, v6, :cond_16

    .line 357
    .line 358
    move-object v8, v10

    .line 359
    goto :goto_e

    .line 360
    :cond_16
    if-nez v9, :cond_17

    .line 361
    .line 362
    new-instance v9, Lh1/e;

    .line 363
    .line 364
    new-array v12, v4, [Lr1/o;

    .line 365
    .line 366
    invoke-direct {v9, v12}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    :cond_17
    if-eqz v8, :cond_18

    .line 370
    .line 371
    invoke-virtual {v9, v8}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    move-object v8, v3

    .line 375
    :cond_18
    invoke-virtual {v9, v10}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    :cond_19
    :goto_e
    iget-object v10, v10, Lr1/o;->f:Lr1/o;

    .line 379
    .line 380
    goto :goto_d

    .line 381
    :cond_1a
    if-ne v11, v6, :cond_1b

    .line 382
    .line 383
    goto :goto_c

    .line 384
    :cond_1b
    :goto_f
    invoke-static {v9}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 385
    .line 386
    .line 387
    move-result-object v8

    .line 388
    goto :goto_c

    .line 389
    :cond_1c
    iget-object v0, v0, Lr1/o;->e:Lr1/o;

    .line 390
    .line 391
    goto :goto_b

    .line 392
    :cond_1d
    invoke-virtual {v5}, Lq2/h0;->v()Lq2/h0;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    if-eqz v5, :cond_1e

    .line 397
    .line 398
    iget-object v0, v5, Lq2/h0;->E:Lq2/d1;

    .line 399
    .line 400
    if-eqz v0, :cond_1e

    .line 401
    .line 402
    iget-object v0, v0, Lq2/d1;->e:Lq2/a2;

    .line 403
    .line 404
    goto :goto_a

    .line 405
    :cond_1e
    move-object v0, v3

    .line 406
    goto :goto_a

    .line 407
    :cond_1f
    if-eqz v7, :cond_21

    .line 408
    .line 409
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    add-int/lit8 v0, v0, -0x1

    .line 414
    .line 415
    if-ltz v0, :cond_21

    .line 416
    .line 417
    :goto_10
    add-int/lit8 v5, v0, -0x1

    .line 418
    .line 419
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    check-cast v0, Lm2/a;

    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    if-gez v5, :cond_20

    .line 429
    .line 430
    goto :goto_11

    .line 431
    :cond_20
    move v0, v5

    .line 432
    goto :goto_10

    .line 433
    :cond_21
    :goto_11
    iget-object v0, p1, Lr1/o;->a:Lr1/o;

    .line 434
    .line 435
    move-object v5, v3

    .line 436
    :goto_12
    if-eqz v0, :cond_29

    .line 437
    .line 438
    instance-of v8, v0, Lm2/a;

    .line 439
    .line 440
    if-eqz v8, :cond_22

    .line 441
    .line 442
    check-cast v0, Lm2/a;

    .line 443
    .line 444
    goto :goto_15

    .line 445
    :cond_22
    iget v8, v0, Lr1/o;->c:I

    .line 446
    .line 447
    and-int/lit16 v8, v8, 0x4000

    .line 448
    .line 449
    if-eqz v8, :cond_28

    .line 450
    .line 451
    instance-of v8, v0, Lq2/m;

    .line 452
    .line 453
    if-eqz v8, :cond_28

    .line 454
    .line 455
    move-object v8, v0

    .line 456
    check-cast v8, Lq2/m;

    .line 457
    .line 458
    iget-object v8, v8, Lq2/m;->p:Lr1/o;

    .line 459
    .line 460
    const/4 v9, 0x0

    .line 461
    :goto_13
    if-eqz v8, :cond_27

    .line 462
    .line 463
    iget v10, v8, Lr1/o;->c:I

    .line 464
    .line 465
    and-int/lit16 v10, v10, 0x4000

    .line 466
    .line 467
    if-eqz v10, :cond_26

    .line 468
    .line 469
    add-int/lit8 v9, v9, 0x1

    .line 470
    .line 471
    if-ne v9, v6, :cond_23

    .line 472
    .line 473
    move-object v0, v8

    .line 474
    goto :goto_14

    .line 475
    :cond_23
    if-nez v5, :cond_24

    .line 476
    .line 477
    new-instance v5, Lh1/e;

    .line 478
    .line 479
    new-array v10, v4, [Lr1/o;

    .line 480
    .line 481
    invoke-direct {v5, v10}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    :cond_24
    if-eqz v0, :cond_25

    .line 485
    .line 486
    invoke-virtual {v5, v0}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    move-object v0, v3

    .line 490
    :cond_25
    invoke-virtual {v5, v8}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    :cond_26
    :goto_14
    iget-object v8, v8, Lr1/o;->f:Lr1/o;

    .line 494
    .line 495
    goto :goto_13

    .line 496
    :cond_27
    if-ne v9, v6, :cond_28

    .line 497
    .line 498
    goto :goto_12

    .line 499
    :cond_28
    :goto_15
    invoke-static {v5}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    goto :goto_12

    .line 504
    :cond_29
    invoke-virtual {v1}, Lk2/d;->invoke()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    check-cast v0, Ljava/lang/Boolean;

    .line 509
    .line 510
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    if-eqz v0, :cond_2a

    .line 515
    .line 516
    goto/16 :goto_1b

    .line 517
    .line 518
    :cond_2a
    iget-object p1, p1, Lr1/o;->a:Lr1/o;

    .line 519
    .line 520
    move-object v0, v3

    .line 521
    :goto_16
    if-eqz p1, :cond_32

    .line 522
    .line 523
    instance-of v1, p1, Lm2/a;

    .line 524
    .line 525
    if-eqz v1, :cond_2b

    .line 526
    .line 527
    check-cast p1, Lm2/a;

    .line 528
    .line 529
    goto :goto_19

    .line 530
    :cond_2b
    iget v1, p1, Lr1/o;->c:I

    .line 531
    .line 532
    and-int/lit16 v1, v1, 0x4000

    .line 533
    .line 534
    if-eqz v1, :cond_31

    .line 535
    .line 536
    instance-of v1, p1, Lq2/m;

    .line 537
    .line 538
    if-eqz v1, :cond_31

    .line 539
    .line 540
    move-object v1, p1

    .line 541
    check-cast v1, Lq2/m;

    .line 542
    .line 543
    iget-object v1, v1, Lq2/m;->p:Lr1/o;

    .line 544
    .line 545
    const/4 v5, 0x0

    .line 546
    :goto_17
    if-eqz v1, :cond_30

    .line 547
    .line 548
    iget v8, v1, Lr1/o;->c:I

    .line 549
    .line 550
    and-int/lit16 v8, v8, 0x4000

    .line 551
    .line 552
    if-eqz v8, :cond_2f

    .line 553
    .line 554
    add-int/lit8 v5, v5, 0x1

    .line 555
    .line 556
    if-ne v5, v6, :cond_2c

    .line 557
    .line 558
    move-object p1, v1

    .line 559
    goto :goto_18

    .line 560
    :cond_2c
    if-nez v0, :cond_2d

    .line 561
    .line 562
    new-instance v0, Lh1/e;

    .line 563
    .line 564
    new-array v8, v4, [Lr1/o;

    .line 565
    .line 566
    invoke-direct {v0, v8}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    :cond_2d
    if-eqz p1, :cond_2e

    .line 570
    .line 571
    invoke-virtual {v0, p1}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    move-object p1, v3

    .line 575
    :cond_2e
    invoke-virtual {v0, v1}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 576
    .line 577
    .line 578
    :cond_2f
    :goto_18
    iget-object v1, v1, Lr1/o;->f:Lr1/o;

    .line 579
    .line 580
    goto :goto_17

    .line 581
    :cond_30
    if-ne v5, v6, :cond_31

    .line 582
    .line 583
    goto :goto_16

    .line 584
    :cond_31
    :goto_19
    invoke-static {v0}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    goto :goto_16

    .line 589
    :cond_32
    if-eqz v7, :cond_34

    .line 590
    .line 591
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 592
    .line 593
    .line 594
    move-result p1

    .line 595
    const/4 v0, 0x0

    .line 596
    :goto_1a
    if-ge v0, p1, :cond_34

    .line 597
    .line 598
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    check-cast v1, Lm2/a;

    .line 603
    .line 604
    iget-object v1, v1, Lm2/a;->o:Lr2/n;

    .line 605
    .line 606
    add-int/lit8 v0, v0, 0x1

    .line 607
    .line 608
    goto :goto_1a

    .line 609
    :cond_33
    invoke-virtual {p0, p1}, Lr2/u;->q(Landroid/view/MotionEvent;)I

    .line 610
    .line 611
    .line 612
    move-result p1

    .line 613
    and-int/2addr p1, v6

    .line 614
    if-eqz p1, :cond_34

    .line 615
    .line 616
    :goto_1b
    return v6

    .line 617
    :cond_34
    return v2

    .line 618
    :cond_35
    const/4 v0, 0x2

    .line 619
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-nez v0, :cond_41

    .line 624
    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 630
    .line 631
    .line 632
    move-result v1

    .line 633
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 634
    .line 635
    .line 636
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 637
    .line 638
    .line 639
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 640
    .line 641
    .line 642
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 643
    .line 644
    .line 645
    invoke-virtual {p0}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    check-cast v0, Lw1/j;

    .line 650
    .line 651
    iget-object v1, v0, Lw1/j;->d:Lw1/g;

    .line 652
    .line 653
    iget-boolean v1, v1, Lw1/g;->e:Z

    .line 654
    .line 655
    if-eqz v1, :cond_36

    .line 656
    .line 657
    const-string v0, "FocusRelatedWarning: Dispatching indirect touch event while the focus system is invalidated."

    .line 658
    .line 659
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 660
    .line 661
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 662
    .line 663
    .line 664
    goto/16 :goto_21

    .line 665
    .line 666
    :cond_36
    iget-object v0, v0, Lw1/j;->c:Lw1/s;

    .line 667
    .line 668
    invoke-static {v0}, Lw1/f;->g(Lw1/s;)Lw1/s;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    if-eqz v0, :cond_41

    .line 673
    .line 674
    iget-object v1, v0, Lr1/o;->a:Lr1/o;

    .line 675
    .line 676
    iget-boolean v1, v1, Lr1/o;->n:Z

    .line 677
    .line 678
    if-nez v1, :cond_37

    .line 679
    .line 680
    invoke-static {v5}, Ln2/a;->b(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    :cond_37
    iget-object v1, v0, Lr1/o;->a:Lr1/o;

    .line 684
    .line 685
    invoke-static {v0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    :goto_1c
    if-eqz v0, :cond_41

    .line 690
    .line 691
    iget-object v5, v0, Lq2/h0;->E:Lq2/d1;

    .line 692
    .line 693
    iget-object v5, v5, Lq2/d1;->f:Lr1/o;

    .line 694
    .line 695
    iget v5, v5, Lr1/o;->d:I

    .line 696
    .line 697
    const/high16 v7, 0x200000

    .line 698
    .line 699
    and-int/2addr v5, v7

    .line 700
    if-eqz v5, :cond_3f

    .line 701
    .line 702
    :goto_1d
    if-eqz v1, :cond_3f

    .line 703
    .line 704
    iget v5, v1, Lr1/o;->c:I

    .line 705
    .line 706
    and-int/2addr v5, v7

    .line 707
    if-eqz v5, :cond_3e

    .line 708
    .line 709
    move-object v5, v1

    .line 710
    move-object v8, v3

    .line 711
    :goto_1e
    if-eqz v5, :cond_3e

    .line 712
    .line 713
    iget v9, v5, Lr1/o;->c:I

    .line 714
    .line 715
    and-int/2addr v9, v7

    .line 716
    if-eqz v9, :cond_3d

    .line 717
    .line 718
    instance-of v9, v5, Lq2/m;

    .line 719
    .line 720
    if-eqz v9, :cond_3d

    .line 721
    .line 722
    move-object v9, v5

    .line 723
    check-cast v9, Lq2/m;

    .line 724
    .line 725
    iget-object v9, v9, Lq2/m;->p:Lr1/o;

    .line 726
    .line 727
    const/4 v10, 0x0

    .line 728
    :goto_1f
    if-eqz v9, :cond_3c

    .line 729
    .line 730
    iget v11, v9, Lr1/o;->c:I

    .line 731
    .line 732
    and-int/2addr v11, v7

    .line 733
    if-eqz v11, :cond_3b

    .line 734
    .line 735
    add-int/lit8 v10, v10, 0x1

    .line 736
    .line 737
    if-ne v10, v6, :cond_38

    .line 738
    .line 739
    move-object v5, v9

    .line 740
    goto :goto_20

    .line 741
    :cond_38
    if-nez v8, :cond_39

    .line 742
    .line 743
    new-instance v8, Lh1/e;

    .line 744
    .line 745
    new-array v11, v4, [Lr1/o;

    .line 746
    .line 747
    invoke-direct {v8, v11}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 748
    .line 749
    .line 750
    :cond_39
    if-eqz v5, :cond_3a

    .line 751
    .line 752
    invoke-virtual {v8, v5}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 753
    .line 754
    .line 755
    move-object v5, v3

    .line 756
    :cond_3a
    invoke-virtual {v8, v9}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 757
    .line 758
    .line 759
    :cond_3b
    :goto_20
    iget-object v9, v9, Lr1/o;->f:Lr1/o;

    .line 760
    .line 761
    goto :goto_1f

    .line 762
    :cond_3c
    if-ne v10, v6, :cond_3d

    .line 763
    .line 764
    goto :goto_1e

    .line 765
    :cond_3d
    invoke-static {v8}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 766
    .line 767
    .line 768
    move-result-object v5

    .line 769
    goto :goto_1e

    .line 770
    :cond_3e
    iget-object v1, v1, Lr1/o;->e:Lr1/o;

    .line 771
    .line 772
    goto :goto_1d

    .line 773
    :cond_3f
    invoke-virtual {v0}, Lq2/h0;->v()Lq2/h0;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    if-eqz v0, :cond_40

    .line 778
    .line 779
    iget-object v1, v0, Lq2/h0;->E:Lq2/d1;

    .line 780
    .line 781
    if-eqz v1, :cond_40

    .line 782
    .line 783
    iget-object v1, v1, Lq2/d1;->e:Lq2/a2;

    .line 784
    .line 785
    goto :goto_1c

    .line 786
    :cond_40
    move-object v1, v3

    .line 787
    goto :goto_1c

    .line 788
    :cond_41
    :goto_21
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 789
    .line 790
    .line 791
    move-result p1

    .line 792
    return p1

    .line 793
    :cond_42
    :goto_22
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 794
    .line 795
    .line 796
    move-result p1

    .line 797
    return p1
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Lr2/u;->H0:Z

    .line 6
    .line 7
    iget-object v3, v0, Lr2/u;->G0:Landroidx/lifecycle/z;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Landroidx/lifecycle/z;->run()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {v1}, Lr2/u;->t(Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez v2, :cond_12

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_1
    iget-object v2, v0, Lr2/u;->s:Lr2/b0;

    .line 33
    .line 34
    iget-object v5, v2, Lr2/b0;->d:Lr2/u;

    .line 35
    .line 36
    iget-object v6, v2, Lr2/b0;->g:Landroid/view/accessibility/AccessibilityManager;

    .line 37
    .line 38
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    const/16 v8, 0xa

    .line 43
    .line 44
    const/4 v9, 0x7

    .line 45
    const/4 v10, 0x1

    .line 46
    if-eqz v7, :cond_c

    .line 47
    .line 48
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_c

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    const/16 v7, 0x100

    .line 59
    .line 60
    const/16 v11, 0x80

    .line 61
    .line 62
    const/4 v12, 0x0

    .line 63
    const/16 v13, 0xc

    .line 64
    .line 65
    const/high16 v14, -0x80000000

    .line 66
    .line 67
    if-eq v6, v9, :cond_5

    .line 68
    .line 69
    const/16 v15, 0x9

    .line 70
    .line 71
    if-eq v6, v15, :cond_5

    .line 72
    .line 73
    if-eq v6, v8, :cond_2

    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_2
    iget v6, v2, Lr2/b0;->e:I

    .line 78
    .line 79
    if-eq v6, v14, :cond_4

    .line 80
    .line 81
    if-ne v6, v14, :cond_3

    .line 82
    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :cond_3
    iput v14, v2, Lr2/b0;->e:I

    .line 86
    .line 87
    invoke-static {v2, v14, v11, v12, v13}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 88
    .line 89
    .line 90
    invoke-static {v2, v6, v7, v12, v13}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_4
    invoke-virtual {v5}, Lr2/u;->getAndroidViewsHandler$ui_release()Lr2/w0;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 100
    .line 101
    .line 102
    goto/16 :goto_3

    .line 103
    .line 104
    :cond_5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    invoke-virtual {v5, v10}, Lr2/u;->y(Z)V

    .line 113
    .line 114
    .line 115
    new-instance v20, Lq2/r;

    .line 116
    .line 117
    invoke-direct/range {v20 .. v20}, Lq2/r;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Lr2/u;->getRoot()Lq2/h0;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    int-to-long v8, v6

    .line 129
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    move-wide/from16 v16, v8

    .line 134
    .line 135
    int-to-long v7, v6

    .line 136
    const/16 v6, 0x20

    .line 137
    .line 138
    shl-long v16, v16, v6

    .line 139
    .line 140
    const-wide v18, 0xffffffffL

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    and-long v7, v7, v18

    .line 146
    .line 147
    or-long v7, v16, v7

    .line 148
    .line 149
    iget-object v6, v14, Lq2/h0;->E:Lq2/d1;

    .line 150
    .line 151
    iget-object v9, v6, Lq2/d1;->d:Lq2/h1;

    .line 152
    .line 153
    sget-object v14, Lq2/h1;->J:Ly1/i0;

    .line 154
    .line 155
    invoke-virtual {v9, v7, v8}, Lq2/h1;->D0(J)J

    .line 156
    .line 157
    .line 158
    move-result-wide v18

    .line 159
    iget-object v6, v6, Lq2/d1;->d:Lq2/h1;

    .line 160
    .line 161
    sget-object v17, Lq2/h1;->N:Lq2/d;

    .line 162
    .line 163
    const/16 v21, 0x1

    .line 164
    .line 165
    const/16 v22, 0x1

    .line 166
    .line 167
    move-object/from16 v16, v6

    .line 168
    .line 169
    invoke-virtual/range {v16 .. v22}, Lq2/h1;->L0(Lq2/d;JLq2/r;IZ)V

    .line 170
    .line 171
    .line 172
    move-object/from16 v6, v20

    .line 173
    .line 174
    invoke-static {v6}, Lp9/x1;->u(Ljava/util/List;)I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    :goto_0
    const/4 v8, -0x1

    .line 179
    if-ge v8, v7, :cond_6

    .line 180
    .line 181
    iget-object v8, v6, Lq2/r;->a:Ls/d0;

    .line 182
    .line 183
    invoke-virtual {v8, v7}, Ls/d0;->e(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    const-string v9, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node"

    .line 188
    .line 189
    invoke-static {v8, v9}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    check-cast v8, Lr1/o;

    .line 193
    .line 194
    invoke-static {v8}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v5}, Lr2/u;->getAndroidViewsHandler$ui_release()Lr2/w0;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-virtual {v9}, Lr2/w0;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    check-cast v9, Lq3/i;

    .line 211
    .line 212
    if-eqz v9, :cond_7

    .line 213
    .line 214
    :cond_6
    const/high16 v14, -0x80000000

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_7
    iget-object v9, v8, Lq2/h0;->E:Lq2/d1;

    .line 218
    .line 219
    const/16 v14, 0x8

    .line 220
    .line 221
    invoke-virtual {v9, v14}, Lq2/d1;->d(I)Z

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    if-nez v9, :cond_8

    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_8
    iget v9, v8, Lq2/h0;->b:I

    .line 229
    .line 230
    invoke-virtual {v2, v9}, Lr2/b0;->v(I)I

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    invoke-static {v8, v4}, Ly2/p;->a(Lq2/h0;Z)Ly2/m;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    invoke-static {v8}, Ly2/p;->f(Ly2/m;)Z

    .line 239
    .line 240
    .line 241
    move-result v14

    .line 242
    if-nez v14, :cond_9

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_9
    invoke-virtual {v8}, Ly2/m;->k()Ly2/j;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    sget-object v14, Ly2/r;->z:Ly2/u;

    .line 250
    .line 251
    iget-object v8, v8, Ly2/j;->a:Ls/h0;

    .line 252
    .line 253
    invoke-virtual {v8, v14}, Ls/h0;->c(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    if-eqz v8, :cond_a

    .line 258
    .line 259
    :goto_1
    add-int/lit8 v7, v7, -0x1

    .line 260
    .line 261
    goto :goto_0

    .line 262
    :cond_a
    move v14, v9

    .line 263
    :goto_2
    invoke-virtual {v5}, Lr2/u;->getAndroidViewsHandler$ui_release()Lr2/w0;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 268
    .line 269
    .line 270
    iget v5, v2, Lr2/b0;->e:I

    .line 271
    .line 272
    if-ne v5, v14, :cond_b

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_b
    iput v14, v2, Lr2/b0;->e:I

    .line 276
    .line 277
    invoke-static {v2, v14, v11, v12, v13}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 278
    .line 279
    .line 280
    const/16 v15, 0x100

    .line 281
    .line 282
    invoke-static {v2, v5, v15, v12, v13}, Lr2/b0;->z(Lr2/b0;IILjava/lang/Integer;I)V

    .line 283
    .line 284
    .line 285
    :cond_c
    :goto_3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    const/4 v5, 0x7

    .line 290
    if-eq v2, v5, :cond_10

    .line 291
    .line 292
    const/16 v5, 0xa

    .line 293
    .line 294
    if-eq v2, v5, :cond_d

    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lr2/u;->u(Landroid/view/MotionEvent;)Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-eqz v2, :cond_11

    .line 302
    .line 303
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    const/4 v5, 0x3

    .line 308
    if-ne v2, v5, :cond_e

    .line 309
    .line 310
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-eqz v2, :cond_e

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_e
    iget-object v2, v0, Lr2/u;->z0:Landroid/view/MotionEvent;

    .line 318
    .line 319
    if-eqz v2, :cond_f

    .line 320
    .line 321
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 322
    .line 323
    .line 324
    :cond_f
    invoke-static {v1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    iput-object v1, v0, Lr2/u;->z0:Landroid/view/MotionEvent;

    .line 329
    .line 330
    iput-boolean v10, v0, Lr2/u;->H0:Z

    .line 331
    .line 332
    const-wide/16 v1, 0x8

    .line 333
    .line 334
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 335
    .line 336
    .line 337
    return v4

    .line 338
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lr2/u;->v(Landroid/view/MotionEvent;)Z

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    if-nez v2, :cond_11

    .line 343
    .line 344
    goto :goto_5

    .line 345
    :cond_11
    :goto_4
    invoke-virtual/range {p0 .. p1}, Lr2/u;->q(Landroid/view/MotionEvent;)I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    and-int/2addr v1, v10

    .line 350
    if-eqz v1, :cond_12

    .line 351
    .line 352
    return v10

    .line 353
    :cond_12
    :goto_5
    return v4
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lr2/u;->j:Lr2/v1;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v1, Lr2/u2;->a:Lf1/k1;

    .line 17
    .line 18
    new-instance v2, Lk2/f0;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lk2/f0;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lw1/h;->a:Lw1/h;

    .line 31
    .line 32
    check-cast v0, Lw1/j;

    .line 33
    .line 34
    invoke-virtual {v0, p1, v1}, Lw1/j;->d(Landroid/view/KeyEvent;Lf9/a;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    return p1

    .line 49
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 50
    return p1

    .line 51
    :cond_2
    invoke-virtual {p0}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Lk2/d;

    .line 56
    .line 57
    const/4 v2, 0x3

    .line 58
    invoke-direct {v1, v2, p0, p1}, Lk2/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    check-cast v0, Lw1/j;

    .line 62
    .line 63
    invoke-virtual {v0, p1, v1}, Lw1/j;->d(Landroid/view/KeyEvent;Lf9/a;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1
.end method

.method public final dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_b

    .line 8
    .line 9
    invoke-virtual {p0}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lw1/j;

    .line 14
    .line 15
    iget-object v3, v0, Lw1/j;->d:Lw1/g;

    .line 16
    .line 17
    iget-boolean v3, v3, Lw1/g;->e:Z

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const-string v0, "FocusRelatedWarning: Dispatching intercepted soft keyboard event while the focus system is invalidated."

    .line 22
    .line 23
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_0
    iget-object v0, v0, Lw1/j;->c:Lw1/s;

    .line 31
    .line 32
    invoke-static {v0}, Lw1/f;->g(Lw1/s;)Lw1/s;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_b

    .line 37
    .line 38
    iget-object v3, v0, Lr1/o;->a:Lr1/o;

    .line 39
    .line 40
    iget-boolean v3, v3, Lr1/o;->n:Z

    .line 41
    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    const-string v3, "visitAncestors called on an unattached node"

    .line 45
    .line 46
    invoke-static {v3}, Ln2/a;->b(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v3, v0, Lr1/o;->a:Lr1/o;

    .line 50
    .line 51
    invoke-static {v0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_0
    if-eqz v0, :cond_b

    .line 56
    .line 57
    iget-object v4, v0, Lq2/h0;->E:Lq2/d1;

    .line 58
    .line 59
    iget-object v4, v4, Lq2/d1;->f:Lr1/o;

    .line 60
    .line 61
    iget v4, v4, Lr1/o;->d:I

    .line 62
    .line 63
    const/high16 v5, 0x20000

    .line 64
    .line 65
    and-int/2addr v4, v5

    .line 66
    const/4 v6, 0x0

    .line 67
    if-eqz v4, :cond_9

    .line 68
    .line 69
    :goto_1
    if-eqz v3, :cond_9

    .line 70
    .line 71
    iget v4, v3, Lr1/o;->c:I

    .line 72
    .line 73
    and-int/2addr v4, v5

    .line 74
    if-eqz v4, :cond_8

    .line 75
    .line 76
    move-object v4, v3

    .line 77
    move-object v7, v6

    .line 78
    :goto_2
    if-eqz v4, :cond_8

    .line 79
    .line 80
    iget v8, v4, Lr1/o;->c:I

    .line 81
    .line 82
    and-int/2addr v8, v5

    .line 83
    if-eqz v8, :cond_7

    .line 84
    .line 85
    instance-of v8, v4, Lq2/m;

    .line 86
    .line 87
    if-eqz v8, :cond_7

    .line 88
    .line 89
    move-object v8, v4

    .line 90
    check-cast v8, Lq2/m;

    .line 91
    .line 92
    iget-object v8, v8, Lq2/m;->p:Lr1/o;

    .line 93
    .line 94
    const/4 v9, 0x0

    .line 95
    :goto_3
    if-eqz v8, :cond_6

    .line 96
    .line 97
    iget v10, v8, Lr1/o;->c:I

    .line 98
    .line 99
    and-int/2addr v10, v5

    .line 100
    if-eqz v10, :cond_5

    .line 101
    .line 102
    add-int/lit8 v9, v9, 0x1

    .line 103
    .line 104
    if-ne v9, v2, :cond_2

    .line 105
    .line 106
    move-object v4, v8

    .line 107
    goto :goto_4

    .line 108
    :cond_2
    if-nez v7, :cond_3

    .line 109
    .line 110
    new-instance v7, Lh1/e;

    .line 111
    .line 112
    const/16 v10, 0x10

    .line 113
    .line 114
    new-array v10, v10, [Lr1/o;

    .line 115
    .line 116
    invoke-direct {v7, v10}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    if-eqz v4, :cond_4

    .line 120
    .line 121
    invoke-virtual {v7, v4}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    move-object v4, v6

    .line 125
    :cond_4
    invoke-virtual {v7, v8}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_4
    iget-object v8, v8, Lr1/o;->f:Lr1/o;

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_6
    if-ne v9, v2, :cond_7

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_7
    invoke-static {v7}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    goto :goto_2

    .line 139
    :cond_8
    iget-object v3, v3, Lr1/o;->e:Lr1/o;

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_9
    invoke-virtual {v0}, Lq2/h0;->v()Lq2/h0;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_a

    .line 147
    .line 148
    iget-object v3, v0, Lq2/h0;->E:Lq2/d1;

    .line 149
    .line 150
    if-eqz v3, :cond_a

    .line 151
    .line 152
    iget-object v3, v3, Lq2/d1;->e:Lq2/a2;

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_a
    move-object v3, v6

    .line 156
    goto :goto_0

    .line 157
    :cond_b
    :goto_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_c

    .line 162
    .line 163
    return v2

    .line 164
    :cond_c
    return v1
.end method

.method public final dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-gt v1, v0, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x1c

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lr2/c0;->a:Lr2/c0;

    .line 12
    .line 13
    invoke-virtual {p0}, Lr2/u;->getView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, p1, v1}, Lr2/c0;->a(Landroid/view/ViewStructure;Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lr2/u;->H0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lr2/u;->G0:Landroidx/lifecycle/z;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lr2/u;->z0:Landroid/view/MotionEvent;

    .line 12
    .line 13
    invoke-static {v2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eq v2, v3, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput-boolean v1, p0, Lr2/u;->H0:Z

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/lifecycle/z;->run()V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_1
    invoke-static {p1}, Lr2/u;->t(Landroid/view/MotionEvent;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_6

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v2, 0x2

    .line 67
    if-ne v0, v2, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lr2/u;->v(Landroid/view/MotionEvent;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    invoke-virtual {p0, p1}, Lr2/u;->q(Landroid/view/MotionEvent;)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    and-int/lit8 v0, p1, 0x2

    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 90
    .line 91
    .line 92
    :cond_5
    and-int/2addr p1, v2

    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    return v2

    .line 96
    :cond_6
    :goto_2
    return v1
.end method

.method public final synthetic e(Landroidx/lifecycle/t;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic f(Landroidx/lifecycle/t;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 6

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const-class v0, Landroid/view/View;

    .line 8
    .line 9
    const-string v1, "findViewByAccessibilityIdTraversal"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v3, v2, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object v4, v3, v5

    .line 18
    .line 19
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-array v1, v2, [Ljava/lang/Object;

    .line 31
    .line 32
    aput-object p1, v1, v5

    .line 33
    .line 34
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    instance-of v0, p1, Landroid/view/View;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    check-cast p1, Landroid/view/View;

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_0
    invoke-static {p0, p1}, Lr2/u;->o(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-object p1

    .line 50
    :catch_0
    :cond_1
    const/4 p1, 0x0

    .line 51
    return-object p1
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 7

    .line 1
    if-eqz p1, :cond_b

    .line 2
    .line 3
    iget-object v0, p0, Lr2/u;->P:Lq2/w0;

    .line 4
    .line 5
    iget-boolean v0, v0, Lq2/w0;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lr2/p1;->f:Lj9/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Lr2/p1;

    .line 21
    .line 22
    invoke-virtual {v0, p2, p1, p0}, Lr2/p1;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-ne p1, p0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lw1/j;

    .line 33
    .line 34
    iget-object v1, v1, Lw1/j;->c:Lw1/s;

    .line 35
    .line 36
    invoke-static {v1}, Lw1/f;->g(Lw1/s;)Lw1/s;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-static {v1}, Lw1/f;->j(Lw1/s;)Lx1/c;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v1, 0x0

    .line 48
    :goto_0
    if-nez v1, :cond_3

    .line 49
    .line 50
    invoke-static {p1, p0}, Lw1/f;->d(Landroid/view/View;Lr2/u;)Lx1/c;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-static {p1, p0}, Lw1/f;->d(Landroid/view/View;Lr2/u;)Lx1/c;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :cond_3
    :goto_1
    invoke-static {p2}, Lw1/f;->D(I)Lw1/d;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    iget v2, v2, Lw1/d;->a:I

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    const/4 v2, 0x6

    .line 69
    :goto_2
    new-instance v3, Lg9/x;

    .line 70
    .line 71
    invoke-direct {v3}, Lg9/x;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    new-instance v5, Lj2/h;

    .line 79
    .line 80
    const/4 v6, 0x2

    .line 81
    invoke-direct {v5, v3, v6}, Lj2/h;-><init>(Lg9/x;I)V

    .line 82
    .line 83
    .line 84
    check-cast v4, Lw1/j;

    .line 85
    .line 86
    invoke-virtual {v4, v2, v1, v5}, Lw1/j;->e(ILx1/c;Lf9/k;)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    if-nez v4, :cond_5

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    iget-object v3, v3, Lg9/x;->b:Ljava/lang/Object;

    .line 94
    .line 95
    if-nez v3, :cond_6

    .line 96
    .line 97
    if-nez v0, :cond_a

    .line 98
    .line 99
    :goto_3
    return-object p1

    .line 100
    :cond_6
    if-nez v0, :cond_7

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_7
    const/4 v4, 0x1

    .line 104
    if-ne v2, v4, :cond_8

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_8
    const/4 v4, 0x2

    .line 108
    if-ne v2, v4, :cond_9

    .line 109
    .line 110
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    :cond_9
    check-cast v3, Lw1/s;

    .line 116
    .line 117
    invoke-static {v3}, Lw1/f;->j(Lw1/s;)Lx1/c;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v0, p0}, Lw1/f;->d(Landroid/view/View;Lr2/u;)Lx1/c;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-static {p1, p2, v1, v2}, Lw1/f;->o(Lx1/c;Lx1/c;Lx1/c;I)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_a

    .line 130
    .line 131
    :goto_5
    return-object p0

    .line 132
    :cond_a
    return-object v0

    .line 133
    :cond_b
    :goto_6
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    return-object p1
.end method

.method public final synthetic g(Landroidx/lifecycle/t;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic getAccessibilityManager()Lr2/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr2/u;->getAccessibilityManager()Lr2/f;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityManager()Lr2/f;
    .locals 1

    .line 2
    iget-object v0, p0, Lr2/u;->u:Lr2/f;

    return-object v0
.end method

.method public final getAndroidViewsHandler$ui_release()Lr2/w0;
    .locals 2

    .line 1
    iget-object v0, p0, Lr2/u;->L:Lr2/w0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lr2/w0;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lr2/w0;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lr2/u;->L:Lr2/w0;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {p0, v0, v1}, Lr2/u;->addView(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lr2/u;->L:Lr2/w0;

    .line 24
    .line 25
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public getAutofill()Ls1/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->E:Lba/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAutofillManager()Ls1/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->F:Ls1/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAutofillTree()Ls1/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->w:Ls1/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getClipboard()Lr2/d1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr2/u;->getClipboard()Lr2/g;

    move-result-object v0

    return-object v0
.end method

.method public getClipboard()Lr2/g;
    .locals 1

    .line 2
    iget-object v0, p0, Lr2/u;->I:Lr2/g;

    return-object v0
.end method

.method public bridge synthetic getClipboardManager()Lr2/e1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr2/u;->getClipboardManager()Lr2/h;

    move-result-object v0

    return-object v0
.end method

.method public getClipboardManager()Lr2/h;
    .locals 1

    .line 2
    iget-object v0, p0, Lr2/u;->H:Lr2/h;

    return-object v0
.end method

.method public final getConfigurationChangeObserver()Lf9/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf9/k;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr2/u;->D:Lf9/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContentCaptureManager$ui_release()Lt1/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->t:Lt1/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCoroutineContext()Lw8/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->h:Lw8/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDensity()Ln3/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->d:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ln3/c;

    .line 8
    .line 9
    return-object v0
.end method

.method public getDragAndDropManager()Lu1/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lr2/u;->i:Lu1/a;

    return-object v0
.end method

.method public bridge synthetic getDragAndDropManager()Lu1/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr2/u;->getDragAndDropManager()Lu1/a;

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddedViewFocusRect()Lx1/c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lw1/j;

    .line 13
    .line 14
    iget-object v0, v0, Lw1/j;->c:Lw1/s;

    .line 15
    .line 16
    invoke-static {v0}, Lw1/f;->g(Lw1/s;)Lw1/s;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lw1/f;->j(Lw1/s;)Lx1/c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_0
    return-object v1

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-static {v0, p0}, Lw1/f;->d(Landroid/view/View;Lr2/u;)Lx1/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_2
    return-object v1
.end method

.method public getFocusOwner()Lw1/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->g:Lw1/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFocusedRect(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lr2/u;->getEmbeddedViewFocusRect()Lx1/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v1, v0, Lx1/c;->a:F

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 14
    .line 15
    iget v1, v0, Lx1/c;->b:F

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    iget v1, v0, Lx1/c;->c:F

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 30
    .line 31
    iget v0, v0, Lx1/c;->d:F

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v1, Lr2/n;->c:Lr2/n;

    .line 45
    .line 46
    check-cast v0, Lw1/j;

    .line 47
    .line 48
    const/4 v2, 0x6

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-virtual {v0, v2, v3, v1}, Lw1/j;->e(ILx1/c;Lf9/k;)Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    const/high16 v0, -0x80000000

    .line 63
    .line 64
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public getFontFamilyResolver()Lf3/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->s0:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf3/d;

    .line 8
    .line 9
    return-object v0
.end method

.method public getFontLoader()Lf3/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->r0:Lr2/t1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGraphicsContext()Ly1/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->v:Ly1/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHapticFeedBack()Lg2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->v0:Lg2/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHasPendingMeasureOrLayout()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->P:Lq2/w0;

    .line 2
    .line 3
    iget-object v0, v0, Lq2/w0;->b:La2/b;

    .line 4
    .line 5
    invoke-virtual {v0}, La2/b;->M()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getImportantForAutofill()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public getInputModeManager()Lh2/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->w0:Lh2/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInsetsListener()Lo2/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->m:Lo2/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastMatrixRecalculationAnimationTime$ui_release()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lr2/u;->V:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLayoutDirection()Ln3/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->u0:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ln3/m;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getLayoutNodes()Ls/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr2/u;->getLayoutNodes()Ls/w;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutNodes()Ls/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls/w;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lr2/u;->o:Ls/w;

    return-object v0
.end method

.method public getMeasureIteration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lr2/u;->P:Lq2/w0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lq2/w0;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "measureIteration should be only used during the measure/layout pass"

    .line 8
    .line 9
    invoke-static {v1}, Ln2/a;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-wide v0, v0, Lq2/w0;->g:J

    .line 13
    .line 14
    return-wide v0
.end method

.method public getModifierLocalManager()Lp2/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->x0:Lp2/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getOutOfFrameExecutor()Lq2/o1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr2/u;->getOutOfFrameExecutor()Lr2/u;

    move-result-object v0

    return-object v0
.end method

.method public getOutOfFrameExecutor()Lr2/u;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlacementScope()Lo2/u0;
    .locals 2

    .line 1
    sget v0, Lo2/x0;->b:I

    .line 2
    .line 3
    new-instance v0, Lo2/j0;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, v1, p0}, Lo2/j0;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public getPointerIconService()Lk2/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->N0:Lr2/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRectManager()Lz2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->p:Lz2/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRoot()Lq2/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->n:Lq2/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRootForTest()Lq2/x1;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->q:Lr2/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScrollCaptureInProgress$ui_release()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lr2/u;->L0:Lv/a1;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lv/a1;->a:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lf1/k1;

    .line 14
    .line 15
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public getSemanticsOwner()Ly2/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->r:Ly2/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSharedDrawScope()Lq2/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->c:Lq2/j0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowLayoutBounds()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lr2/x0;->a:Lr2/x0;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lr2/x0;->a(Landroid/view/View;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-boolean v0, p0, Lr2/u;->K:Z

    .line 15
    .line 16
    return v0
.end method

.method public getSnapshotObserver()Lq2/s1;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->J:Lq2/s1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSoftwareKeyboardController()Lr2/m2;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->q0:Lr2/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTextInputService()Lg3/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->o0:Lg3/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTextToolbar()Lr2/n2;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->y0:Lr2/q0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUncaughtExceptionHandler$ui_release()Lq2/w1;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getViewConfiguration()Lr2/q2;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->l:Lr2/v0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewTreeOwners()Lr2/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->i0:Lf1/f0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/f0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lr2/l;

    .line 8
    .line 9
    return-object v0
.end method

.method public getWindowInfo()Lr2/t2;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->j:Lr2/v1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_autofillManager$ui_release()Ls1/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->F:Ls1/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1e

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lr2/j0;->n()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0, v1}, Lr2/u;->setShowLayoutBounds(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lr2/u;->m:Lo2/q;

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Lo2/q;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x1c

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v3, 0x0

    .line 26
    if-le v0, v1, :cond_6

    .line 27
    .line 28
    sget-object v0, Lr2/u;->S0:Ll8/j;

    .line 29
    .line 30
    if-nez v0, :cond_5

    .line 31
    .line 32
    new-instance v0, Ll8/j;

    .line 33
    .line 34
    invoke-direct {v0, v2}, Ll8/j;-><init>(I)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lr2/u;->S0:Ll8/j;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :try_start_0
    sget-object v4, Lr2/u;->O0:Ljava/lang/Class;

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    const-string v4, "android.os.SystemProperties"

    .line 48
    .line 49
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    sput-object v4, Lr2/u;->O0:Ljava/lang/Class;

    .line 54
    .line 55
    :cond_1
    sget-object v4, Lr2/u;->Q0:Ljava/lang/reflect/Method;

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    if-nez v4, :cond_3

    .line 59
    .line 60
    sget-object v4, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    .line 61
    .line 62
    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 63
    .line 64
    .line 65
    sget-object v4, Lr2/u;->O0:Ljava/lang/Class;

    .line 66
    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    const-string v6, "addChangeCallback"

    .line 70
    .line 71
    new-array v7, v2, [Ljava/lang/Class;

    .line 72
    .line 73
    const-class v8, Ljava/lang/Runnable;

    .line 74
    .line 75
    aput-object v8, v7, v5

    .line 76
    .line 77
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move-object v4, v3

    .line 83
    :goto_0
    sput-object v4, Lr2/u;->Q0:Ljava/lang/reflect/Method;

    .line 84
    .line 85
    :cond_3
    sget-object v4, Lr2/u;->Q0:Ljava/lang/reflect/Method;

    .line 86
    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    new-array v6, v2, [Ljava/lang/Object;

    .line 90
    .line 91
    aput-object v0, v6, v5

    .line 92
    .line 93
    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :catchall_0
    :cond_4
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 97
    .line 98
    .line 99
    :cond_5
    sget-object v0, Lr2/u;->R0:Ls/d0;

    .line 100
    .line 101
    monitor-enter v0

    .line 102
    :try_start_1
    invoke-virtual {v0, p0}, Ls/d0;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .line 104
    .line 105
    monitor-exit v0

    .line 106
    goto :goto_1

    .line 107
    :catchall_1
    move-exception v1

    .line 108
    monitor-exit v0

    .line 109
    throw v1

    .line 110
    :cond_6
    :goto_1
    iget-object v0, p0, Lr2/u;->j:Lr2/v1;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    iget-object v0, v0, Lr2/v1;->a:Lf1/k1;

    .line 117
    .line 118
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lr2/u;->j:Lr2/v1;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lr2/u;->j:Lr2/v1;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lr2/u;->getRoot()Lq2/h0;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p0, v0}, Lr2/u;->s(Lq2/h0;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lr2/u;->getRoot()Lq2/h0;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0}, Lr2/u;->r(Lq2/h0;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lr2/u;->getSnapshotObserver()Lq2/s1;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-object v0, v0, Lq2/s1;->a:Lp1/u;

    .line 154
    .line 155
    invoke-virtual {v0}, Lp1/u;->d()V

    .line 156
    .line 157
    .line 158
    invoke-static {}, Lr2/u;->l()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_7

    .line 163
    .line 164
    iget-object v0, p0, Lr2/u;->E:Lba/a;

    .line 165
    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    sget-object v1, Ls1/i;->a:Ls1/i;

    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iget-object v0, v0, Lba/a;->d:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 176
    .line 177
    invoke-static {v1}, Lq0/o;->f(Ljava/lang/Object;)Landroid/view/autofill/AutofillManager$AutofillCallback;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-static {v0, v1}, Lq0/o;->A(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager$AutofillCallback;)V

    .line 182
    .line 183
    .line 184
    :cond_7
    invoke-static {p0}, Landroidx/lifecycle/i0;->e(Landroid/view/View;)Landroidx/lifecycle/t;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {p0}, La/a;->r(Landroid/view/View;)La5/g;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {p0}, Lr2/u;->getViewTreeOwners()Lr2/l;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    if-eqz v4, :cond_8

    .line 197
    .line 198
    if-eqz v0, :cond_b

    .line 199
    .line 200
    if-eqz v1, :cond_b

    .line 201
    .line 202
    iget-object v5, v4, Lr2/l;->a:Landroidx/lifecycle/t;

    .line 203
    .line 204
    if-ne v0, v5, :cond_8

    .line 205
    .line 206
    if-eq v1, v5, :cond_b

    .line 207
    .line 208
    :cond_8
    if-eqz v0, :cond_12

    .line 209
    .line 210
    if-eqz v1, :cond_11

    .line 211
    .line 212
    if-eqz v4, :cond_9

    .line 213
    .line 214
    iget-object v4, v4, Lr2/l;->a:Landroidx/lifecycle/t;

    .line 215
    .line 216
    invoke-interface {v4}, Landroidx/lifecycle/t;->g()Landroidx/lifecycle/v;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    if-eqz v4, :cond_9

    .line 221
    .line 222
    invoke-virtual {v4, p0}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/s;)V

    .line 223
    .line 224
    .line 225
    :cond_9
    invoke-interface {v0}, Landroidx/lifecycle/t;->g()Landroidx/lifecycle/v;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v4, p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;)V

    .line 230
    .line 231
    .line 232
    new-instance v4, Lr2/l;

    .line 233
    .line 234
    invoke-direct {v4, v0, v1}, Lr2/l;-><init>(Landroidx/lifecycle/t;La5/g;)V

    .line 235
    .line 236
    .line 237
    invoke-direct {p0, v4}, Lr2/u;->set_viewTreeOwners(Lr2/l;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lr2/u;->j0:Lf9/k;

    .line 241
    .line 242
    if-eqz v0, :cond_a

    .line 243
    .line 244
    invoke-interface {v0, v4}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    :cond_a
    iput-object v3, p0, Lr2/u;->j0:Lf9/k;

    .line 248
    .line 249
    :cond_b
    iget-object v0, p0, Lr2/u;->w0:Lh2/c;

    .line 250
    .line 251
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_c

    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_c
    const/4 v2, 0x2

    .line 259
    :goto_2
    iget-object v0, v0, Lh2/c;->a:Lf1/k1;

    .line 260
    .line 261
    new-instance v1, Lh2/a;

    .line 262
    .line 263
    invoke-direct {v1, v2}, Lh2/a;-><init>(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0}, Lr2/u;->getViewTreeOwners()Lr2/l;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    if-eqz v0, :cond_d

    .line 274
    .line 275
    iget-object v0, v0, Lr2/l;->a:Landroidx/lifecycle/t;

    .line 276
    .line 277
    invoke-interface {v0}, Landroidx/lifecycle/t;->g()Landroidx/lifecycle/v;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    :cond_d
    if-eqz v3, :cond_10

    .line 282
    .line 283
    invoke-virtual {v3, p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;)V

    .line 284
    .line 285
    .line 286
    iget-object v0, p0, Lr2/u;->t:Lt1/c;

    .line 287
    .line 288
    invoke-virtual {v3, v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/s;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    iget-object v1, p0, Lr2/u;->k0:Lr2/i;

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    iget-object v1, p0, Lr2/u;->l0:Lr2/j;

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    iget-object v1, p0, Lr2/u;->m0:Lr2/k;

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 316
    .line 317
    .line 318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 319
    .line 320
    const/16 v1, 0x1f

    .line 321
    .line 322
    if-lt v0, v1, :cond_e

    .line 323
    .line 324
    sget-object v0, Lr2/f0;->a:Lr2/f0;

    .line 325
    .line 326
    invoke-virtual {v0, p0}, Lr2/f0;->b(Landroid/view/View;)V

    .line 327
    .line 328
    .line 329
    :cond_e
    iget-object v0, p0, Lr2/u;->F:Ls1/c;

    .line 330
    .line 331
    if-eqz v0, :cond_f

    .line 332
    .line 333
    invoke-virtual {p0}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    check-cast v1, Lw1/j;

    .line 338
    .line 339
    iget-object v1, v1, Lw1/j;->g:Ls/d0;

    .line 340
    .line 341
    invoke-virtual {v1, v0}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    iget-object v1, v1, Ly2/o;->d:Ls/d0;

    .line 349
    .line 350
    invoke-virtual {v1, v0}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    :cond_f
    return-void

    .line 354
    :cond_10
    const-string v0, "No lifecycle owner exists"

    .line 355
    .line 356
    invoke-static {v0}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    throw v0

    .line 361
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 362
    .line 363
    const-string v1, "Composed into the View which doesn\'t propagateViewTreeSavedStateRegistryOwner!"

    .line 364
    .line 365
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    throw v0

    .line 369
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 370
    .line 371
    const-string v1, "Composed into the View which doesn\'t propagate ViewTreeLifecycleOwner!"

    .line 372
    .line 373
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    throw v0
.end method

.method public final onCheckIsTextEditor()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lr2/u;->p0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lr1/r;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lr1/r;->b:Ljava/lang/Object;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    check-cast v0, Lr2/p0;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lr2/u;->n0:Lg3/z;

    .line 21
    .line 22
    iget-boolean v0, v0, Lg3/z;->d:Z

    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    iget-object v0, v0, Lr2/p0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lr1/r;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v1, v0, Lr1/r;->b:Ljava/lang/Object;

    .line 36
    .line 37
    :cond_2
    check-cast v1, Lr2/u1;

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    iget-boolean v0, v1, Lr2/u1;->e:Z

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    xor-int/2addr v0, v1

    .line 45
    if-ne v0, v1, :cond_3

    .line 46
    .line 47
    return v1

    .line 48
    :cond_3
    const/4 v0, 0x0

    .line 49
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, La/a;->b(Landroid/content/Context;)Ln3/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, v0}, Lr2/u;->setDensity(Ln3/c;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lr2/u;->j:Lr2/v1;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/16 v2, 0x1f

    .line 24
    .line 25
    if-lt v0, v2, :cond_0

    .line 26
    .line 27
    invoke-static {p1}, Lc3/c;->a(Landroid/content/res/Configuration;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v3, 0x0

    .line 33
    :goto_0
    iget v4, p0, Lr2/u;->t0:I

    .line 34
    .line 35
    if-eq v3, v4, :cond_2

    .line 36
    .line 37
    if-lt v0, v2, :cond_1

    .line 38
    .line 39
    invoke-static {p1}, Lc3/c;->a(Landroid/content/res/Configuration;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    :cond_1
    iput v1, p0, Lr2/u;->t0:I

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Li9/a;->u(Landroid/content/Context;)Lf3/e;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Lr2/u;->setFontFamilyResolver(Lf3/d;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lr2/u;->D:Lf9/k;

    .line 57
    .line 58
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 14

    .line 1
    iget-object v0, p0, Lr2/u;->p0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lr1/r;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lr1/r;->b:Ljava/lang/Object;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    check-cast v0, Lr2/p0;

    .line 17
    .line 18
    if-nez v0, :cond_1a

    .line 19
    .line 20
    iget-object v0, p0, Lr2/u;->n0:Lg3/z;

    .line 21
    .line 22
    iget-boolean v2, v0, Lg3/z;->d:Z

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto/16 :goto_8

    .line 27
    .line 28
    :cond_1
    iget-object v1, v0, Lg3/z;->h:Lg3/k;

    .line 29
    .line 30
    iget-object v2, v0, Lg3/z;->g:Lg3/w;

    .line 31
    .line 32
    iget v3, v1, Lg3/k;->e:I

    .line 33
    .line 34
    iget-boolean v4, v1, Lg3/k;->a:Z

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    const/4 v6, 0x4

    .line 38
    const/4 v7, 0x7

    .line 39
    const/4 v8, 0x5

    .line 40
    const/4 v9, 0x6

    .line 41
    const/4 v10, 0x3

    .line 42
    const/4 v11, 0x2

    .line 43
    if-ne v3, v5, :cond_3

    .line 44
    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    :goto_1
    const/4 v12, 0x6

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/4 v12, 0x0

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    if-nez v3, :cond_4

    .line 52
    .line 53
    const/4 v12, 0x1

    .line 54
    goto :goto_2

    .line 55
    :cond_4
    if-ne v3, v11, :cond_5

    .line 56
    .line 57
    const/4 v12, 0x2

    .line 58
    goto :goto_2

    .line 59
    :cond_5
    if-ne v3, v9, :cond_6

    .line 60
    .line 61
    const/4 v12, 0x5

    .line 62
    goto :goto_2

    .line 63
    :cond_6
    if-ne v3, v8, :cond_7

    .line 64
    .line 65
    const/4 v12, 0x7

    .line 66
    goto :goto_2

    .line 67
    :cond_7
    if-ne v3, v10, :cond_8

    .line 68
    .line 69
    const/4 v12, 0x3

    .line 70
    goto :goto_2

    .line 71
    :cond_8
    if-ne v3, v6, :cond_9

    .line 72
    .line 73
    const/4 v12, 0x4

    .line 74
    goto :goto_2

    .line 75
    :cond_9
    if-ne v3, v7, :cond_19

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :goto_2
    iput v12, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 79
    .line 80
    iget v13, v1, Lg3/k;->d:I

    .line 81
    .line 82
    if-ne v13, v5, :cond_a

    .line 83
    .line 84
    iput v5, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_a
    if-ne v13, v11, :cond_b

    .line 88
    .line 89
    iput v5, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 90
    .line 91
    const/high16 v6, -0x80000000

    .line 92
    .line 93
    or-int/2addr v6, v12

    .line 94
    iput v6, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_b
    if-ne v13, v10, :cond_c

    .line 98
    .line 99
    iput v11, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_c
    if-ne v13, v6, :cond_d

    .line 103
    .line 104
    iput v10, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_d
    if-ne v13, v8, :cond_e

    .line 108
    .line 109
    const/16 v6, 0x11

    .line 110
    .line 111
    iput v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_e
    if-ne v13, v9, :cond_f

    .line 115
    .line 116
    const/16 v6, 0x21

    .line 117
    .line 118
    iput v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_f
    if-ne v13, v7, :cond_10

    .line 122
    .line 123
    const/16 v6, 0x81

    .line 124
    .line 125
    iput v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_10
    const/16 v6, 0x8

    .line 129
    .line 130
    if-ne v13, v6, :cond_11

    .line 131
    .line 132
    const/16 v6, 0x12

    .line 133
    .line 134
    iput v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_11
    const/16 v6, 0x9

    .line 138
    .line 139
    if-ne v13, v6, :cond_18

    .line 140
    .line 141
    const/16 v6, 0x2002

    .line 142
    .line 143
    iput v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 144
    .line 145
    :goto_3
    if-nez v4, :cond_12

    .line 146
    .line 147
    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 148
    .line 149
    and-int/lit8 v6, v4, 0x1

    .line 150
    .line 151
    if-ne v6, v5, :cond_12

    .line 152
    .line 153
    const/high16 v6, 0x20000

    .line 154
    .line 155
    or-int/2addr v4, v6

    .line 156
    iput v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 157
    .line 158
    if-ne v3, v5, :cond_12

    .line 159
    .line 160
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 161
    .line 162
    const/high16 v4, 0x40000000    # 2.0f

    .line 163
    .line 164
    or-int/2addr v3, v4

    .line 165
    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 166
    .line 167
    :cond_12
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 168
    .line 169
    and-int/lit8 v4, v3, 0x1

    .line 170
    .line 171
    if-ne v4, v5, :cond_16

    .line 172
    .line 173
    iget v4, v1, Lg3/k;->b:I

    .line 174
    .line 175
    if-ne v4, v5, :cond_13

    .line 176
    .line 177
    or-int/lit16 v3, v3, 0x1000

    .line 178
    .line 179
    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_13
    if-ne v4, v11, :cond_14

    .line 183
    .line 184
    or-int/lit16 v3, v3, 0x2000

    .line 185
    .line 186
    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_14
    if-ne v4, v10, :cond_15

    .line 190
    .line 191
    or-int/lit16 v3, v3, 0x4000

    .line 192
    .line 193
    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 194
    .line 195
    :cond_15
    :goto_4
    iget-boolean v1, v1, Lg3/k;->c:Z

    .line 196
    .line 197
    if-eqz v1, :cond_16

    .line 198
    .line 199
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 200
    .line 201
    const v3, 0x8000

    .line 202
    .line 203
    .line 204
    or-int/2addr v1, v3

    .line 205
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 206
    .line 207
    :cond_16
    iget-wide v3, v2, Lg3/w;->b:J

    .line 208
    .line 209
    sget v1, Lb3/n0;->c:I

    .line 210
    .line 211
    const/16 v1, 0x20

    .line 212
    .line 213
    shr-long v5, v3, v1

    .line 214
    .line 215
    long-to-int v1, v5

    .line 216
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 217
    .line 218
    const-wide v5, 0xffffffffL

    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    and-long/2addr v3, v5

    .line 224
    long-to-int v1, v3

    .line 225
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 226
    .line 227
    iget-object v1, v2, Lg3/w;->a:Lb3/g;

    .line 228
    .line 229
    iget-object v1, v1, Lb3/g;->b:Ljava/lang/String;

    .line 230
    .line 231
    invoke-static {p1, v1}, Lg4/d;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 235
    .line 236
    const/high16 v2, 0x2000000

    .line 237
    .line 238
    or-int/2addr v1, v2

    .line 239
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 240
    .line 241
    invoke-static {}, Ll4/j;->d()Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-nez v1, :cond_17

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_17
    invoke-static {}, Ll4/j;->a()Ll4/j;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v1, p1}, Ll4/j;->i(Landroid/view/inputmethod/EditorInfo;)V

    .line 253
    .line 254
    .line 255
    :goto_5
    iget-object p1, v0, Lg3/z;->g:Lg3/w;

    .line 256
    .line 257
    iget-object v1, v0, Lg3/z;->h:Lg3/k;

    .line 258
    .line 259
    iget-boolean v1, v1, Lg3/k;->c:Z

    .line 260
    .line 261
    new-instance v2, La2/d;

    .line 262
    .line 263
    const/16 v3, 0x15

    .line 264
    .line 265
    invoke-direct {v2, v3, v0}, La2/d;-><init>(ILjava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    new-instance v3, Lg3/s;

    .line 269
    .line 270
    invoke-direct {v3, p1, v2, v1}, Lg3/s;-><init>(Lg3/w;La2/d;Z)V

    .line 271
    .line 272
    .line 273
    iget-object p1, v0, Lg3/z;->i:Ljava/util/ArrayList;

    .line 274
    .line 275
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 276
    .line 277
    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    return-object v3

    .line 284
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 285
    .line 286
    const-string v0, "Invalid Keyboard Type"

    .line 287
    .line 288
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    throw p1

    .line 292
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 293
    .line 294
    const-string v0, "invalid ImeAction"

    .line 295
    .line 296
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw p1

    .line 300
    :cond_1a
    iget-object v0, v0, Lr2/p0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    check-cast v0, Lr1/r;

    .line 307
    .line 308
    if-eqz v0, :cond_1b

    .line 309
    .line 310
    iget-object v0, v0, Lr1/r;->b:Ljava/lang/Object;

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_1b
    move-object v0, v1

    .line 314
    :goto_6
    check-cast v0, Lr2/u1;

    .line 315
    .line 316
    if-eqz v0, :cond_20

    .line 317
    .line 318
    iget-object v2, v0, Lr2/u1;->c:Ljava/lang/Object;

    .line 319
    .line 320
    monitor-enter v2

    .line 321
    :try_start_0
    iget-boolean v3, v0, Lr2/u1;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    .line 323
    if-eqz v3, :cond_1c

    .line 324
    .line 325
    monitor-exit v2

    .line 326
    return-object v1

    .line 327
    :cond_1c
    :try_start_1
    iget-object v1, v0, Lr2/u1;->a:Lu0/o;

    .line 328
    .line 329
    invoke-virtual {v1, p1}, Lu0/o;->a(Landroid/view/inputmethod/EditorInfo;)Lu0/p;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    new-instance v1, Lb2/a;

    .line 334
    .line 335
    const/16 v3, 0xc

    .line 336
    .line 337
    invoke-direct {v1, v3, v0}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 341
    .line 342
    const/16 v4, 0x22

    .line 343
    .line 344
    if-lt v3, v4, :cond_1d

    .line 345
    .line 346
    new-instance v3, Lg3/o;

    .line 347
    .line 348
    invoke-direct {v3, p1, v1}, Lg3/l;-><init>(Lu0/p;Lb2/a;)V

    .line 349
    .line 350
    .line 351
    goto :goto_7

    .line 352
    :cond_1d
    const/16 v4, 0x19

    .line 353
    .line 354
    if-lt v3, v4, :cond_1e

    .line 355
    .line 356
    new-instance v3, Lg3/n;

    .line 357
    .line 358
    invoke-direct {v3, p1, v1}, Lg3/l;-><init>(Lu0/p;Lb2/a;)V

    .line 359
    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_1e
    const/16 v4, 0x18

    .line 363
    .line 364
    if-lt v3, v4, :cond_1f

    .line 365
    .line 366
    new-instance v3, Lg3/m;

    .line 367
    .line 368
    invoke-direct {v3, p1, v1}, Lg3/l;-><init>(Lu0/p;Lb2/a;)V

    .line 369
    .line 370
    .line 371
    goto :goto_7

    .line 372
    :cond_1f
    new-instance v3, Lg3/l;

    .line 373
    .line 374
    invoke-direct {v3, p1, v1}, Lg3/l;-><init>(Lu0/p;Lb2/a;)V

    .line 375
    .line 376
    .line 377
    :goto_7
    iget-object p1, v0, Lr2/u1;->d:Lh1/e;

    .line 378
    .line 379
    new-instance v0, Lq2/e2;

    .line 380
    .line 381
    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1, v0}, Lh1/e;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    .line 386
    .line 387
    monitor-exit v2

    .line 388
    return-object v3

    .line 389
    :catchall_0
    move-exception p1

    .line 390
    monitor-exit v2

    .line 391
    throw p1

    .line 392
    :cond_20
    :goto_8
    return-object v1
.end method

.method public final onCreateVirtualViewTranslationRequests([J[ILjava/util/function/Consumer;)V
    .locals 7

    .line 1
    iget-object p2, p0, Lr2/u;->t:Lt1/c;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_3

    .line 9
    .line 10
    aget-wide v2, p1, v1

    .line 11
    .line 12
    invoke-virtual {p2}, Lt1/c;->k()Ls/k;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    long-to-int v3, v2

    .line 17
    invoke-virtual {v4, v3}, Ls/k;->b(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ly2/n;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iget-object v2, v2, Ly2/n;->a:Ly2/m;

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-static {}, Lc3/c;->p()V

    .line 31
    .line 32
    .line 33
    iget-object v3, p2, Lt1/c;->a:Lr2/u;

    .line 34
    .line 35
    invoke-static {v3}, Ls1/o;->g(Lr2/u;)Landroid/view/autofill/AutofillId;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget v4, v2, Ly2/m;->g:I

    .line 40
    .line 41
    int-to-long v4, v4

    .line 42
    invoke-static {v3, v4, v5}, Lc3/c;->l(Landroid/view/autofill/AutofillId;J)Landroid/view/translation/ViewTranslationRequest$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v2, v2, Ly2/m;->d:Ly2/j;

    .line 47
    .line 48
    sget-object v4, Ly2/r;->A:Ly2/u;

    .line 49
    .line 50
    iget-object v2, v2, Ly2/j;->a:Ls/h0;

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Ls/h0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v4, 0x0

    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    move-object v2, v4

    .line 60
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    const-string v5, "\n"

    .line 65
    .line 66
    const/16 v6, 0x3e

    .line 67
    .line 68
    invoke-static {v2, v5, v4, v6}, Lp3/a;->a(Ljava/util/List;Ljava/lang/String;La8/v0;I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    new-instance v4, Lb3/g;

    .line 75
    .line 76
    invoke-direct {v4, v2}, Lb3/g;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v4}, Lc3/c;->j(Lb3/g;)Landroid/view/translation/TranslationRequestValue;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v3, v2}, Lc3/c;->B(Landroid/view/translation/ViewTranslationRequest$Builder;Landroid/view/translation/TranslationRequestValue;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v3}, Lc3/c;->m(Landroid/view/translation/ViewTranslationRequest$Builder;)Landroid/view/translation/ViewTranslationRequest;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {p3, v2}, Lr2/g0;->i(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lr2/u;->m:Lo2/q;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lo2/q;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lr2/u;->f:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lr2/u;->e:Landroid/view/View;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "frameRateCategoryView"

    .line 23
    .line 24
    invoke-static {v0}, Lg9/l;->j(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v1

    .line 28
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v2, 0x1c

    .line 31
    .line 32
    if-le v0, v2, :cond_2

    .line 33
    .line 34
    sget-object v2, Lr2/u;->R0:Ls/d0;

    .line 35
    .line 36
    monitor-enter v2

    .line 37
    :try_start_0
    invoke-virtual {v2, p0}, Ls/d0;->i(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit v2

    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    monitor-exit v2

    .line 44
    throw v0

    .line 45
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lr2/u;->getSnapshotObserver()Lq2/s1;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v2, v2, Lq2/s1;->a:Lp1/u;

    .line 50
    .line 51
    iget-object v3, v2, Lp1/u;->h:Lg4/e;

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    invoke-virtual {v3}, Lg4/e;->a()V

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {v2}, Lp1/u;->a()V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lr2/u;->j:Lr2/v1;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lr2/u;->getViewTreeOwners()Lr2/l;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    iget-object v1, v2, Lr2/l;->a:Landroidx/lifecycle/t;

    .line 73
    .line 74
    invoke-interface {v1}, Landroidx/lifecycle/t;->g()Landroidx/lifecycle/v;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :cond_4
    if-eqz v1, :cond_8

    .line 79
    .line 80
    iget-object v2, p0, Lr2/u;->t:Lt1/c;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/s;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p0}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/s;)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lr2/u;->l()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    iget-object v1, p0, Lr2/u;->E:Lba/a;

    .line 95
    .line 96
    if-eqz v1, :cond_5

    .line 97
    .line 98
    sget-object v2, Ls1/i;->a:Ls1/i;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    iget-object v1, v1, Lba/a;->d:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v1, Landroid/view/autofill/AutofillManager;

    .line 106
    .line 107
    invoke-static {v2}, Lq0/o;->f(Ljava/lang/Object;)Landroid/view/autofill/AutofillManager$AutofillCallback;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v1, v2}, Lq0/o;->w(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager$AutofillCallback;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iget-object v2, p0, Lr2/u;->k0:Lr2/i;

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iget-object v2, p0, Lr2/u;->l0:Lr2/j;

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v2, p0, Lr2/u;->m0:Lr2/k;

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 139
    .line 140
    .line 141
    const/16 v1, 0x1f

    .line 142
    .line 143
    if-lt v0, v1, :cond_6

    .line 144
    .line 145
    sget-object v0, Lr2/f0;->a:Lr2/f0;

    .line 146
    .line 147
    invoke-virtual {v0, p0}, Lr2/f0;->a(Landroid/view/View;)V

    .line 148
    .line 149
    .line 150
    :cond_6
    iget-object v0, p0, Lr2/u;->F:Ls1/c;

    .line 151
    .line 152
    if-eqz v0, :cond_7

    .line 153
    .line 154
    invoke-virtual {p0}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    iget-object v1, v1, Ly2/o;->d:Ls/d0;

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ls/d0;->i(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Lw1/j;

    .line 168
    .line 169
    iget-object v1, v1, Lw1/j;->g:Ls/d0;

    .line 170
    .line 171
    invoke-virtual {v1, v0}, Ls/d0;->i(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    :cond_7
    return-void

    .line 175
    :cond_8
    const-string v0, "No lifecycle owner exists"

    .line 176
    .line 177
    invoke-static {v0}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    throw v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lw1/j;

    .line 17
    .line 18
    iget-object p1, p1, Lw1/j;->c:Lw1/s;

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    invoke-static {p1, p2}, Lw1/f;->e(Lw1/s;Z)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lr2/u;->V:J

    .line 4
    .line 5
    iget-object p1, p0, Lr2/u;->P:Lq2/w0;

    .line 6
    .line 7
    iget-object v0, p0, Lr2/u;->I0:Lr2/s;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lq2/w0;->j(Lr2/s;)Z

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lr2/u;->N:Ln3/a;

    .line 14
    .line 15
    invoke-virtual {p0}, Lr2/u;->P()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lr2/u;->L:Lr2/w0;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lr2/u;->getAndroidViewsHandler$ui_release()Lr2/w0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sub-int/2addr p4, p2

    .line 27
    sub-int/2addr p5, p3

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lr2/u;->P:Lq2/w0;

    .line 2
    .line 3
    const-string v1, "AndroidOwner:onMeasure"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lr2/u;->getRoot()Lq2/h0;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0, v1}, Lr2/u;->s(Lq2/h0;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    :goto_0
    invoke-static {p1}, Lr2/u;->n(I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    const/16 p1, 0x20

    .line 30
    .line 31
    ushr-long v3, v1, p1

    .line 32
    .line 33
    long-to-int v4, v3

    .line 34
    const-wide v5, 0xffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    and-long/2addr v1, v5

    .line 40
    long-to-int v2, v1

    .line 41
    invoke-static {p2}, Lr2/u;->n(I)J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    ushr-long p1, v7, p1

    .line 46
    .line 47
    long-to-int p2, p1

    .line 48
    and-long/2addr v5, v7

    .line 49
    long-to-int p1, v5

    .line 50
    invoke-static {v4, v2, p2, p1}, Lc7/a;->p(IIII)J

    .line 51
    .line 52
    .line 53
    move-result-wide p1

    .line 54
    iget-object v1, p0, Lr2/u;->N:Ln3/a;

    .line 55
    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    new-instance v1, Ln3/a;

    .line 59
    .line 60
    invoke-direct {v1, p1, p2}, Ln3/a;-><init>(J)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lr2/u;->N:Ln3/a;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    iput-boolean v1, p0, Lr2/u;->O:Z

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-wide v1, v1, Ln3/a;->a:J

    .line 70
    .line 71
    invoke-static {v1, v2, p1, p2}, Ln3/a;->b(JJ)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lr2/u;->O:Z

    .line 79
    .line 80
    :cond_2
    :goto_1
    invoke-virtual {v0, p1, p2}, Lq2/w0;->q(J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lq2/w0;->l()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lr2/u;->getRoot()Lq2/h0;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object p1, p1, Lq2/h0;->F:Lq2/l0;

    .line 91
    .line 92
    iget-object p1, p1, Lq2/l0;->p:Lq2/y0;

    .line 93
    .line 94
    iget p1, p1, Lo2/v0;->a:I

    .line 95
    .line 96
    invoke-virtual {p0}, Lr2/u;->getRoot()Lq2/h0;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iget-object p2, p2, Lq2/h0;->F:Lq2/l0;

    .line 101
    .line 102
    iget-object p2, p2, Lq2/l0;->p:Lq2/y0;

    .line 103
    .line 104
    iget p2, p2, Lo2/v0;->b:I

    .line 105
    .line 106
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lr2/u;->L:Lr2/w0;

    .line 110
    .line 111
    if-eqz p1, :cond_3

    .line 112
    .line 113
    invoke-virtual {p0}, Lr2/u;->getAndroidViewsHandler$ui_release()Lr2/w0;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0}, Lr2/u;->getRoot()Lq2/h0;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    iget-object p2, p2, Lq2/h0;->F:Lq2/l0;

    .line 122
    .line 123
    iget-object p2, p2, Lq2/l0;->p:Lq2/y0;

    .line 124
    .line 125
    iget p2, p2, Lo2/v0;->a:I

    .line 126
    .line 127
    const/high16 v0, 0x40000000    # 2.0f

    .line 128
    .line 129
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    invoke-virtual {p0}, Lr2/u;->getRoot()Lq2/h0;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iget-object v1, v1, Lq2/h0;->F:Lq2/l0;

    .line 138
    .line 139
    iget-object v1, v1, Lq2/l0;->p:Lq2/y0;

    .line 140
    .line 141
    iget v1, v1, Lo2/v0;->b:I

    .line 142
    .line 143
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .line 149
    .line 150
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 155
    .line 156
    .line 157
    throw p1
.end method

.method public final onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 11

    .line 1
    invoke-static {}, Lr2/u;->l()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_9

    .line 6
    .line 7
    if-eqz p1, :cond_9

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    iget-object v0, p0, Lr2/u;->F:Ls1/c;

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    iget-object v1, v0, Ls1/c;->b:Ly2/o;

    .line 15
    .line 16
    iget-object v1, v1, Ly2/o;->a:Lq2/h0;

    .line 17
    .line 18
    iget-object v2, v0, Ls1/c;->g:Landroid/view/autofill/AutofillId;

    .line 19
    .line 20
    iget-object v3, v0, Ls1/c;->e:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, v0, Ls1/c;->d:Lz2/a;

    .line 23
    .line 24
    invoke-static {p1, v1, v2, v3, v4}, Lp9/x1;->J(Landroid/view/ViewStructure;Lq2/h0;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lz2/a;)V

    .line 25
    .line 26
    .line 27
    sget-object v2, Ls/m0;->a:[Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v2, Ls/d0;

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    invoke-direct {v2, v5}, Ls/d0;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v2}, Ls/d0;->h()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_5

    .line 46
    .line 47
    iget v1, v2, Ls/d0;->b:I

    .line 48
    .line 49
    sub-int/2addr v1, p2

    .line 50
    invoke-virtual {v2, v1}, Ls/d0;->j(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v5, "null cannot be cast to non-null type android.view.ViewStructure"

    .line 55
    .line 56
    invoke-static {v1, v5}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Li7/a;->l(Ljava/lang/Object;)Landroid/view/ViewStructure;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget v5, v2, Ls/d0;->b:I

    .line 64
    .line 65
    sub-int/2addr v5, p2

    .line 66
    invoke-virtual {v2, v5}, Ls/d0;->j(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const-string v6, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsInfo"

    .line 71
    .line 72
    invoke-static {v5, v6}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    check-cast v5, Lq2/h0;

    .line 76
    .line 77
    invoke-virtual {v5}, Lq2/h0;->o()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lh1/b;

    .line 82
    .line 83
    iget-object v6, v5, Lh1/b;->b:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v6, Lh1/e;

    .line 86
    .line 87
    iget v6, v6, Lh1/e;->c:I

    .line 88
    .line 89
    const/4 v7, 0x0

    .line 90
    :goto_0
    if-ge v7, v6, :cond_0

    .line 91
    .line 92
    invoke-virtual {v5, v7}, Lh1/b;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    check-cast v8, Lq2/h0;

    .line 97
    .line 98
    iget-boolean v9, v8, Lq2/h0;->P:Z

    .line 99
    .line 100
    if-nez v9, :cond_4

    .line 101
    .line 102
    invoke-virtual {v8}, Lq2/h0;->I()Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-eqz v9, :cond_4

    .line 107
    .line 108
    invoke-virtual {v8}, Lq2/h0;->J()Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-nez v9, :cond_1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v8}, Lq2/h0;->x()Ly2/j;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    if-eqz v9, :cond_3

    .line 120
    .line 121
    iget-object v9, v9, Ly2/j;->a:Ls/h0;

    .line 122
    .line 123
    sget-object v10, Ly2/i;->g:Ly2/u;

    .line 124
    .line 125
    invoke-virtual {v9, v10}, Ls/h0;->b(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    if-nez v10, :cond_2

    .line 130
    .line 131
    sget-object v10, Ly2/r;->q:Ly2/u;

    .line 132
    .line 133
    invoke-virtual {v9, v10}, Ls/h0;->b(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-nez v10, :cond_2

    .line 138
    .line 139
    sget-object v10, Ly2/r;->r:Ly2/u;

    .line 140
    .line 141
    invoke-virtual {v9, v10}, Ls/h0;->b(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-eqz v9, :cond_3

    .line 146
    .line 147
    :cond_2
    invoke-static {v1, p2}, Li7/a;->a(Landroid/view/ViewStructure;I)I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    invoke-static {v1, v9}, Ls1/g;->d(Landroid/view/ViewStructure;I)Landroid/view/ViewStructure;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    iget-object v10, v0, Ls1/c;->g:Landroid/view/autofill/AutofillId;

    .line 156
    .line 157
    invoke-static {v9, v8, v10, v3, v4}, Lp9/x1;->J(Landroid/view/ViewStructure;Lq2/h0;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lz2/a;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v8}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v9}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_3
    invoke-virtual {v2, v8}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v1}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_5
    iget-object v0, p0, Lr2/u;->E:Lba/a;

    .line 177
    .line 178
    if-eqz v0, :cond_9

    .line 179
    .line 180
    iget-object v1, v0, Lba/a;->c:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v1, Ls1/k;

    .line 183
    .line 184
    iget-object v2, v1, Ls1/k;->a:Ljava/util/LinkedHashMap;

    .line 185
    .line 186
    iget-object v1, v1, Ls1/k;->a:Ljava/util/LinkedHashMap;

    .line 187
    .line 188
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_6

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_6
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    invoke-static {p1, v2}, Li7/a;->a(Landroid/view/ViewStructure;I)I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-nez v3, :cond_7

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    check-cast v1, Ljava/util/Map$Entry;

    .line 223
    .line 224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    check-cast v3, Ljava/lang/Number;

    .line 229
    .line 230
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 231
    .line 232
    .line 233
    move-result v3

    .line 234
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    if-nez v1, :cond_8

    .line 239
    .line 240
    invoke-static {p1, v2}, Ls1/g;->d(Landroid/view/ViewStructure;I)Landroid/view/ViewStructure;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    iget-object v1, v0, Lba/a;->e:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 247
    .line 248
    invoke-static {p1, v1, v3}, Lq0/o;->t(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillId;I)V

    .line 249
    .line 250
    .line 251
    iget-object v0, v0, Lba/a;->b:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v0, Lr2/u;

    .line 254
    .line 255
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-static {p1, v3, v0}, Ls1/g;->i(Landroid/view/ViewStructure;ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-static {p1, p2}, Lq0/o;->s(Landroid/view/ViewStructure;I)V

    .line 267
    .line 268
    .line 269
    const/4 p1, 0x0

    .line 270
    throw p1

    .line 271
    :cond_8
    new-instance p1, Ljava/lang/ClassCastException;

    .line 272
    .line 273
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 274
    .line 275
    .line 276
    throw p1

    .line 277
    :cond_9
    :goto_2
    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2002

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    const/16 v1, 0x4002

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lr2/u;->getPointerIconService()Lk2/u;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lr2/q;

    .line 32
    .line 33
    iget-object v0, v0, Lr2/q;->a:Lk2/t;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    instance-of p2, v0, Lk2/a;

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    check-cast v0, Lk2/a;

    .line 46
    .line 47
    iget p2, v0, Lk2/a;->b:I

    .line 48
    .line 49
    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_1
    const/16 p2, 0x3e8

    .line 55
    .line 56
    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lr2/u;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    sget-object v0, Ln3/m;->a:Ln3/m;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p1, v1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Ln3/m;->b:Ln3/m;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-object p1, v0

    .line 18
    :goto_0
    if-nez p1, :cond_2

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    move-object v0, p1

    .line 22
    :goto_1
    invoke-direct {p0, v0}, Lr2/u;->setLayoutDirection(Ln3/m;)V

    .line 23
    .line 24
    .line 25
    :cond_3
    return-void
.end method

.method public final onScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V
    .locals 12

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 p2, 0x1f

    .line 4
    .line 5
    if-lt p1, p2, :cond_1

    .line 6
    .line 7
    iget-object v4, p0, Lr2/u;->L0:Lv/a1;

    .line 8
    .line 9
    if-eqz v4, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lr2/u;->getSemanticsOwner()Ly2/o;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lr2/u;->getCoroutineContext()Lw8/h;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    new-instance v9, Lh1/e;

    .line 20
    .line 21
    const/16 v0, 0x10

    .line 22
    .line 23
    new-array v0, v0, [Lx2/h;

    .line 24
    .line 25
    invoke-direct {v9, v0}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ly2/o;->a()Ly2/m;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v5, Lx2/g;

    .line 33
    .line 34
    const-string v11, "add(Ljava/lang/Object;)Z"

    .line 35
    .line 36
    const/16 v7, 0x8

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    const-class v8, Lh1/e;

    .line 40
    .line 41
    const-string v10, "add"

    .line 42
    .line 43
    invoke-direct/range {v5 .. v11}, Lg9/a;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-static {p1, v0, v5}, Lp4/o;->d0(Ly2/m;ILx2/g;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x2

    .line 51
    new-array p1, p1, [Lf9/k;

    .line 52
    .line 53
    sget-object v1, Lx2/b;->c:Lx2/b;

    .line 54
    .line 55
    aput-object v1, p1, v0

    .line 56
    .line 57
    sget-object v1, Lx2/b;->d:Lx2/b;

    .line 58
    .line 59
    aput-object v1, p1, v6

    .line 60
    .line 61
    new-instance v1, Lu8/a;

    .line 62
    .line 63
    invoke-direct {v1, v0, p1}, Lu8/a;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, v9, Lh1/e;->a:[Ljava/lang/Object;

    .line 67
    .line 68
    iget v2, v9, Lh1/e;->c:I

    .line 69
    .line 70
    invoke-static {p1, v1, v0, v2}, Ls8/l;->h0([Ljava/lang/Object;Ljava/util/Comparator;II)V

    .line 71
    .line 72
    .line 73
    iget p1, v9, Lh1/e;->c:I

    .line 74
    .line 75
    if-nez p1, :cond_0

    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    sub-int/2addr p1, v6

    .line 80
    iget-object v0, v9, Lh1/e;->a:[Ljava/lang/Object;

    .line 81
    .line 82
    aget-object p1, v0, p1

    .line 83
    .line 84
    :goto_0
    check-cast p1, Lx2/h;

    .line 85
    .line 86
    if-nez p1, :cond_2

    .line 87
    .line 88
    :cond_1
    move-object v5, p0

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object v2, p1, Lx2/h;->c:Ln3/k;

    .line 91
    .line 92
    invoke-static {p2}, Lac/z;->a(Lw8/h;)Lfc/c;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    new-instance v0, Lx2/c;

    .line 97
    .line 98
    iget-object v1, p1, Lx2/h;->a:Ly2/m;

    .line 99
    .line 100
    move-object v5, p0

    .line 101
    invoke-direct/range {v0 .. v5}, Lx2/c;-><init>(Ly2/m;Ln3/k;Lfc/c;Lv/a1;Lr2/u;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p1, Lx2/h;->d:Lq2/h1;

    .line 105
    .line 106
    invoke-static {p1}, Lo2/d1;->g(Lo2/w;)Lo2/w;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-interface {p2, p1, v6}, Lo2/w;->h(Lo2/w;Z)Lx1/c;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget p2, v2, Ln3/k;->a:I

    .line 115
    .line 116
    iget v1, v2, Ln3/k;->b:I

    .line 117
    .line 118
    int-to-long v3, p2

    .line 119
    const/16 p2, 0x20

    .line 120
    .line 121
    shl-long/2addr v3, p2

    .line 122
    int-to-long v6, v1

    .line 123
    const-wide v8, 0xffffffffL

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    and-long/2addr v6, v8

    .line 129
    or-long/2addr v3, v6

    .line 130
    invoke-static {p1}, Lm9/e0;->y0(Lx1/c;)Ln3/k;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {p1}, Ly1/h0;->y(Ln3/k;)Landroid/graphics/Rect;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-instance v1, Landroid/graphics/Point;

    .line 139
    .line 140
    shr-long v6, v3, p2

    .line 141
    .line 142
    long-to-int p2, v6

    .line 143
    and-long/2addr v3, v8

    .line 144
    long-to-int v4, v3

    .line 145
    invoke-direct {v1, p2, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 146
    .line 147
    .line 148
    invoke-static {p0, p1, v1, v0}, Lx2/f;->b(Lr2/u;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/ScrollCaptureCallback;)Landroid/view/ScrollCaptureTarget;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {v2}, Ly1/h0;->y(Ln3/k;)Landroid/graphics/Rect;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-static {p1, p2}, Lc3/c;->x(Landroid/view/ScrollCaptureTarget;Landroid/graphics/Rect;)V

    .line 157
    .line 158
    .line 159
    invoke-static {p3, p1}, Lr2/g0;->i(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :goto_1
    return-void
.end method

.method public final onVirtualViewTranslationResponses(Landroid/util/LongSparseArray;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lr2/u;->t:Lt1/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x1f

    .line 9
    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-static {v0, p1}, Lp9/x1;->m(Lt1/c;Landroid/util/LongSparseArray;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object v1, v0, Lt1/c;->a:Lr2/u;

    .line 36
    .line 37
    new-instance v2, Lc/n;

    .line 38
    .line 39
    const/4 v3, 0x3

    .line 40
    invoke-direct {v2, v3, v0, p1}, Lc/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr2/u;->j:Lr2/v1;

    .line 2
    .line 3
    iget-object v0, v0, Lr2/v1;->a:Lf1/k1;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lr2/u;->K0:Z

    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v0, 0x1e

    .line 23
    .line 24
    if-ge p1, v0, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lr2/j0;->n()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p0}, Lr2/u;->getShowLayoutBounds()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eq v0, p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lr2/u;->setShowLayoutBounds(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lr2/u;->getRoot()Lq2/h0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lr2/u;->r(Lq2/h0;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final p(Lq2/h0;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->P:Lq2/w0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lq2/w0;->f(Lq2/h0;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final q(Landroid/view/MotionEvent;)I
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lr2/u;->F0:Lcom/tencent/bugly/proguard/c0;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lr2/u;->H(Landroid/view/MotionEvent;)V

    .line 12
    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    iput-boolean v8, v1, Lr2/u;->W:Z

    .line 16
    .line 17
    invoke-virtual {v1, v7}, Lr2/u;->y(Z)V

    .line 18
    .line 19
    .line 20
    const-string v2, "AndroidOwner:onTouch"

    .line 21
    .line 22
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 23
    .line 24
    .line 25
    :try_start_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    iget-object v2, v1, Lr2/u;->z0:Landroid/view/MotionEvent;

    .line 30
    .line 31
    const/4 v10, 0x3

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 35
    .line 36
    .line 37
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    if-ne v3, v10, :cond_0

    .line 39
    .line 40
    const/4 v11, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v11, 0x0

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto/16 :goto_d

    .line 46
    .line 47
    :goto_0
    const/16 v12, 0xa

    .line 48
    .line 49
    iget-object v13, v1, Lr2/u;->C:Lb1/q;

    .line 50
    .line 51
    if-eqz v2, :cond_5

    .line 52
    .line 53
    :try_start_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-ne v3, v4, :cond_2

    .line 62
    .line 63
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eq v3, v4, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const/4 v3, 0x0

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 77
    :goto_2
    if-eqz v3, :cond_5

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_4

    .line 84
    .line 85
    :cond_3
    move-object v14, v2

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    const/4 v4, 0x2

    .line 94
    if-eq v3, v4, :cond_3

    .line 95
    .line 96
    const/4 v4, 0x6

    .line 97
    if-eq v3, v4, :cond_3

    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eq v3, v12, :cond_5

    .line 104
    .line 105
    if-eqz v11, :cond_5

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 108
    .line 109
    .line 110
    move-result-wide v4

    .line 111
    const/4 v6, 0x1

    .line 112
    const/16 v3, 0xa

    .line 113
    .line 114
    invoke-virtual/range {v1 .. v6}, Lr2/u;->N(Landroid/view/MotionEvent;IJZ)V

    .line 115
    .line 116
    .line 117
    move-object v14, v2

    .line 118
    goto :goto_4

    .line 119
    :catchall_1
    move-exception v0

    .line 120
    move-object/from16 v1, p0

    .line 121
    .line 122
    goto/16 :goto_d

    .line 123
    .line 124
    :cond_5
    move-object v14, v2

    .line 125
    goto :goto_4

    .line 126
    :goto_3
    iget-boolean v1, v13, Lb1/q;->a:Z

    .line 127
    .line 128
    if-nez v1, :cond_6

    .line 129
    .line 130
    iget-object v1, v13, Lb1/q;->d:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v1, La2/d;

    .line 133
    .line 134
    iget-object v1, v1, La2/d;->b:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v1, Ls/q;

    .line 137
    .line 138
    invoke-virtual {v1}, Ls/q;->b()V

    .line 139
    .line 140
    .line 141
    iget-object v1, v13, Lb1/q;->c:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v1, Lk2/e;

    .line 144
    .line 145
    invoke-virtual {v1}, Lk2/e;->f()V

    .line 146
    .line 147
    .line 148
    :cond_6
    :goto_4
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-ne v1, v10, :cond_7

    .line 153
    .line 154
    const/4 v1, 0x1

    .line 155
    goto :goto_5

    .line 156
    :cond_7
    const/4 v1, 0x0

    .line 157
    :goto_5
    const/16 v15, 0x9

    .line 158
    .line 159
    if-nez v11, :cond_8

    .line 160
    .line 161
    if-eqz v1, :cond_8

    .line 162
    .line 163
    if-eq v9, v10, :cond_8

    .line 164
    .line 165
    if-eq v9, v15, :cond_8

    .line 166
    .line 167
    invoke-virtual/range {p0 .. p1}, Lr2/u;->u(Landroid/view/MotionEvent;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_8

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 174
    .line 175
    .line 176
    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    const/4 v6, 0x1

    .line 178
    const/16 v3, 0x9

    .line 179
    .line 180
    move-object/from16 v1, p0

    .line 181
    .line 182
    move-object v2, v0

    .line 183
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lr2/u;->N(Landroid/view/MotionEvent;IJZ)V

    .line 184
    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_8
    move-object/from16 v1, p0

    .line 188
    .line 189
    :goto_6
    if-eqz v14, :cond_9

    .line 190
    .line 191
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 192
    .line 193
    .line 194
    :cond_9
    iget-object v0, v1, Lr2/u;->z0:Landroid/view/MotionEvent;

    .line 195
    .line 196
    if-eqz v0, :cond_14

    .line 197
    .line 198
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-ne v0, v12, :cond_14

    .line 203
    .line 204
    iget-object v0, v1, Lr2/u;->z0:Landroid/view/MotionEvent;

    .line 205
    .line 206
    if-eqz v0, :cond_a

    .line 207
    .line 208
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    goto :goto_7

    .line 213
    :cond_a
    const/4 v0, -0x1

    .line 214
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 215
    .line 216
    .line 217
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    iget-object v3, v1, Lr2/u;->B:Lk2/k;

    .line 219
    .line 220
    if-ne v2, v15, :cond_b

    .line 221
    .line 222
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-nez v2, :cond_b

    .line 227
    .line 228
    if-ltz v0, :cond_14

    .line 229
    .line 230
    iget-object v2, v3, Lk2/k;->c:Landroid/util/SparseBooleanArray;

    .line 231
    .line 232
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 233
    .line 234
    .line 235
    iget-object v2, v3, Lk2/k;->b:Landroid/util/SparseLongArray;

    .line 236
    .line 237
    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->delete(I)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_c

    .line 241
    .line 242
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-nez v2, :cond_14

    .line 247
    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-nez v2, :cond_14

    .line 253
    .line 254
    iget-object v2, v1, Lr2/u;->z0:Landroid/view/MotionEvent;

    .line 255
    .line 256
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 257
    .line 258
    if-eqz v2, :cond_c

    .line 259
    .line 260
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    goto :goto_8

    .line 265
    :cond_c
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 266
    .line 267
    :goto_8
    iget-object v5, v1, Lr2/u;->z0:Landroid/view/MotionEvent;

    .line 268
    .line 269
    if-eqz v5, :cond_d

    .line 270
    .line 271
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    cmpg-float v2, v2, v5

    .line 284
    .line 285
    if-nez v2, :cond_e

    .line 286
    .line 287
    cmpg-float v2, v4, v6

    .line 288
    .line 289
    if-nez v2, :cond_e

    .line 290
    .line 291
    const/4 v2, 0x0

    .line 292
    goto :goto_9

    .line 293
    :cond_e
    const/4 v2, 0x1

    .line 294
    :goto_9
    iget-object v4, v1, Lr2/u;->z0:Landroid/view/MotionEvent;

    .line 295
    .line 296
    if-eqz v4, :cond_f

    .line 297
    .line 298
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    .line 299
    .line 300
    .line 301
    move-result-wide v4

    .line 302
    goto :goto_a

    .line 303
    :cond_f
    const-wide/16 v4, -0x1

    .line 304
    .line 305
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 306
    .line 307
    .line 308
    move-result-wide v9

    .line 309
    cmp-long v6, v4, v9

    .line 310
    .line 311
    if-eqz v6, :cond_10

    .line 312
    .line 313
    const/4 v4, 0x1

    .line 314
    goto :goto_b

    .line 315
    :cond_10
    const/4 v4, 0x0

    .line 316
    :goto_b
    if-nez v2, :cond_11

    .line 317
    .line 318
    if-eqz v4, :cond_14

    .line 319
    .line 320
    :cond_11
    if-ltz v0, :cond_12

    .line 321
    .line 322
    iget-object v2, v3, Lk2/k;->c:Landroid/util/SparseBooleanArray;

    .line 323
    .line 324
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 325
    .line 326
    .line 327
    iget-object v2, v3, Lk2/k;->b:Landroid/util/SparseLongArray;

    .line 328
    .line 329
    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->delete(I)V

    .line 330
    .line 331
    .line 332
    :cond_12
    iget-object v0, v13, Lb1/q;->c:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v0, Lk2/e;

    .line 335
    .line 336
    iget-boolean v2, v0, Lk2/e;->c:Z

    .line 337
    .line 338
    if-eqz v2, :cond_13

    .line 339
    .line 340
    iput-boolean v8, v0, Lk2/e;->c:Z

    .line 341
    .line 342
    goto :goto_c

    .line 343
    :cond_13
    iget-object v0, v0, Lk2/e;->g:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v0, Lk2/m;

    .line 346
    .line 347
    iget-object v0, v0, Lk2/m;->a:Lh1/e;

    .line 348
    .line 349
    invoke-virtual {v0}, Lh1/e;->h()V

    .line 350
    .line 351
    .line 352
    :cond_14
    :goto_c
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    iput-object v0, v1, Lr2/u;->z0:Landroid/view/MotionEvent;

    .line 357
    .line 358
    invoke-virtual/range {p0 .. p1}, Lr2/u;->M(Landroid/view/MotionEvent;)I

    .line 359
    .line 360
    .line 361
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 362
    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 363
    .line 364
    .line 365
    iput-boolean v7, v1, Lr2/u;->W:Z

    .line 366
    .line 367
    return v0

    .line 368
    :catchall_2
    move-exception v0

    .line 369
    goto :goto_e

    .line 370
    :goto_d
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 371
    .line 372
    .line 373
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 374
    :goto_e
    iput-boolean v7, v1, Lr2/u;->W:Z

    .line 375
    .line 376
    throw v0
.end method

.method public final requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lw1/j;

    .line 14
    .line 15
    iget-object v0, v0, Lw1/j;->c:Lw1/s;

    .line 16
    .line 17
    invoke-virtual {v0}, Lw1/s;->C0()Lw1/r;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lw1/r;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_1
    invoke-static {p1}, Lw1/f;->D(I)Lw1/d;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget p1, p1, Lw1/d;->a:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 p1, 0x7

    .line 42
    :goto_0
    invoke-virtual {p0}, Lr2/u;->getFocusOwner()Lw1/i;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz p2, :cond_3

    .line 47
    .line 48
    invoke-static {p2}, Ly1/h0;->E(Landroid/graphics/Rect;)Lx1/c;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/4 p2, 0x0

    .line 54
    :goto_1
    new-instance v1, Lr2/r;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-direct {v1, p1, v2}, Lr2/r;-><init>(II)V

    .line 58
    .line 59
    .line 60
    check-cast v0, Lw1/j;

    .line 61
    .line 62
    invoke-virtual {v0, p1, p2, v1}, Lw1/j;->e(ILx1/c;Lf9/k;)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-static {p1, p2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1
.end method

.method public final s(Lq2/h0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lr2/u;->P:Lq2/w0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lq2/w0;->p(Lq2/h0;Z)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lq2/h0;->z()Lh1/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p1, Lh1/e;->a:[Ljava/lang/Object;

    .line 12
    .line 13
    iget p1, p1, Lh1/e;->c:I

    .line 14
    .line 15
    :goto_0
    if-ge v1, p1, :cond_0

    .line 16
    .line 17
    aget-object v2, v0, v1

    .line 18
    .line 19
    check-cast v2, Lq2/h0;

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lr2/u;->s(Lq2/h0;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public setAccessibilityEventBatchIntervalMillis(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/u;->s:Lr2/b0;

    .line 2
    .line 3
    iput-wide p1, v0, Lr2/b0;->h:J

    .line 4
    .line 5
    return-void
.end method

.method public final setConfigurationChangeObserver(Lf9/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf9/k;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lr2/u;->D:Lf9/k;

    .line 2
    .line 3
    return-void
.end method

.method public final setContentCaptureManager$ui_release(Lt1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr2/u;->t:Lt1/c;

    .line 2
    .line 3
    return-void
.end method

.method public setCoroutineContext(Lw8/h;)V
    .locals 10

    .line 1
    iput-object p1, p0, Lr2/u;->h:Lw8/h;

    .line 2
    .line 3
    invoke-virtual {p0}, Lr2/u;->getRoot()Lq2/h0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lq2/h0;->E:Lq2/d1;

    .line 8
    .line 9
    iget-object p1, p1, Lq2/d1;->f:Lr1/o;

    .line 10
    .line 11
    instance-of v0, p1, Lk2/n0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    check-cast v0, Lk2/n0;

    .line 17
    .line 18
    invoke-virtual {v0}, Lk2/n0;->C0()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p1, Lr1/o;->a:Lr1/o;

    .line 22
    .line 23
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string v0, "visitSubtreeIf called on an unattached node"

    .line 28
    .line 29
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    new-instance v0, Lh1/e;

    .line 33
    .line 34
    const/16 v1, 0x10

    .line 35
    .line 36
    new-array v2, v1, [Lr1/o;

    .line 37
    .line 38
    invoke-direct {v0, v2}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Lr1/o;->a:Lr1/o;

    .line 42
    .line 43
    iget-object v2, p1, Lr1/o;->f:Lr1/o;

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    invoke-static {v0, p1}, Lq2/f;->b(Lh1/e;Lr1/o;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v0, v2}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget p1, v0, Lh1/e;->c:I

    .line 55
    .line 56
    if-eqz p1, :cond_c

    .line 57
    .line 58
    add-int/lit8 p1, p1, -0x1

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lh1/e;->l(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lr1/o;

    .line 65
    .line 66
    iget v2, p1, Lr1/o;->d:I

    .line 67
    .line 68
    and-int/2addr v2, v1

    .line 69
    if-eqz v2, :cond_b

    .line 70
    .line 71
    move-object v2, p1

    .line 72
    :goto_1
    if-eqz v2, :cond_b

    .line 73
    .line 74
    iget v3, v2, Lr1/o;->c:I

    .line 75
    .line 76
    and-int/2addr v3, v1

    .line 77
    if-eqz v3, :cond_a

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    move-object v4, v2

    .line 81
    move-object v5, v3

    .line 82
    :goto_2
    if-eqz v4, :cond_a

    .line 83
    .line 84
    instance-of v6, v4, Lq2/v1;

    .line 85
    .line 86
    if-eqz v6, :cond_3

    .line 87
    .line 88
    check-cast v4, Lq2/v1;

    .line 89
    .line 90
    instance-of v6, v4, Lk2/n0;

    .line 91
    .line 92
    if-eqz v6, :cond_9

    .line 93
    .line 94
    check-cast v4, Lk2/n0;

    .line 95
    .line 96
    invoke-virtual {v4}, Lk2/n0;->C0()V

    .line 97
    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_3
    iget v6, v4, Lr1/o;->c:I

    .line 101
    .line 102
    and-int/2addr v6, v1

    .line 103
    if-eqz v6, :cond_9

    .line 104
    .line 105
    instance-of v6, v4, Lq2/m;

    .line 106
    .line 107
    if-eqz v6, :cond_9

    .line 108
    .line 109
    move-object v6, v4

    .line 110
    check-cast v6, Lq2/m;

    .line 111
    .line 112
    iget-object v6, v6, Lq2/m;->p:Lr1/o;

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    :goto_3
    const/4 v8, 0x1

    .line 116
    if-eqz v6, :cond_8

    .line 117
    .line 118
    iget v9, v6, Lr1/o;->c:I

    .line 119
    .line 120
    and-int/2addr v9, v1

    .line 121
    if-eqz v9, :cond_7

    .line 122
    .line 123
    add-int/lit8 v7, v7, 0x1

    .line 124
    .line 125
    if-ne v7, v8, :cond_4

    .line 126
    .line 127
    move-object v4, v6

    .line 128
    goto :goto_4

    .line 129
    :cond_4
    if-nez v5, :cond_5

    .line 130
    .line 131
    new-instance v5, Lh1/e;

    .line 132
    .line 133
    new-array v8, v1, [Lr1/o;

    .line 134
    .line 135
    invoke-direct {v5, v8}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_5
    if-eqz v4, :cond_6

    .line 139
    .line 140
    invoke-virtual {v5, v4}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    move-object v4, v3

    .line 144
    :cond_6
    invoke-virtual {v5, v6}, Lh1/e;->b(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_7
    :goto_4
    iget-object v6, v6, Lr1/o;->f:Lr1/o;

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_8
    if-ne v7, v8, :cond_9

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_9
    :goto_5
    invoke-static {v5}, Lq2/f;->f(Lh1/e;)Lr1/o;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    goto :goto_2

    .line 158
    :cond_a
    iget-object v2, v2, Lr1/o;->f:Lr1/o;

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_b
    invoke-static {v0, p1}, Lq2/f;->b(Lh1/e;Lr1/o;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_c
    return-void
.end method

.method public final setLastMatrixRecalculationAnimationTime$ui_release(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lr2/u;->V:J

    .line 2
    .line 3
    return-void
.end method

.method public final setOnViewTreeOwnersAvailable(Lf9/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf9/k;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr2/u;->getViewTreeOwners()Lr2/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iput-object p1, p0, Lr2/u;->j0:Lf9/k;

    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public setShowLayoutBounds(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lr2/u;->K:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUncaughtExceptionHandler(Lq2/w1;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lr2/u;->P:Lq2/w0;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setUncaughtExceptionHandler$ui_release(Lq2/w1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final u(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x0

    .line 10
    cmpg-float v2, v1, v0

    .line 11
    .line 12
    if-gtz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    cmpg-float v0, v0, v2

    .line 20
    .line 21
    if-gtz v0, :cond_0

    .line 22
    .line 23
    cmpg-float v0, v1, p1

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-float v0, v0

    .line 32
    cmpg-float p1, p1, v0

    .line 33
    .line 34
    if-gtz p1, :cond_0

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    return p1
.end method

.method public final v(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lr2/u;->z0:Landroid/view/MotionEvent;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ne v2, v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    cmpg-float v2, v2, v3

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    cmpg-float p1, p1, v0

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    return p1

    .line 49
    :cond_1
    :goto_0
    return v1
.end method

.method public final w([F)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lr2/u;->G()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lr2/u;->T:[F

    .line 5
    .line 6
    invoke-static {p1, v0}, Ly1/a0;->e([F[F)V

    .line 7
    .line 8
    .line 9
    iget-wide v0, p0, Lr2/u;->f0:J

    .line 10
    .line 11
    const/16 v2, 0x20

    .line 12
    .line 13
    shr-long/2addr v0, v2

    .line 14
    long-to-int v1, v0

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-wide v1, p0, Lr2/u;->f0:J

    .line 20
    .line 21
    const-wide v3, 0xffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v1, v3

    .line 27
    long-to-int v2, v1

    .line 28
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v2, p0, Lr2/u;->S:[F

    .line 33
    .line 34
    invoke-static {v2}, Ly1/a0;->d([F)V

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v0, v1}, Ly1/a0;->f([FFF)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v2}, Lr2/j0;->t([F[F)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final x(J)J
    .locals 7

    .line 1
    invoke-virtual {p0}, Lr2/u;->G()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lr2/u;->T:[F

    .line 5
    .line 6
    invoke-static {p1, p2, v0}, Ly1/a0;->b(J[F)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    const/16 v0, 0x20

    .line 11
    .line 12
    shr-long v1, p1, v0

    .line 13
    .line 14
    long-to-int v2, v1

    .line 15
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-wide v2, p0, Lr2/u;->f0:J

    .line 20
    .line 21
    shr-long/2addr v2, v0

    .line 22
    long-to-int v3, v2

    .line 23
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-float/2addr v2, v1

    .line 28
    const-wide v3, 0xffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr p1, v3

    .line 34
    long-to-int p2, p1

    .line 35
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget-wide v5, p0, Lr2/u;->f0:J

    .line 40
    .line 41
    and-long/2addr v5, v3

    .line 42
    long-to-int p2, v5

    .line 43
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    add-float/2addr p2, p1

    .line 48
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    int-to-long v1, p1

    .line 53
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    int-to-long p1, p1

    .line 58
    shl-long v0, v1, v0

    .line 59
    .line 60
    and-long/2addr p1, v3

    .line 61
    or-long/2addr p1, v0

    .line 62
    return-wide p1
.end method

.method public final y(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr2/u;->P:Lq2/w0;

    .line 2
    .line 3
    iget-object v1, v0, Lq2/w0;->b:La2/b;

    .line 4
    .line 5
    invoke-virtual {v1}, La2/b;->M()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object v1, v0, Lq2/w0;->e:Lu0/j;

    .line 12
    .line 13
    iget-object v1, v1, Lu0/j;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lh1/e;

    .line 16
    .line 17
    iget v1, v1, Lh1/e;->c:I

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    :goto_0
    const-string v1, "AndroidOwner:measureAndLayout"

    .line 24
    .line 25
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    :try_start_0
    iget-object p1, p0, Lr2/u;->I0:Lr2/s;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    :goto_1
    invoke-virtual {v0, p1}, Lq2/w0;->j(Lr2/s;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 43
    .line 44
    .line 45
    :cond_3
    const/4 p1, 0x0

    .line 46
    invoke-virtual {v0, p1}, Lq2/w0;->a(Z)V

    .line 47
    .line 48
    .line 49
    iget-boolean v0, p0, Lr2/u;->A:Z

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 58
    .line 59
    .line 60
    iput-boolean p1, p0, Lr2/u;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public final z(Lq2/h0;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr2/u;->P:Lq2/w0;

    .line 2
    .line 3
    const-string v1, "AndroidOwner:measureAndLayout"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lq2/w0;->k(Lq2/h0;J)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Lq2/w0;->b:La2/b;

    .line 12
    .line 13
    invoke-virtual {p1}, La2/b;->M()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {v0, p1}, Lq2/w0;->a(Z)V

    .line 21
    .line 22
    .line 23
    iget-boolean p2, p0, Lr2/u;->A:Z

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 32
    .line 33
    .line 34
    iput-boolean p1, p0, Lr2/u;->A:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lr2/u;->getRectManager()Lz2/a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lz2/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 51
    .line 52
    .line 53
    throw p1
.end method
