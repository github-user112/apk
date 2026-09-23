.class public final Lp9/a1;
.super Lp9/l1;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm9/q;


# instance fields
.field public final f:Lp9/b1;


# direct methods
.method public constructor <init>(Lp9/b1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp9/l1;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp9/a1;->f:Lp9/b1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lm9/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/a1;->f:Lp9/b1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/a1;->f:Lp9/b1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp9/b1;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final q()Lp9/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/a1;->f:Lp9/b1;

    .line 2
    .line 3
    return-object v0
.end method
