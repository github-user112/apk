.class public final Lq0/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ls0/f;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lf9/k;

.field public final c:Lf9/a;

.field public final d:Lx/z0;

.field public final e:Lp1/u;

.field public final f:Lq0/a;

.field public final g:Lq0/a;

.field public h:Landroid/view/ActionMode;

.field public i:Lb8/a;


# direct methods
.method public constructor <init>(Landroid/view/View;Lf9/k;Lf9/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq0/f;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lq0/f;->b:Lf9/k;

    .line 7
    .line 8
    iput-object p3, p0, Lq0/f;->c:Lf9/a;

    .line 9
    .line 10
    new-instance p1, Lx/z0;

    .line 11
    .line 12
    invoke-direct {p1}, Lx/z0;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lq0/f;->d:Lx/z0;

    .line 16
    .line 17
    new-instance p1, Lp1/u;

    .line 18
    .line 19
    new-instance p2, Lq0/a;

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    invoke-direct {p2, p0, p3}, Lq0/a;-><init>(Lq0/f;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, p2}, Lp1/u;-><init>(Lf9/k;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lq0/f;->e:Lp1/u;

    .line 29
    .line 30
    new-instance p1, Lq0/a;

    .line 31
    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-direct {p1, p0, p2}, Lq0/a;-><init>(Lq0/f;I)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lq0/f;->f:Lq0/a;

    .line 37
    .line 38
    new-instance p1, Lq0/a;

    .line 39
    .line 40
    const/4 p2, 0x2

    .line 41
    invoke-direct {p1, p0, p2}, Lq0/a;-><init>(Lq0/f;I)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lq0/f;->g:Lq0/a;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a(Ls0/e;Ly8/i;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ldc/h;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p0, p1, v2, v1}, Ldc/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lq0/f;->d:Lx/z0;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lr2/z2;

    .line 14
    .line 15
    invoke-direct {v1, p1, v0, v2}, Lr2/z2;-><init>(Lx/z0;Lf9/k;Lw8/c;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p2}, Lac/z;->f(Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 23
    .line 24
    if-ne p1, p2, :cond_0

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 28
    .line 29
    return-object p1
.end method
