.class public abstract Lz7/q1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final Companion:Lz7/w;

.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lz7/w;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz7/q1;->Companion:Lz7/w;

    .line 7
    .line 8
    new-instance v0, Lu7/i;

    .line 9
    .line 10
    const/16 v1, 0xb

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lu7/i;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lr8/i;->a:Lr8/i;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lz7/q1;->a:Ljava/lang/Object;

    .line 22
    .line 23
    return-void
.end method
