.class public final Ll0/e1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Ll0/s0;

.field public final b:Lw0/r1;

.field public final c:Lg3/w;

.field public final d:Z

.field public final e:Z

.field public final f:Lw0/v1;

.field public final g:Lg3/q;

.field public final h:Ll0/r1;

.field public final i:Ll0/f0;

.field public final j:Ll0/m0;

.field public final k:Lf9/k;

.field public final l:I


# direct methods
.method public constructor <init>(Ll0/s0;Lw0/r1;Lg3/w;ZZLw0/v1;Lg3/q;Ll0/r1;Ll0/f0;Lf9/k;I)V
    .locals 1

    .line 1
    sget-object v0, Ll0/p0;->a:Ll0/m0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ll0/e1;->a:Ll0/s0;

    .line 7
    .line 8
    iput-object p2, p0, Ll0/e1;->b:Lw0/r1;

    .line 9
    .line 10
    iput-object p3, p0, Ll0/e1;->c:Lg3/w;

    .line 11
    .line 12
    iput-boolean p4, p0, Ll0/e1;->d:Z

    .line 13
    .line 14
    iput-boolean p5, p0, Ll0/e1;->e:Z

    .line 15
    .line 16
    iput-object p6, p0, Ll0/e1;->f:Lw0/v1;

    .line 17
    .line 18
    iput-object p7, p0, Ll0/e1;->g:Lg3/q;

    .line 19
    .line 20
    iput-object p8, p0, Ll0/e1;->h:Ll0/r1;

    .line 21
    .line 22
    iput-object p9, p0, Ll0/e1;->i:Ll0/f0;

    .line 23
    .line 24
    iput-object v0, p0, Ll0/e1;->j:Ll0/m0;

    .line 25
    .line 26
    iput-object p10, p0, Ll0/e1;->k:Lf9/k;

    .line 27
    .line 28
    iput p11, p0, Ll0/e1;->l:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ll0/e1;->a:Ll0/s0;

    .line 2
    .line 3
    iget-object v0, v0, Ll0/s0;->d:Landroid/support/v4/media/session/t;

    .line 4
    .line 5
    invoke-static {p1}, Ls8/p;->C0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v1, Lg3/i;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/t;->J0(Ljava/util/List;)Lg3/w;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Ll0/e1;->k:Lf9/k;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-void
.end method
