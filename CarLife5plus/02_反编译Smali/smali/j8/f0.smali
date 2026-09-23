.class public final synthetic Lj8/f0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lf9/k;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;ZZLf9/k;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj8/f0;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lj8/f0;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lj8/f0;->c:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lj8/f0;->d:Z

    .line 11
    .line 12
    iput-object p5, p0, Lj8/f0;->e:Lf9/k;

    .line 13
    .line 14
    iput p6, p0, Lj8/f0;->f:I

    .line 15
    .line 16
    iput p7, p0, Lj8/f0;->g:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lj8/f0;->f:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    iget-object v0, p0, Lj8/f0;->a:Ljava/util/List;

    .line 18
    .line 19
    iget-object v1, p0, Lj8/f0;->b:Ljava/lang/String;

    .line 20
    .line 21
    iget-boolean v2, p0, Lj8/f0;->c:Z

    .line 22
    .line 23
    iget-boolean v3, p0, Lj8/f0;->d:Z

    .line 24
    .line 25
    iget-object v4, p0, Lj8/f0;->e:Lf9/k;

    .line 26
    .line 27
    iget v7, p0, Lj8/f0;->g:I

    .line 28
    .line 29
    invoke-static/range {v0 .. v7}, Lc7/a;->d(Ljava/util/List;Ljava/lang/String;ZZLf9/k;Lf1/s;II)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 33
    .line 34
    return-object p1
.end method
