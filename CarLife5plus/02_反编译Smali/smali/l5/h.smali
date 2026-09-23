.class public final synthetic Ll5/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lr1/p;

.field public final synthetic b:Ll5/l;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:J

.field public final synthetic f:F

.field public final synthetic g:J

.field public final synthetic h:F

.field public final synthetic i:Ld7/q;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lr1/p;Ll5/l;FFJFJFLd7/q;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll5/h;->a:Lr1/p;

    .line 5
    .line 6
    iput-object p2, p0, Ll5/h;->b:Ll5/l;

    .line 7
    .line 8
    iput p3, p0, Ll5/h;->c:F

    .line 9
    .line 10
    iput p4, p0, Ll5/h;->d:F

    .line 11
    .line 12
    iput-wide p5, p0, Ll5/h;->e:J

    .line 13
    .line 14
    iput p7, p0, Ll5/h;->f:F

    .line 15
    .line 16
    iput-wide p8, p0, Ll5/h;->g:J

    .line 17
    .line 18
    iput p10, p0, Ll5/h;->h:F

    .line 19
    .line 20
    iput-object p11, p0, Ll5/h;->i:Ld7/q;

    .line 21
    .line 22
    iput p12, p0, Ll5/h;->j:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object v11, p1

    .line 2
    check-cast v11, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string p1, "$controller"

    .line 10
    .line 11
    iget-object v1, p0, Ll5/h;->b:Ll5/l;

    .line 12
    .line 13
    invoke-static {v1, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget p1, p0, Ll5/h;->j:I

    .line 17
    .line 18
    or-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 21
    .line 22
    .line 23
    move-result v12

    .line 24
    iget-object v0, p0, Ll5/h;->a:Lr1/p;

    .line 25
    .line 26
    iget v2, p0, Ll5/h;->c:F

    .line 27
    .line 28
    iget v3, p0, Ll5/h;->d:F

    .line 29
    .line 30
    iget-wide v4, p0, Ll5/h;->e:J

    .line 31
    .line 32
    iget v6, p0, Ll5/h;->f:F

    .line 33
    .line 34
    iget-wide v7, p0, Ll5/h;->g:J

    .line 35
    .line 36
    iget v9, p0, Ll5/h;->h:F

    .line 37
    .line 38
    iget-object v10, p0, Ll5/h;->i:Ld7/q;

    .line 39
    .line 40
    invoke-static/range {v0 .. v12}, Lg5/a;->e(Lr1/p;Ll5/l;FFJFJFLd7/q;Lf1/s;I)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 44
    .line 45
    return-object p1
.end method
