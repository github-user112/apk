.class public final Ld0/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo2/m0;


# static fields
.field public static final b:Ld0/l;

.field public static final c:Ld0/l;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld0/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ld0/l;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ld0/l;->b:Ld0/l;

    .line 8
    .line 9
    new-instance v0, Ld0/l;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Ld0/l;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Ld0/l;->c:Ld0/l;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ld0/l;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic a(Lo2/r;Ljava/util/List;I)I
    .locals 1

    .line 1
    iget v0, p0, Ld0/l;->a:I

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, La2/f;->j(Lo2/m0;Lo2/r;Ljava/util/List;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final c(Lo2/o0;Ljava/util/List;J)Lo2/n0;
    .locals 2

    .line 1
    iget p2, p0, Ld0/l;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p3, p4}, Ln3/a;->f(J)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-static {p3, p4}, Ln3/a;->h(J)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, 0x0

    .line 19
    :goto_0
    invoke-static {p3, p4}, Ln3/a;->e(J)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-static {p3, p4}, Ln3/a;->g(J)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :cond_1
    new-instance p3, Lv/x0;

    .line 30
    .line 31
    const/16 p4, 0x15

    .line 32
    .line 33
    invoke-direct {p3, p4}, Lv/x0;-><init>(I)V

    .line 34
    .line 35
    .line 36
    sget-object p4, Ls8/x;->a:Ls8/x;

    .line 37
    .line 38
    invoke-interface {p1, p2, v0, p4, p3}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :pswitch_0
    invoke-static {p3, p4}, Ln3/a;->j(J)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-static {p3, p4}, Ln3/a;->i(J)I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    new-instance p4, Lv/x0;

    .line 52
    .line 53
    const/16 v0, 0x15

    .line 54
    .line 55
    invoke-direct {p4, v0}, Lv/x0;-><init>(I)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Ls8/x;->a:Ls8/x;

    .line 59
    .line 60
    invoke-interface {p1, p2, p3, v0, p4}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic f(Lo2/r;Ljava/util/List;I)I
    .locals 1

    .line 1
    iget v0, p0, Ld0/l;->a:I

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, La2/f;->e(Lo2/m0;Lo2/r;Ljava/util/List;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final synthetic h(Lo2/r;Ljava/util/List;I)I
    .locals 1

    .line 1
    iget v0, p0, Ld0/l;->a:I

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, La2/f;->c(Lo2/m0;Lo2/r;Ljava/util/List;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final synthetic j(Lo2/r;Ljava/util/List;I)I
    .locals 1

    .line 1
    iget v0, p0, Ld0/l;->a:I

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, La2/f;->h(Lo2/m0;Lo2/r;Ljava/util/List;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
