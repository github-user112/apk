.class public final synthetic Lj8/j0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Lf9/a;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JJLf9/a;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj8/j0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lj8/j0;->b:J

    .line 7
    .line 8
    iput-wide p4, p0, Lj8/j0;->c:J

    .line 9
    .line 10
    iput-object p6, p0, Lj8/j0;->d:Lf9/a;

    .line 11
    .line 12
    iput p7, p0, Lj8/j0;->e:I

    .line 13
    .line 14
    iput p8, p0, Lj8/j0;->f:I

    .line 15
    .line 16
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
    iget p1, p0, Lj8/j0;->e:I

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
    iget-object v0, p0, Lj8/j0;->a:Ljava/lang/String;

    .line 18
    .line 19
    iget-wide v1, p0, Lj8/j0;->b:J

    .line 20
    .line 21
    iget-wide v3, p0, Lj8/j0;->c:J

    .line 22
    .line 23
    iget-object v5, p0, Lj8/j0;->d:Lf9/a;

    .line 24
    .line 25
    iget v8, p0, Lj8/j0;->f:I

    .line 26
    .line 27
    invoke-static/range {v0 .. v8}, Lg5/a;->l(Ljava/lang/String;JJLf9/a;Lf1/s;II)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 31
    .line 32
    return-object p1
.end method
