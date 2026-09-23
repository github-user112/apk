.class public final Ll0/y0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lb3/g;

.field public final b:Lb3/o0;

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:I

.field public final g:Ln3/c;

.field public final h:Lf3/d;

.field public final i:Ljava/util/List;

.field public j:Lb3/q;

.field public k:Ln3/m;


# direct methods
.method public constructor <init>(Lb3/g;Lb3/o0;ZLn3/c;Lf3/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll0/y0;->a:Lb3/g;

    .line 5
    .line 6
    iput-object p2, p0, Ll0/y0;->b:Lb3/o0;

    .line 7
    .line 8
    const p1, 0x7fffffff

    .line 9
    .line 10
    .line 11
    iput p1, p0, Ll0/y0;->c:I

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput p1, p0, Ll0/y0;->d:I

    .line 15
    .line 16
    iput-boolean p3, p0, Ll0/y0;->e:Z

    .line 17
    .line 18
    iput p1, p0, Ll0/y0;->f:I

    .line 19
    .line 20
    iput-object p4, p0, Ll0/y0;->g:Ln3/c;

    .line 21
    .line 22
    iput-object p5, p0, Ll0/y0;->h:Lf3/d;

    .line 23
    .line 24
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 25
    .line 26
    iput-object p1, p0, Ll0/y0;->i:Ljava/util/List;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Ln3/m;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ll0/y0;->j:Lb3/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Ll0/y0;->k:Ln3/m;

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lb3/q;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Ll0/y0;->k:Ln3/m;

    .line 16
    .line 17
    iget-object v0, p0, Ll0/y0;->b:Lb3/o0;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lb3/d0;->h(Lb3/o0;Ln3/m;)Lb3/o0;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v1, Lb3/q;

    .line 24
    .line 25
    iget-object v2, p0, Ll0/y0;->a:Lb3/g;

    .line 26
    .line 27
    iget-object v4, p0, Ll0/y0;->i:Ljava/util/List;

    .line 28
    .line 29
    iget-object v5, p0, Ll0/y0;->g:Ln3/c;

    .line 30
    .line 31
    iget-object v6, p0, Ll0/y0;->h:Lf3/d;

    .line 32
    .line 33
    invoke-direct/range {v1 .. v6}, Lb3/q;-><init>(Lb3/g;Lb3/o0;Ljava/util/List;Ln3/c;Lf3/d;)V

    .line 34
    .line 35
    .line 36
    move-object v0, v1

    .line 37
    :cond_1
    iput-object v0, p0, Ll0/y0;->j:Lb3/q;

    .line 38
    .line 39
    return-void
.end method
