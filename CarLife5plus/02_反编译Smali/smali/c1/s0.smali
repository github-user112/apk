.class public final Lc1/s0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lc1/t0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lf9/n;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lb3/i0;

.field public final synthetic g:Lb0/k;

.field public final synthetic h:Lf9/n;

.field public final synthetic i:Lf9/n;

.field public final synthetic j:Lc1/q2;

.field public final synthetic k:Ld0/h0;

.field public final synthetic l:Ln1/c;

.field public final synthetic m:I


# direct methods
.method public constructor <init>(Lc1/t0;Ljava/lang/String;Lf9/n;ZZLb3/i0;Lb0/k;Lf9/n;Lf9/n;Lc1/q2;Ld0/h0;Ln1/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/s0;->a:Lc1/t0;

    .line 2
    .line 3
    iput-object p2, p0, Lc1/s0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lc1/s0;->c:Lf9/n;

    .line 6
    .line 7
    iput-boolean p4, p0, Lc1/s0;->d:Z

    .line 8
    .line 9
    iput-boolean p5, p0, Lc1/s0;->e:Z

    .line 10
    .line 11
    iput-object p6, p0, Lc1/s0;->f:Lb3/i0;

    .line 12
    .line 13
    iput-object p7, p0, Lc1/s0;->g:Lb0/k;

    .line 14
    .line 15
    iput-object p8, p0, Lc1/s0;->h:Lf9/n;

    .line 16
    .line 17
    iput-object p9, p0, Lc1/s0;->i:Lf9/n;

    .line 18
    .line 19
    iput-object p10, p0, Lc1/s0;->j:Lc1/q2;

    .line 20
    .line 21
    iput-object p11, p0, Lc1/s0;->k:Ld0/h0;

    .line 22
    .line 23
    iput-object p12, p0, Lc1/s0;->l:Ln1/c;

    .line 24
    .line 25
    iput p13, p0, Lc1/s0;->m:I

    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object v12, p1

    .line 2
    check-cast v12, Lf1/s;

    .line 3
    .line 4
    move-object/from16 p1, p2

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Number;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 9
    .line 10
    .line 11
    iget p1, p0, Lc1/s0;->m:I

    .line 12
    .line 13
    or-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 16
    .line 17
    .line 18
    move-result v13

    .line 19
    iget-object v0, p0, Lc1/s0;->a:Lc1/t0;

    .line 20
    .line 21
    iget-object v1, p0, Lc1/s0;->b:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lc1/s0;->c:Lf9/n;

    .line 24
    .line 25
    iget-boolean v3, p0, Lc1/s0;->d:Z

    .line 26
    .line 27
    iget-boolean v4, p0, Lc1/s0;->e:Z

    .line 28
    .line 29
    iget-object v5, p0, Lc1/s0;->f:Lb3/i0;

    .line 30
    .line 31
    iget-object v6, p0, Lc1/s0;->g:Lb0/k;

    .line 32
    .line 33
    iget-object v7, p0, Lc1/s0;->h:Lf9/n;

    .line 34
    .line 35
    iget-object v8, p0, Lc1/s0;->i:Lf9/n;

    .line 36
    .line 37
    iget-object v9, p0, Lc1/s0;->j:Lc1/q2;

    .line 38
    .line 39
    iget-object v10, p0, Lc1/s0;->k:Ld0/h0;

    .line 40
    .line 41
    iget-object v11, p0, Lc1/s0;->l:Ln1/c;

    .line 42
    .line 43
    invoke-virtual/range {v0 .. v13}, Lc1/t0;->b(Ljava/lang/String;Lf9/n;ZZLb3/i0;Lb0/k;Lf9/n;Lf9/n;Lc1/q2;Ld0/h0;Ln1/c;Lf1/s;I)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 47
    .line 48
    return-object p1
.end method
