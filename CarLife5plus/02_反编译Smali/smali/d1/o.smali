.class public final Ld1/o;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lf9/n;

.field public final synthetic c:Lb3/i0;

.field public final synthetic d:Lf9/n;

.field public final synthetic e:Lf9/n;

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Lb0/k;

.field public final synthetic i:Ld0/h0;

.field public final synthetic j:Lc1/q2;

.field public final synthetic k:Ln1/c;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lf9/n;Lb3/i0;Lf9/n;Lf9/n;ZZLb0/k;Ld0/h0;Lc1/q2;Ln1/c;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld1/o;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Ld1/o;->b:Lf9/n;

    .line 4
    .line 5
    iput-object p3, p0, Ld1/o;->c:Lb3/i0;

    .line 6
    .line 7
    iput-object p4, p0, Ld1/o;->d:Lf9/n;

    .line 8
    .line 9
    iput-object p5, p0, Ld1/o;->e:Lf9/n;

    .line 10
    .line 11
    iput-boolean p6, p0, Ld1/o;->f:Z

    .line 12
    .line 13
    iput-boolean p7, p0, Ld1/o;->g:Z

    .line 14
    .line 15
    iput-object p8, p0, Ld1/o;->h:Lb0/k;

    .line 16
    .line 17
    iput-object p9, p0, Ld1/o;->i:Ld0/h0;

    .line 18
    .line 19
    iput-object p10, p0, Ld1/o;->j:Lc1/q2;

    .line 20
    .line 21
    iput-object p11, p0, Ld1/o;->k:Ln1/c;

    .line 22
    .line 23
    iput p12, p0, Ld1/o;->l:I

    .line 24
    .line 25
    iput p13, p0, Ld1/o;->m:I

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
    move-object v11, p1

    .line 2
    check-cast v11, Lf1/s;

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
    iget p1, p0, Ld1/o;->l:I

    .line 12
    .line 13
    or-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 16
    .line 17
    .line 18
    move-result v12

    .line 19
    iget p1, p0, Ld1/o;->m:I

    .line 20
    .line 21
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 22
    .line 23
    .line 24
    move-result v13

    .line 25
    iget-object v0, p0, Ld1/o;->a:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Ld1/o;->b:Lf9/n;

    .line 28
    .line 29
    iget-object v2, p0, Ld1/o;->c:Lb3/i0;

    .line 30
    .line 31
    iget-object v3, p0, Ld1/o;->d:Lf9/n;

    .line 32
    .line 33
    iget-object v4, p0, Ld1/o;->e:Lf9/n;

    .line 34
    .line 35
    iget-boolean v5, p0, Ld1/o;->f:Z

    .line 36
    .line 37
    iget-boolean v6, p0, Ld1/o;->g:Z

    .line 38
    .line 39
    iget-object v7, p0, Ld1/o;->h:Lb0/k;

    .line 40
    .line 41
    iget-object v8, p0, Ld1/o;->i:Ld0/h0;

    .line 42
    .line 43
    iget-object v9, p0, Ld1/o;->j:Lc1/q2;

    .line 44
    .line 45
    iget-object v10, p0, Ld1/o;->k:Ln1/c;

    .line 46
    .line 47
    invoke-static/range {v0 .. v13}, Ld1/r;->a(Ljava/lang/String;Lf9/n;Lb3/i0;Lf9/n;Lf9/n;ZZLb0/k;Ld0/h0;Lc1/q2;Ln1/c;Lf1/s;II)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 51
    .line 52
    return-object p1
.end method
