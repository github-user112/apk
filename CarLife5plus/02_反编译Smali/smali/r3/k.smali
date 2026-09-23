.class public final Lr3/k;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lr3/y;

.field public final synthetic b:Lf9/a;

.field public final synthetic c:Lr3/z;

.field public final synthetic d:Ln1/c;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lr3/y;Lf9/a;Lr3/z;Ln1/c;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/k;->a:Lr3/y;

    .line 2
    .line 3
    iput-object p2, p0, Lr3/k;->b:Lf9/a;

    .line 4
    .line 5
    iput-object p3, p0, Lr3/k;->c:Lr3/z;

    .line 6
    .line 7
    iput-object p4, p0, Lr3/k;->d:Ln1/c;

    .line 8
    .line 9
    iput p5, p0, Lr3/k;->e:I

    .line 10
    .line 11
    iput p6, p0, Lr3/k;->f:I

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lr3/k;->e:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    iget v6, p0, Lr3/k;->f:I

    .line 18
    .line 19
    iget-object v0, p0, Lr3/k;->a:Lr3/y;

    .line 20
    .line 21
    iget-object v1, p0, Lr3/k;->b:Lf9/a;

    .line 22
    .line 23
    iget-object v2, p0, Lr3/k;->c:Lr3/z;

    .line 24
    .line 25
    iget-object v3, p0, Lr3/k;->d:Ln1/c;

    .line 26
    .line 27
    invoke-static/range {v0 .. v6}, Lr3/l;->a(Lr3/y;Lf9/a;Lr3/z;Ln1/c;Lf1/s;II)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 31
    .line 32
    return-object p1
.end method
