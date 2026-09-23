.class public final Lu9/b;
.super Ls9/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final f:Lu9/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu9/b;

    .line 2
    .line 3
    new-instance v1, Lkb/l;

    .line 4
    .line 5
    const-string v2, "FallbackBuiltIns"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lkb/l;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ls9/i;-><init>(Lkb/l;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ls9/i;->c()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lu9/b;->f:Lu9/b;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final bridge synthetic q()Lx9/d;
    .locals 1

    .line 1
    sget-object v0, Lx9/a;->c:Lx9/a;

    .line 2
    .line 3
    return-object v0
.end method
