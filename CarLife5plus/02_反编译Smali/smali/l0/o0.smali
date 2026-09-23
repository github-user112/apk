.class public abstract Ll0/o0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lkb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Ll0/n0;->h:I

    .line 2
    .line 3
    new-instance v0, Ll0/m0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1}, Ll0/m0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lkb/a;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, v2, v0}, Lkb/a;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Ll0/o0;->a:Lkb/a;

    .line 16
    .line 17
    return-void
.end method
