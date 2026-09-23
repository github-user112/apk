.class public final synthetic Lx/l0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Ld2/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lr1/p;

.field public final synthetic d:Lr1/d;

.field public final synthetic e:Lo2/i;

.field public final synthetic f:F

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Ld2/b;Ljava/lang/String;Lr1/p;Lr1/d;Lo2/i;FII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx/l0;->a:Ld2/b;

    .line 5
    .line 6
    iput-object p2, p0, Lx/l0;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lx/l0;->c:Lr1/p;

    .line 9
    .line 10
    iput-object p4, p0, Lx/l0;->d:Lr1/d;

    .line 11
    .line 12
    iput-object p5, p0, Lx/l0;->e:Lo2/i;

    .line 13
    .line 14
    iput p6, p0, Lx/l0;->f:F

    .line 15
    .line 16
    iput p7, p0, Lx/l0;->g:I

    .line 17
    .line 18
    iput p8, p0, Lx/l0;->h:I

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
    iget p1, p0, Lx/l0;->g:I

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
    iget-object v0, p0, Lx/l0;->a:Ld2/b;

    .line 18
    .line 19
    iget-object v1, p0, Lx/l0;->b:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lx/l0;->c:Lr1/p;

    .line 22
    .line 23
    iget-object v3, p0, Lx/l0;->d:Lr1/d;

    .line 24
    .line 25
    iget-object v4, p0, Lx/l0;->e:Lo2/i;

    .line 26
    .line 27
    iget v5, p0, Lx/l0;->f:F

    .line 28
    .line 29
    iget v8, p0, Lx/l0;->h:I

    .line 30
    .line 31
    invoke-static/range {v0 .. v8}, Lp9/q;->b(Ld2/b;Ljava/lang/String;Lr1/p;Lr1/d;Lo2/i;FLf1/s;II)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 35
    .line 36
    return-object p1
.end method
