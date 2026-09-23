.class public final Lhb/v;
.super Lhb/w;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final d:Lua/c;


# direct methods
.method public constructor <init>(Lua/c;Lra/f;Lra/g;Lv9/m0;)V
    .locals 1

    .line 1
    const-string v0, "fqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2, p3, p4}, Lhb/w;-><init>(Lra/f;Lra/g;Lv9/m0;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lhb/v;->d:Lua/c;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()Lua/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/v;->d:Lua/c;

    .line 2
    .line 3
    return-object v0
.end method
