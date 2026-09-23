.class public final synthetic Lh0/d0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final synthetic c:Lh0/e0;

.field public final synthetic d:Ln1/c;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILh0/e0;Ln1/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh0/d0;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput p2, p0, Lh0/d0;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lh0/d0;->c:Lh0/e0;

    .line 9
    .line 10
    iput-object p4, p0, Lh0/d0;->d:Ln1/c;

    .line 11
    .line 12
    iput p5, p0, Lh0/d0;->e:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lh0/d0;->e:I

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
    iget-object v0, p0, Lh0/d0;->a:Ljava/lang/Object;

    .line 18
    .line 19
    iget v1, p0, Lh0/d0;->b:I

    .line 20
    .line 21
    iget-object v2, p0, Lh0/d0;->c:Lh0/e0;

    .line 22
    .line 23
    iget-object v3, p0, Lh0/d0;->d:Ln1/c;

    .line 24
    .line 25
    invoke-static/range {v0 .. v5}, Lh0/z;->b(Ljava/lang/Object;ILh0/e0;Ln1/c;Lf1/s;I)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    return-object p1
.end method
