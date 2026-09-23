.class public final Lq2/m1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/r1;


# instance fields
.field public final a:Lq2/l1;


# direct methods
.method public constructor <init>(Lq2/l1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq2/m1;->a:Lq2/l1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/m1;->a:Lq2/l1;

    .line 2
    .line 3
    check-cast v0, Lr1/o;

    .line 4
    .line 5
    iget-object v0, v0, Lr1/o;->a:Lr1/o;

    .line 6
    .line 7
    iget-boolean v0, v0, Lr1/o;->n:Z

    .line 8
    .line 9
    return v0
.end method
