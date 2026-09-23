.class public final Lc1/y1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lf9/k;

.field public final synthetic c:Lr1/p;

.field public final synthetic d:Z

.field public final synthetic e:Lf9/a;

.field public final synthetic f:Lc1/m1;

.field public final synthetic g:Lb0/k;

.field public final synthetic h:I

.field public final synthetic i:Ln1/c;

.field public final synthetic j:Ln1/c;

.field public final synthetic k:Ll9/a;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public constructor <init>(FLf9/k;Lr1/p;ZLf9/a;Lc1/m1;Lb0/k;ILn1/c;Ln1/c;Ll9/a;II)V
    .locals 0

    .line 1
    iput p1, p0, Lc1/y1;->a:F

    .line 2
    .line 3
    iput-object p2, p0, Lc1/y1;->b:Lf9/k;

    .line 4
    .line 5
    iput-object p3, p0, Lc1/y1;->c:Lr1/p;

    .line 6
    .line 7
    iput-boolean p4, p0, Lc1/y1;->d:Z

    .line 8
    .line 9
    iput-object p5, p0, Lc1/y1;->e:Lf9/a;

    .line 10
    .line 11
    iput-object p6, p0, Lc1/y1;->f:Lc1/m1;

    .line 12
    .line 13
    iput-object p7, p0, Lc1/y1;->g:Lb0/k;

    .line 14
    .line 15
    iput p8, p0, Lc1/y1;->h:I

    .line 16
    .line 17
    iput-object p9, p0, Lc1/y1;->i:Ln1/c;

    .line 18
    .line 19
    iput-object p10, p0, Lc1/y1;->j:Ln1/c;

    .line 20
    .line 21
    iput-object p11, p0, Lc1/y1;->k:Ll9/a;

    .line 22
    .line 23
    iput p12, p0, Lc1/y1;->l:I

    .line 24
    .line 25
    iput p13, p0, Lc1/y1;->m:I

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
    iget p1, p0, Lc1/y1;->l:I

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
    iget p1, p0, Lc1/y1;->m:I

    .line 20
    .line 21
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 22
    .line 23
    .line 24
    move-result v13

    .line 25
    iget v0, p0, Lc1/y1;->a:F

    .line 26
    .line 27
    iget-object v1, p0, Lc1/y1;->b:Lf9/k;

    .line 28
    .line 29
    iget-object v2, p0, Lc1/y1;->c:Lr1/p;

    .line 30
    .line 31
    iget-boolean v3, p0, Lc1/y1;->d:Z

    .line 32
    .line 33
    iget-object v4, p0, Lc1/y1;->e:Lf9/a;

    .line 34
    .line 35
    iget-object v5, p0, Lc1/y1;->f:Lc1/m1;

    .line 36
    .line 37
    iget-object v6, p0, Lc1/y1;->g:Lb0/k;

    .line 38
    .line 39
    iget v7, p0, Lc1/y1;->h:I

    .line 40
    .line 41
    iget-object v8, p0, Lc1/y1;->i:Ln1/c;

    .line 42
    .line 43
    iget-object v9, p0, Lc1/y1;->j:Ln1/c;

    .line 44
    .line 45
    iget-object v10, p0, Lc1/y1;->k:Ll9/a;

    .line 46
    .line 47
    invoke-static/range {v0 .. v13}, Lc1/g2;->a(FLf9/k;Lr1/p;ZLf9/a;Lc1/m1;Lb0/k;ILn1/c;Ln1/c;Ll9/a;Lf1/s;II)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 51
    .line 52
    return-object p1
.end method
