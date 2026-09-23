.class public final Ll4/r;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final d:Lib/d;


# instance fields
.field public final a:Ll4/i;

.field public b:I

.field public final c:Ll4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lib/d;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lib/d;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ll4/r;->d:Lib/d;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ll4/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ll4/r;->b:I

    .line 6
    .line 7
    new-instance v0, Ll4/d;

    .line 8
    .line 9
    invoke-direct {v0}, Ll4/d;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Ll4/r;->c:Ll4/d;

    .line 13
    .line 14
    iput-object p1, p0, Ll4/r;->a:Ll4/i;

    .line 15
    .line 16
    return-void
.end method
