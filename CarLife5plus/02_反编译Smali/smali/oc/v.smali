.class public final Loc/v;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Llc/e;


# static fields
.field public static final b:Loc/v;

.field public static final c:Ljava/lang/String;


# instance fields
.field public final synthetic a:Lnc/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Loc/v;

    .line 2
    .line 3
    invoke-direct {v0}, Loc/v;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Loc/v;->b:Loc/v;

    .line 7
    .line 8
    const-string v0, "kotlinx.serialization.json.JsonObject"

    .line 9
    .line 10
    sput-object v0, Loc/v;->c:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnc/x0;->a:Lnc/x0;

    .line 5
    .line 6
    sget-object v0, Loc/l;->a:Loc/l;

    .line 7
    .line 8
    sget-object v0, Lnc/x0;->a:Lnc/x0;

    .line 9
    .line 10
    sget-object v0, Loc/l;->a:Loc/l;

    .line 11
    .line 12
    new-instance v0, Lnc/d0;

    .line 13
    .line 14
    sget-object v1, Lnc/x0;->b:Lnc/s0;

    .line 15
    .line 16
    sget-object v2, Loc/l;->b:Llc/f;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lnc/d0;-><init>(Llc/e;Llc/e;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Loc/v;->a:Lnc/d0;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final f()La/a;
    .locals 1

    .line 1
    iget-object v0, p0, Loc/v;->a:Lnc/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Llc/i;->f:Llc/i;

    .line 7
    .line 8
    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Loc/v;->a:Lnc/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Loc/v;->a:Lnc/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 7
    .line 8
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Loc/v;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Loc/v;->a:Lnc/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Loc/v;->a:Lnc/d0;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lnc/d0;->j(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final k()I
    .locals 1

    .line 1
    iget-object v0, p0, Loc/v;->a:Lnc/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    return v0
.end method

.method public final l(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Loc/v;->a:Lnc/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final m(I)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Loc/v;->a:Lnc/d0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lnc/d0;->m(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 7
    .line 8
    return-object p1
.end method

.method public final n(I)Llc/e;
    .locals 1

    .line 1
    iget-object v0, p0, Loc/v;->a:Lnc/d0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lnc/d0;->n(I)Llc/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final o(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Loc/v;->a:Lnc/d0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lnc/d0;->o(I)Z

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method
