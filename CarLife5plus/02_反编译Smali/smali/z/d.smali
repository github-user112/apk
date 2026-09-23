.class public abstract Lz/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lf1/c0;

.field public static final b:Lz/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx7/h;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lx7/h;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lf1/c0;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lf1/c0;-><init>(Lf9/k;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lz/d;->a:Lf1/c0;

    .line 14
    .line 15
    new-instance v0, Lz/a;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {v0, v1}, Lz/a;-><init>(I)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lz/d;->b:Lz/a;

    .line 22
    .line 23
    return-void
.end method
