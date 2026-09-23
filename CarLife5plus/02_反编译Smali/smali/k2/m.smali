.class public Lk2/m;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lh1/e;

.field public final b:Ls/d0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lh1/e;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    new-array v1, v1, [Lk2/l;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lh1/e;-><init>([Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lk2/m;->a:Lh1/e;

    .line 14
    .line 15
    new-instance v0, Ls/d0;

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ls/d0;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lk2/m;->b:Ls/d0;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(Ls/q;Lo2/w;Lk2/i;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lk2/m;->a:Lh1/e;

    .line 2
    .line 3
    iget-object v1, v0, Lh1/e;->a:[Ljava/lang/Object;

    .line 4
    .line 5
    iget v0, v0, Lh1/e;->c:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v3, v0, :cond_2

    .line 11
    .line 12
    aget-object v5, v1, v3

    .line 13
    .line 14
    check-cast v5, Lk2/l;

    .line 15
    .line 16
    invoke-virtual {v5, p1, p2, p3, p4}, Lk2/l;->a(Ls/q;Lo2/w;Lk2/i;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-nez v5, :cond_1

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v4, 0x0

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    :goto_1
    const/4 v4, 0x1

    .line 28
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v4
.end method

.method public b(Lk2/i;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lk2/m;->a:Lh1/e;

    .line 2
    .line 3
    iget v0, p1, Lh1/e;->c:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    const/4 v1, -0x1

    .line 8
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p1, Lh1/e;->a:[Ljava/lang/Object;

    .line 11
    .line 12
    aget-object v1, v1, v0

    .line 13
    .line 14
    check-cast v1, Lk2/l;

    .line 15
    .line 16
    iget-object v1, v1, Lk2/l;->d:Lj/g;

    .line 17
    .line 18
    iget v1, v1, Lj/g;->b:I

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lh1/e;->l(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method
