.class public final Lv0/f;
.super Lq2/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/x;
.implements Lq2/o;
.implements Lq2/p;


# instance fields
.field public q:Lv0/h;

.field public final r:Lv0/n;


# direct methods
.method public constructor <init>(Lb3/g;Lb3/o0;Lf3/d;Lf9/k;IZIILv0/h;Ly1/r;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lq2/m;-><init>()V

    .line 2
    .line 3
    .line 4
    move-object/from16 v9, p9

    .line 5
    .line 6
    iput-object v9, p0, Lv0/f;->q:Lv0/h;

    .line 7
    .line 8
    new-instance v0, Lv0/n;

    .line 9
    .line 10
    move-object v1, p1

    .line 11
    move-object v2, p2

    .line 12
    move-object v3, p3

    .line 13
    move-object v4, p4

    .line 14
    move/from16 v5, p5

    .line 15
    .line 16
    move/from16 v6, p6

    .line 17
    .line 18
    move/from16 v7, p7

    .line 19
    .line 20
    move/from16 v8, p8

    .line 21
    .line 22
    move-object/from16 v10, p10

    .line 23
    .line 24
    invoke-direct/range {v0 .. v10}, Lv0/n;-><init>(Lb3/g;Lb3/o0;Lf3/d;Lf9/k;IZIILv0/h;Ly1/r;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lq2/m;->A0(Lq2/l;)Lq2/l;

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lv0/f;->r:Lv0/n;

    .line 31
    .line 32
    iget-object p1, p0, Lv0/f;->q:Lv0/h;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    const-string p1, "Do not use SelectionCapableStaticTextModifier unless selectionController != null"

    .line 38
    .line 39
    invoke-static {p1}, Lc0/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 40
    .line 41
    .line 42
    new-instance p1, Lac/p;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p1
.end method


# virtual methods
.method public final synthetic F()V
    .locals 0

    .line 1
    return-void
.end method

.method public final V(Lq2/h1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv0/f;->q:Lv0/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lv0/h;->d:Lv0/k;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    invoke-static {v1, p1, v2, v3}, Lv0/k;->a(Lv0/k;Lq2/h1;Lb3/l0;I)Lv0/k;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, v0, Lv0/h;->d:Lv0/k;

    .line 14
    .line 15
    iget-object p1, v0, Lv0/h;->b:Lw0/c1;

    .line 16
    .line 17
    iget-wide v0, v0, Lv0/h;->a:J

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput-boolean v2, p1, Lw0/c1;->a:Z

    .line 21
    .line 22
    iget-object p1, p1, Lw0/c1;->e:Lw0/e0;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lw0/e0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final b(Lo2/o0;Lo2/l0;J)Lo2/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/f;->r:Lv0/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lv0/n;->b(Lo2/o0;Lo2/l0;J)Lo2/n0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final c(Lq2/p0;Lo2/l0;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/f;->r:Lv0/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lv0/n;->c(Lq2/p0;Lo2/l0;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final d(Lq2/p0;Lo2/l0;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/f;->r:Lv0/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lv0/n;->d(Lq2/p0;Lo2/l0;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final e(Lq2/p0;Lo2/l0;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/f;->r:Lv0/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lv0/n;->e(Lq2/p0;Lo2/l0;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final f(Lq2/p0;Lo2/l0;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/f;->r:Lv0/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lv0/n;->f(Lq2/p0;Lo2/l0;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final n0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final v(Lq2/j0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/f;->r:Lv0/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lv0/n;->v(Lq2/j0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
