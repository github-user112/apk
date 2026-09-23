.class public final synthetic Lj8/r;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lj8/k0;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Lf9/k;

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lj8/k0;IZLf9/k;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj8/r;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lj8/r;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lj8/r;->c:Lj8/k0;

    .line 9
    .line 10
    iput p4, p0, Lj8/r;->d:I

    .line 11
    .line 12
    iput-boolean p5, p0, Lj8/r;->e:Z

    .line 13
    .line 14
    iput-object p6, p0, Lj8/r;->f:Lf9/k;

    .line 15
    .line 16
    iput p7, p0, Lj8/r;->g:I

    .line 17
    .line 18
    iput p8, p0, Lj8/r;->h:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lj8/r;->g:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    iget-object v0, p0, Lj8/r;->a:Ljava/util/List;

    .line 18
    .line 19
    iget-object v1, p0, Lj8/r;->b:Ljava/util/List;

    .line 20
    .line 21
    iget-object v2, p0, Lj8/r;->c:Lj8/k0;

    .line 22
    .line 23
    iget v3, p0, Lj8/r;->d:I

    .line 24
    .line 25
    iget-boolean v4, p0, Lj8/r;->e:Z

    .line 26
    .line 27
    iget-object v5, p0, Lj8/r;->f:Lf9/k;

    .line 28
    .line 29
    iget v8, p0, Lj8/r;->h:I

    .line 30
    .line 31
    invoke-static/range {v0 .. v8}, Li9/a;->b(Ljava/util/List;Ljava/util/List;Lj8/k0;IZLf9/k;Lf1/s;II)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 35
    .line 36
    return-object p1
.end method
