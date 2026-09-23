.class public final Lc1/u1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lc1/i2;

.field public final synthetic b:Lr1/p;

.field public final synthetic c:Z

.field public final synthetic d:Lc1/m1;

.field public final synthetic e:Lb0/k;

.field public final synthetic f:Ln1/c;

.field public final synthetic g:Ln1/c;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Lc1/i2;Lr1/p;ZLc1/m1;Lb0/k;Ln1/c;Ln1/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/u1;->a:Lc1/i2;

    .line 2
    .line 3
    iput-object p2, p0, Lc1/u1;->b:Lr1/p;

    .line 4
    .line 5
    iput-boolean p3, p0, Lc1/u1;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Lc1/u1;->d:Lc1/m1;

    .line 8
    .line 9
    iput-object p5, p0, Lc1/u1;->e:Lb0/k;

    .line 10
    .line 11
    iput-object p6, p0, Lc1/u1;->f:Ln1/c;

    .line 12
    .line 13
    iput-object p7, p0, Lc1/u1;->g:Ln1/c;

    .line 14
    .line 15
    iput p8, p0, Lc1/u1;->h:I

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lc1/u1;->h:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    iget-object v0, p0, Lc1/u1;->a:Lc1/i2;

    .line 18
    .line 19
    iget-object v1, p0, Lc1/u1;->b:Lr1/p;

    .line 20
    .line 21
    iget-boolean v2, p0, Lc1/u1;->c:Z

    .line 22
    .line 23
    iget-object v3, p0, Lc1/u1;->d:Lc1/m1;

    .line 24
    .line 25
    iget-object v4, p0, Lc1/u1;->e:Lb0/k;

    .line 26
    .line 27
    iget-object v5, p0, Lc1/u1;->f:Ln1/c;

    .line 28
    .line 29
    iget-object v6, p0, Lc1/u1;->g:Ln1/c;

    .line 30
    .line 31
    invoke-static/range {v0 .. v8}, Lc1/g2;->c(Lc1/i2;Lr1/p;ZLc1/m1;Lb0/k;Ln1/c;Ln1/c;Lf1/s;I)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 35
    .line 36
    return-object p1
.end method
