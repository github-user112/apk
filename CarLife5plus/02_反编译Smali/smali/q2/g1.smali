.class public final Lq2/g1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:Lq2/h1;

.field public final synthetic b:Lr1/o;

.field public final synthetic c:Lq2/d;

.field public final synthetic d:J

.field public final synthetic e:Lq2/r;

.field public final synthetic f:I

.field public final synthetic g:Z

.field public final synthetic h:F


# direct methods
.method public constructor <init>(Lq2/h1;Lr1/o;Lq2/d;JLq2/r;IZF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq2/g1;->a:Lq2/h1;

    .line 2
    .line 3
    iput-object p2, p0, Lq2/g1;->b:Lr1/o;

    .line 4
    .line 5
    iput-object p3, p0, Lq2/g1;->c:Lq2/d;

    .line 6
    .line 7
    iput-wide p4, p0, Lq2/g1;->d:J

    .line 8
    .line 9
    iput-object p6, p0, Lq2/g1;->e:Lq2/r;

    .line 10
    .line 11
    iput p7, p0, Lq2/g1;->f:I

    .line 12
    .line 13
    iput-boolean p8, p0, Lq2/g1;->g:Z

    .line 14
    .line 15
    iput p9, p0, Lq2/g1;->h:F

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lq2/g1;->c:Lq2/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq2/d;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lq2/g1;->b:Lr1/o;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lq2/f;->e(Lq2/l;I)Lr1/o;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget v10, p0, Lq2/g1;->h:F

    .line 14
    .line 15
    const/4 v11, 0x0

    .line 16
    iget-object v2, p0, Lq2/g1;->a:Lq2/h1;

    .line 17
    .line 18
    iget-object v4, p0, Lq2/g1;->c:Lq2/d;

    .line 19
    .line 20
    iget-wide v5, p0, Lq2/g1;->d:J

    .line 21
    .line 22
    iget-object v7, p0, Lq2/g1;->e:Lq2/r;

    .line 23
    .line 24
    iget v8, p0, Lq2/g1;->f:I

    .line 25
    .line 26
    iget-boolean v9, p0, Lq2/g1;->g:Z

    .line 27
    .line 28
    invoke-virtual/range {v2 .. v11}, Lq2/h1;->T0(Lr1/o;Lq2/d;JLq2/r;IZFZ)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 32
    .line 33
    return-object v0
.end method
