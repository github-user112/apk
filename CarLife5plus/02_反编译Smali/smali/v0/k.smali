.class public final Lv0/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final c:Lv0/k;


# instance fields
.field public final a:Lo2/w;

.field public final b:Lb3/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lv0/k;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Lv0/k;-><init>(Lb3/l0;Lo2/w;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lv0/k;->c:Lv0/k;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lb3/l0;Lo2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lv0/k;->a:Lo2/w;

    .line 5
    .line 6
    iput-object p1, p0, Lv0/k;->b:Lb3/l0;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lv0/k;Lq2/h1;Lb3/l0;I)Lv0/k;
    .locals 1

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lv0/k;->a:Lo2/w;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lv0/k;->b:Lb3/l0;

    .line 12
    .line 13
    :cond_1
    new-instance p0, Lv0/k;

    .line 14
    .line 15
    invoke-direct {p0, p2, p1}, Lv0/k;-><init>(Lb3/l0;Lo2/w;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method
