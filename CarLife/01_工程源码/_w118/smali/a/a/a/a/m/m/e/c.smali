.class public final La/a/a/a/m/m/e/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/a/a/m/m/d/e$a;


# instance fields
.field public final synthetic a:La/a/a/a/m/m/e/d;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/e/d;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/m/m/e/c;->a:La/a/a/a/m/m/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    const-string v0, "args"

    const-string v1, "tag"

    const-string v2, "CarLife_SDK"

    const-string v3, "address"

    invoke-static {p1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, La/a/a/a/m/m/e/c;->a:La/a/a/a/m/m/e/d;

    .line 1
    iget-object v3, v3, La/a/a/a/m/m/e/d;->c:La/a/a/a/c;

    invoke-interface {v3}, La/a/a/a/c;->w0()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 2
    :try_start_0
    iget-object v3, p0, La/a/a/a/m/m/e/c;->a:La/a/a/a/m/m/e/d;

    .line 3
    invoke-virtual {v3}, La/a/a/a/m/m/e/d;->h()La/a/a/a/m/m/e/b;

    move-result-object v3

    .line 4
    invoke-virtual {v3, p1}, La/a/a/a/m/m/e/b;->d(Ljava/lang/String;)Z

    new-array p1, v5, [Ljava/lang/Object;

    const-string v3, "WifiDirect onConnectionAttached"

    aput-object v3, p1, v4

    .line 5
    invoke-static {v2, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    .line 7
    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v6, v2, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_1
    iget-object p1, p0, La/a/a/a/m/m/e/c;->a:La/a/a/a/m/m/e/d;

    invoke-virtual {p1}, La/a/a/a/a/j/c;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "wifi getByName exception "

    aput-object v7, v6, v4

    aput-object p1, v6, v5

    .line 9
    invoke-static {v2, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object p1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x6

    .line 11
    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method
