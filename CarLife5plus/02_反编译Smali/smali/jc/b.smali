.class public final Ljc/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lac/g;
.implements Lac/u1;


# instance fields
.field public final a:Lac/i;

.field public final synthetic b:Ljc/c;


# direct methods
.method public constructor <init>(Ljc/c;Lac/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljc/b;->b:Ljc/c;

    .line 5
    .line 6
    iput-object p2, p0, Ljc/b;->a:Lac/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljc/b;->a:Lac/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lac/i;->A(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final a(Lfc/q;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljc/b;->a:Lac/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lac/i;->a(Lfc/q;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljc/b;->a:Lac/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lac/i;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n(Ljava/lang/Object;Lf9/o;)Lfc/s;
    .locals 2

    .line 1
    check-cast p1, Lr8/z;

    .line 2
    .line 3
    new-instance p2, Lac/h;

    .line 4
    .line 5
    iget-object v0, p0, Ljc/b;->b:Ljc/c;

    .line 6
    .line 7
    invoke-direct {p2, v0, p0}, Lac/h;-><init>(Ljc/c;Ljc/b;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Ljc/b;->a:Lac/i;

    .line 11
    .line 12
    invoke-virtual {v1, p1, p2}, Lac/i;->n(Ljava/lang/Object;Lf9/o;)Lfc/s;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    sget-object p2, Ljc/c;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object p1
.end method

.method public final r()Lw8/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ljc/b;->a:Lac/i;

    .line 2
    .line 3
    iget-object v0, v0, Lac/i;->e:Lw8/h;

    .line 4
    .line 5
    return-object v0
.end method

.method public final u(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ljc/b;->a:Lac/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lac/i;->u(Ljava/lang/Throwable;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
