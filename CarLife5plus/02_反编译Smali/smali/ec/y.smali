.class public final Lec/y;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lw8/c;
.implements Ly8/d;


# instance fields
.field public final a:Lw8/c;

.field public final b:Lw8/h;


# direct methods
.method public constructor <init>(Lw8/c;Lw8/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lec/y;->a:Lw8/c;

    .line 5
    .line 6
    iput-object p2, p0, Lec/y;->b:Lw8/h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d()Ly8/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lec/y;->a:Lw8/c;

    .line 2
    .line 3
    instance-of v1, v0, Ly8/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ly8/d;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lec/y;->a:Lw8/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lw8/c;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final r()Lw8/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lec/y;->b:Lw8/h;

    .line 2
    .line 3
    return-object v0
.end method
