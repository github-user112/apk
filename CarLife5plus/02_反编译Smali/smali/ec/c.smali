.class public abstract Lec/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:[Lw8/c;

.field public static final b:Lfc/s;

.field public static final c:Lfc/s;

.field public static final d:Lfc/s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lw8/c;

    .line 3
    .line 4
    sput-object v0, Lec/c;->a:[Lw8/c;

    .line 5
    .line 6
    new-instance v0, Lfc/s;

    .line 7
    .line 8
    const-string v1, "NULL"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v2, v1}, Lfc/s;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lec/c;->b:Lfc/s;

    .line 15
    .line 16
    new-instance v0, Lfc/s;

    .line 17
    .line 18
    const-string v1, "UNINITIALIZED"

    .line 19
    .line 20
    invoke-direct {v0, v2, v1}, Lfc/s;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lec/c;->c:Lfc/s;

    .line 24
    .line 25
    new-instance v0, Lfc/s;

    .line 26
    .line 27
    const-string v1, "DONE"

    .line 28
    .line 29
    invoke-direct {v0, v2, v1}, Lfc/s;-><init>(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lec/c;->d:Lfc/s;

    .line 33
    .line 34
    return-void
.end method

.method public static final a(Lw8/h;Ljava/lang/Object;Ljava/lang/Object;Lf9/n;Lw8/c;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p0, p2}, Lfc/a;->l(Lw8/h;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :try_start_0
    new-instance v0, Lec/y;

    .line 6
    .line 7
    invoke-direct {v0, p4, p0}, Lec/y;-><init>(Lw8/c;Lw8/h;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p3}, Lp9/v;->y(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-static {p3, p1, v0}, Lp9/x1;->R(Lf9/n;Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x2

    .line 24
    invoke-static {v1, p3}, Lg9/b0;->d(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p3, p1, v0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :goto_0
    invoke-static {p0, p2}, Lfc/a;->g(Lw8/h;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lx8/a;->a:Lx8/a;

    .line 35
    .line 36
    if-ne p1, p0, :cond_1

    .line 37
    .line 38
    const-string p0, "frame"

    .line 39
    .line 40
    invoke-static {p4, p0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object p1

    .line 44
    :goto_1
    invoke-static {p0, p2}, Lfc/a;->g(Lw8/h;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method
