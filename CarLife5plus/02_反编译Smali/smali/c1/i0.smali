.class public final Lc1/i0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Ld2/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lr1/p;

.field public final synthetic d:J

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Ld2/b;Ljava/lang/String;Lr1/p;JI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/i0;->a:Ld2/b;

    .line 2
    .line 3
    iput-object p2, p0, Lc1/i0;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lc1/i0;->c:Lr1/p;

    .line 6
    .line 7
    iput-wide p4, p0, Lc1/i0;->d:J

    .line 8
    .line 9
    iput p6, p0, Lc1/i0;->e:I

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
    .locals 7

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lc1/i0;->e:I

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
    iget-object v0, p0, Lc1/i0;->a:Ld2/b;

    .line 18
    .line 19
    iget-object v1, p0, Lc1/i0;->b:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lc1/i0;->c:Lr1/p;

    .line 22
    .line 23
    iget-wide v3, p0, Lc1/i0;->d:J

    .line 24
    .line 25
    invoke-static/range {v0 .. v6}, Lc1/k0;->a(Ld2/b;Ljava/lang/String;Lr1/p;JLf1/s;I)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    return-object p1
.end method
