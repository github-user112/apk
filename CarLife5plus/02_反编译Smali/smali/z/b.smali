.class public final Lz/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic a:Lz/b;

.field public static final b:Lv/g0;

.field public static final c:Lz/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lz/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz/b;->a:Lz/b;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x7

    .line 10
    invoke-static {v1, v0}, Lv/d;->j(ILjava/lang/Object;)Lv/g0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lz/b;->b:Lv/g0;

    .line 15
    .line 16
    new-instance v0, Lz/a;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, v1}, Lz/a;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lz/b;->c:Lz/a;

    .line 23
    .line 24
    return-void
.end method
