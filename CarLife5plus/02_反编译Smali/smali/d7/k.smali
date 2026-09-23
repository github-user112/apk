.class public Ld7/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm5/p;


# instance fields
.field public final a:Lm5/h;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lm5/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ld7/k;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Ld7/k;->a:Lm5/h;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lm5/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld7/k;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lm5/j;)Lm5/b;
    .locals 2

    .line 1
    new-instance v0, Lm5/b;

    .line 2
    .line 3
    new-instance v1, Ls5/e;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ls5/e;-><init>(Lg1/j0;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lm5/b;-><init>(Ls5/e;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
