.class public final Lh0/n;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lp2/d;
.implements Lq2/x;


# static fields
.field public static final r:Lh0/l;


# instance fields
.field public o:Lh0/o;

.field public p:Lh0/k;

.field public q:Lz/w0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh0/l;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lh0/n;->r:Lh0/l;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final A0(Lh0/j;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x6

    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    :goto_0
    iget-object v0, p0, Lh0/n;->q:Lz/w0;

    .line 10
    .line 11
    sget-object v2, Lz/w0;->b:Lz/w0;

    .line 12
    .line 13
    if-ne v0, v2, :cond_5

    .line 14
    .line 15
    goto :goto_4

    .line 16
    :cond_1
    const/4 v0, 0x3

    .line 17
    if-ne p2, v0, :cond_2

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_2
    const/4 v0, 0x4

    .line 21
    if-ne p2, v0, :cond_3

    .line 22
    .line 23
    :goto_1
    iget-object v0, p0, Lh0/n;->q:Lz/w0;

    .line 24
    .line 25
    sget-object v2, Lz/w0;->a:Lz/w0;

    .line 26
    .line 27
    if-ne v0, v2, :cond_5

    .line 28
    .line 29
    goto :goto_4

    .line 30
    :cond_3
    if-ne p2, v1, :cond_4

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_4
    const/4 v0, 0x2

    .line 34
    if-ne p2, v0, :cond_8

    .line 35
    .line 36
    :cond_5
    :goto_2
    invoke-virtual {p0, p2}, Lh0/n;->B0(I)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_6

    .line 41
    .line 42
    iget p1, p1, Lh0/j;->b:I

    .line 43
    .line 44
    iget-object p2, p0, Lh0/n;->o:Lh0/o;

    .line 45
    .line 46
    invoke-interface {p2}, Lh0/o;->a()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    sub-int/2addr p2, v1

    .line 51
    if-ge p1, p2, :cond_7

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_6
    iget p1, p1, Lh0/j;->a:I

    .line 55
    .line 56
    if-lez p1, :cond_7

    .line 57
    .line 58
    :goto_3
    return v1

    .line 59
    :cond_7
    :goto_4
    const/4 p1, 0x0

    .line 60
    return p1

    .line 61
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string p2, "Lazy list does not support beyond bounds layout for the specified direction"

    .line 64
    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public final B0(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    const/4 v2, 0x2

    .line 7
    if-ne p1, v2, :cond_1

    .line 8
    .line 9
    return v1

    .line 10
    :cond_1
    const/4 v2, 0x5

    .line 11
    if-ne p1, v2, :cond_2

    .line 12
    .line 13
    return v0

    .line 14
    :cond_2
    const/4 v2, 0x6

    .line 15
    if-ne p1, v2, :cond_3

    .line 16
    .line 17
    return v1

    .line 18
    :cond_3
    const/4 v2, 0x3

    .line 19
    if-ne p1, v2, :cond_6

    .line 20
    .line 21
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p1, p1, Lq2/h0;->y:Ln3/m;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_5

    .line 32
    .line 33
    if-ne p1, v1, :cond_4

    .line 34
    .line 35
    return v1

    .line 36
    :cond_4
    new-instance p1, Lac/p;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_5
    return v0

    .line 43
    :cond_6
    const/4 v2, 0x4

    .line 44
    if-ne p1, v2, :cond_9

    .line 45
    .line 46
    invoke-static {p0}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p1, p1, Lq2/h0;->y:Ln3/m;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_8

    .line 57
    .line 58
    if-ne p1, v1, :cond_7

    .line 59
    .line 60
    return v0

    .line 61
    :cond_7
    new-instance p1, Lac/p;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_8
    return v1

    .line 68
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v0, "Lazy list does not support beyond bounds layout for the specified direction"

    .line 71
    .line 72
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method public final L()Li2/c;
    .locals 2

    .line 1
    sget-object v0, Lo2/f;->a:Lp2/f;

    .line 2
    .line 3
    new-instance v1, Lp2/g;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lp2/g;-><init>(Lp2/f;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lp2/g;->f:Lf1/k1;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v1
.end method

.method public final b(Lo2/o0;Lo2/l0;J)Lo2/n0;
    .locals 2

    .line 1
    invoke-interface {p2, p3, p4}, Lo2/l0;->u(J)Lo2/v0;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget p3, p2, Lo2/v0;->a:I

    .line 6
    .line 7
    iget p4, p2, Lo2/v0;->b:I

    .line 8
    .line 9
    new-instance v0, Ld0/i;

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-direct {v0, p2, v1}, Ld0/i;-><init>(Lo2/v0;I)V

    .line 13
    .line 14
    .line 15
    sget-object p2, Ls8/x;->a:Ls8/x;

    .line 16
    .line 17
    invoke-interface {p1, p3, p4, p2, v0}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final synthetic c(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp9/v;->e(Lq2/x;Lo2/r;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic d(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp9/v;->d(Lq2/x;Lo2/r;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic e(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp9/v;->b(Lq2/x;Lo2/r;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic f(Lq2/p0;Lo2/l0;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lp9/v;->c(Lq2/x;Lo2/r;Lo2/l0;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic y(Lp2/f;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, La2/f;->a(Lp2/d;Lp2/f;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
