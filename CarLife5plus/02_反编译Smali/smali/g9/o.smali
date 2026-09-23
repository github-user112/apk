.class public final Lg9/o;
.super Lg9/p;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm9/k;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 1
    sget-object v1, Lg9/c;->a:Lg9/c;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lg9/s;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lm9/b;
    .locals 1

    .line 1
    sget-object v0, Lg9/y;->a:Lg9/z;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lg9/z;->e(Lg9/o;)Lm9/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final bridge synthetic b()Lm9/p;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg9/o;->b()Lm9/s;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lm9/s;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lg9/s;->i()Lm9/u;

    move-result-object v0

    check-cast v0, Lm9/k;

    invoke-interface {v0}, Lm9/t;->b()Lm9/s;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c()Lm9/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg9/o;->c()Lm9/j;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lm9/j;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lg9/s;->i()Lm9/u;

    move-result-object v0

    check-cast v0, Lm9/k;

    invoke-interface {v0}, Lm9/k;->c()Lm9/j;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lg9/o;->b()Lm9/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object p1, v1, v2

    .line 10
    .line 11
    check-cast v0, Lp9/t;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lp9/t;->d([Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg9/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
