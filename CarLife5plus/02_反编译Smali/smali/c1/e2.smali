.class public final Lc1/e2;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lc1/i2;


# direct methods
.method public constructor <init>(ZLc1/i2;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc1/e2;->a:Z

    .line 2
    .line 3
    iput-object p2, p0, Lc1/e2;->b:Lc1/i2;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ly2/j;

    .line 2
    .line 3
    iget-boolean v0, p0, Lc1/e2;->a:Z

    .line 4
    .line 5
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Ly2/t;->a:[Lm9/u;

    .line 10
    .line 11
    sget-object v0, Ly2/r;->i:Ly2/u;

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v0, Lc1/z1;

    .line 17
    .line 18
    iget-object v2, p0, Lc1/e2;->b:Lc1/i2;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v0, v2, v3}, Lc1/z1;-><init>(Lc1/i2;I)V

    .line 22
    .line 23
    .line 24
    sget-object v2, Ly2/t;->a:[Lm9/u;

    .line 25
    .line 26
    sget-object v2, Ly2/i;->h:Ly2/u;

    .line 27
    .line 28
    new-instance v3, Ly2/a;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-direct {v3, v4, v0}, Ly2/a;-><init>(Ljava/lang/String;Lr8/e;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2, v3}, Ly2/j;->l(Ly2/u;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method
