.class public final Lx/z;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lx/r0;


# static fields
.field public static final a:Lx/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx/z;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx/z;->a:Lx/z;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lb0/k;)Lq2/l;
    .locals 1

    .line 1
    new-instance v0, Lx/y;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lx/y;-><init>(Lb0/k;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final b(Lb0/k;Lf1/s;)Lx/o0;
    .locals 0

    .line 1
    const p1, 0x4af582f5    # 8044922.5f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p1}, Lf1/s;->W(I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, p1}, Lf1/s;->p(Z)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lx/a1;->a:Lx/a1;

    .line 12
    .line 13
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method
