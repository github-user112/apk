.class public final synthetic Lj8/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lj8/k0;

.field public final synthetic c:I

.field public final synthetic d:Lf9/o;

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Lf9/k;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj8/c;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lj8/c;->b:Lj8/k0;

    .line 7
    .line 8
    iput p3, p0, Lj8/c;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lj8/c;->d:Lf9/o;

    .line 11
    .line 12
    iput p5, p0, Lj8/c;->e:F

    .line 13
    .line 14
    iput p6, p0, Lj8/c;->f:F

    .line 15
    .line 16
    iput-object p7, p0, Lj8/c;->g:Lf9/k;

    .line 17
    .line 18
    iput p8, p0, Lj8/c;->h:I

    .line 19
    .line 20
    iput p9, p0, Lj8/c;->i:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lj8/c;->h:I

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
    iget-object v0, p0, Lj8/c;->a:Ljava/util/List;

    .line 18
    .line 19
    iget-object v1, p0, Lj8/c;->b:Lj8/k0;

    .line 20
    .line 21
    iget v2, p0, Lj8/c;->c:I

    .line 22
    .line 23
    iget-object v3, p0, Lj8/c;->d:Lf9/o;

    .line 24
    .line 25
    iget v4, p0, Lj8/c;->e:F

    .line 26
    .line 27
    iget v5, p0, Lj8/c;->f:F

    .line 28
    .line 29
    iget-object v6, p0, Lj8/c;->g:Lf9/k;

    .line 30
    .line 31
    iget v9, p0, Lj8/c;->i:I

    .line 32
    .line 33
    invoke-static/range {v0 .. v9}, Lg5/a;->g(Ljava/util/List;Lj8/k0;ILf9/o;FFLf9/k;Lf1/s;II)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 37
    .line 38
    return-object p1
.end method
