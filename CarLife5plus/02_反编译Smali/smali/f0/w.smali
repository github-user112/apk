.class public abstract Lf0/w;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lf0/m;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v5, Lf0/v;

    .line 2
    .line 3
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lw8/i;->a:Lw8/i;

    .line 7
    .line 8
    invoke-static {v0}, Lac/z;->a(Lw8/h;)Lfc/c;

    .line 9
    .line 10
    .line 11
    move-result-object v8

    .line 12
    invoke-static {}, Lg5/a;->h()Ln3/d;

    .line 13
    .line 14
    .line 15
    move-result-object v9

    .line 16
    const/4 v0, 0x0

    .line 17
    const/16 v1, 0xf

    .line 18
    .line 19
    invoke-static {v0, v0, v1}, Ln3/b;->b(III)J

    .line 20
    .line 21
    .line 22
    move-result-wide v10

    .line 23
    new-instance v0, Lf0/m;

    .line 24
    .line 25
    const/16 v17, 0x0

    .line 26
    .line 27
    const/16 v18, 0x0

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    sget-object v12, Ls8/w;->a:Ls8/w;

    .line 36
    .line 37
    const/4 v13, 0x0

    .line 38
    const/4 v14, 0x0

    .line 39
    const/4 v15, 0x0

    .line 40
    sget-object v16, Lz/w0;->a:Lz/w0;

    .line 41
    .line 42
    invoke-direct/range {v0 .. v18}, Lf0/m;-><init>(Lf0/n;IZFLo2/n0;FZLac/w;Ln3/c;JLjava/util/List;IIILz/w0;II)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lf0/w;->a:Lf0/m;

    .line 46
    .line 47
    return-void
.end method

.method public static final a(Lf1/s;)Lf0/u;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sget-object v2, Lf0/u;->x:Lu0/j;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lf1/s;->d(I)Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    invoke-virtual {p0, v0}, Lf1/s;->d(I)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    or-int/2addr v3, v4

    .line 15
    invoke-virtual {p0}, Lf1/s;->K()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    sget-object v3, Lf1/n;->a:Lf1/w0;

    .line 22
    .line 23
    if-ne v4, v3, :cond_1

    .line 24
    .line 25
    :cond_0
    new-instance v4, Lb3/f0;

    .line 26
    .line 27
    const/4 v3, 0x5

    .line 28
    invoke-direct {v4, v3}, Lb3/f0;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v4}, Lf1/s;->h0(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    check-cast v4, Lf9/a;

    .line 35
    .line 36
    invoke-static {v1, v2, v4, p0, v0}, Lo1/k;->d([Ljava/lang/Object;Lo1/j;Lf9/a;Lf1/s;I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Lf0/u;

    .line 41
    .line 42
    return-object p0
.end method
