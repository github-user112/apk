.class public final Lb0/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Ldc/a0;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcc/a;->b:Lcc/a;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/16 v2, 0x10

    .line 8
    .line 9
    invoke-static {v2, v1, v0}, Ldc/b0;->a(IILcc/a;)Ldc/a0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lb0/k;->a:Ldc/a0;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lb0/j;Lw8/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lb0/k;->a:Ldc/a0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ldc/a0;->a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 8
    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 13
    .line 14
    return-object p1
.end method

.method public final b(Lb0/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb0/k;->a:Ldc/a0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ldc/a0;->o(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
