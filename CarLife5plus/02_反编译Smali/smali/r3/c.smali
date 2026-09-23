.class public final Lr3/c;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lf9/a;

.field public final synthetic b:Lr3/s;

.field public final synthetic c:Ln1/c;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Lf9/a;Lr3/s;Ln1/c;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/c;->a:Lf9/a;

    .line 2
    .line 3
    iput-object p2, p0, Lr3/c;->b:Lr3/s;

    .line 4
    .line 5
    iput-object p3, p0, Lr3/c;->c:Ln1/c;

    .line 6
    .line 7
    iput p4, p0, Lr3/c;->d:I

    .line 8
    .line 9
    iput p5, p0, Lr3/c;->e:I

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v3, p1

    .line 2
    check-cast v3, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lr3/c;->d:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget v5, p0, Lr3/c;->e:I

    .line 18
    .line 19
    iget-object v0, p0, Lr3/c;->a:Lf9/a;

    .line 20
    .line 21
    iget-object v1, p0, Lr3/c;->b:Lr3/s;

    .line 22
    .line 23
    iget-object v2, p0, Lr3/c;->c:Ln1/c;

    .line 24
    .line 25
    invoke-static/range {v0 .. v5}, Lp9/q;->a(Lf9/a;Lr3/s;Ln1/c;Lf1/s;II)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    return-object p1
.end method
