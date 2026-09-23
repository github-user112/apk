.class public final synthetic Ll5/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lr1/p;

.field public final synthetic b:Ll5/l;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:F

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lr1/p;Ll5/l;JJJFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll5/g;->a:Lr1/p;

    .line 5
    .line 6
    iput-object p2, p0, Ll5/g;->b:Ll5/l;

    .line 7
    .line 8
    iput-wide p3, p0, Ll5/g;->c:J

    .line 9
    .line 10
    iput-wide p5, p0, Ll5/g;->d:J

    .line 11
    .line 12
    iput-wide p7, p0, Ll5/g;->e:J

    .line 13
    .line 14
    iput p9, p0, Ll5/g;->f:F

    .line 15
    .line 16
    iput p10, p0, Ll5/g;->g:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    move-object v9, p1

    .line 2
    check-cast v9, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string p1, "$modifier"

    .line 10
    .line 11
    iget-object v0, p0, Ll5/g;->a:Lr1/p;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget p1, p0, Ll5/g;->g:I

    .line 17
    .line 18
    or-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 21
    .line 22
    .line 23
    move-result v10

    .line 24
    iget-object v1, p0, Ll5/g;->b:Ll5/l;

    .line 25
    .line 26
    iget-wide v2, p0, Ll5/g;->c:J

    .line 27
    .line 28
    iget-wide v4, p0, Ll5/g;->d:J

    .line 29
    .line 30
    iget-wide v6, p0, Ll5/g;->e:J

    .line 31
    .line 32
    iget v8, p0, Ll5/g;->f:F

    .line 33
    .line 34
    invoke-static/range {v0 .. v10}, La/a;->a(Lr1/p;Ll5/l;JJJFLf1/s;I)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 38
    .line 39
    return-object p1
.end method
