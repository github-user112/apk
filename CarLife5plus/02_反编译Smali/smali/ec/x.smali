.class public final Lec/x;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ldc/e;


# instance fields
.field public final a:Lcc/x;


# direct methods
.method public constructor <init>(Lcc/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lec/x;->a:Lcc/x;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lec/x;->a:Lcc/x;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcc/x;->s(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

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
