.class public final Lhb/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final c:Ljava/util/Set;


# instance fields
.field public final a:Lhb/i;

.field public final b:Lf1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ls9/o;->c:Lua/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lua/d;->g()Lua/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lua/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Lua/c;->b()Lua/c;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Lua/d;->f()Lua/e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {v1, v2, v0}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lp4/o;->c0(Ljava/lang/Object;)Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lhb/g;->c:Ljava/util/Set;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Lhb/i;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhb/g;->a:Lhb/i;

    .line 5
    .line 6
    iget-object p1, p1, Lhb/i;->a:Lkb/l;

    .line 7
    .line 8
    new-instance v0, Lba/j;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-direct {v0, v1, p0}, Lba/j;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lkb/l;->c(Lf9/k;)Lf1/e;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lhb/g;->b:Lf1/e;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lua/b;Lhb/d;)Lv9/e;
    .locals 1

    .line 1
    const-string v0, "classId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lhb/f;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lhb/f;-><init>(Lua/b;Lhb/d;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lhb/g;->b:Lf1/e;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lf1/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lv9/e;

    .line 18
    .line 19
    return-object p1
.end method
