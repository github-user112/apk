.class public final Ldc/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ldc/d;


# instance fields
.field public final a:Ldc/d;


# direct methods
.method public constructor <init>(Ldc/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldc/c;->a:Ldc/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final t0(Ldc/e;Lw8/c;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lg9/x;

    .line 2
    .line 3
    invoke-direct {v0}, Lg9/x;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lec/c;->b:Lfc/s;

    .line 7
    .line 8
    iput-object v1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 9
    .line 10
    new-instance v1, Lb0/f;

    .line 11
    .line 12
    invoke-direct {v1, p0, v0, p1}, Lb0/f;-><init>(Ldc/c;Lg9/x;Ldc/e;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Ldc/c;->a:Ldc/d;

    .line 16
    .line 17
    invoke-interface {p1, v1, p2}, Ldc/d;->t0(Ldc/e;Lw8/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 22
    .line 23
    if-ne p1, p2, :cond_0

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 27
    .line 28
    return-object p1
.end method
