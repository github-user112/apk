.class public final synthetic Lj8/i0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lf9/a;

.field public final synthetic c:Le2/f;

.field public final synthetic d:J

.field public final synthetic e:F

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lf9/a;Le2/f;JFIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj8/i0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lj8/i0;->b:Lf9/a;

    .line 7
    .line 8
    iput-object p3, p0, Lj8/i0;->c:Le2/f;

    .line 9
    .line 10
    iput-wide p4, p0, Lj8/i0;->d:J

    .line 11
    .line 12
    iput p6, p0, Lj8/i0;->e:F

    .line 13
    .line 14
    iput p7, p0, Lj8/i0;->f:I

    .line 15
    .line 16
    iput p8, p0, Lj8/i0;->g:I

    .line 17
    .line 18
    iput p9, p0, Lj8/i0;->h:I

    .line 19
    .line 20
    iput p10, p0, Lj8/i0;->i:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lj8/i0;->h:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    iget-object v0, p0, Lj8/i0;->a:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Lj8/i0;->b:Lf9/a;

    .line 20
    .line 21
    iget-object v2, p0, Lj8/i0;->c:Le2/f;

    .line 22
    .line 23
    iget-wide v3, p0, Lj8/i0;->d:J

    .line 24
    .line 25
    iget v5, p0, Lj8/i0;->e:F

    .line 26
    .line 27
    iget v6, p0, Lj8/i0;->f:I

    .line 28
    .line 29
    iget v7, p0, Lj8/i0;->g:I

    .line 30
    .line 31
    iget v10, p0, Lj8/i0;->i:I

    .line 32
    .line 33
    invoke-static/range {v0 .. v10}, Lg5/a;->n(Ljava/lang/String;Lf9/a;Le2/f;JFIILf1/s;II)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 37
    .line 38
    return-object p1
.end method
