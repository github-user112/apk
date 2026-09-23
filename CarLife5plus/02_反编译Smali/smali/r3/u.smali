.class public final Lr3/u;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:Lg9/w;

.field public final synthetic b:Lr3/v;

.field public final synthetic c:Ln3/k;

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public constructor <init>(Lg9/w;Lr3/v;Ln3/k;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/u;->a:Lg9/w;

    .line 2
    .line 3
    iput-object p2, p0, Lr3/u;->b:Lr3/v;

    .line 4
    .line 5
    iput-object p3, p0, Lr3/u;->c:Ln3/k;

    .line 6
    .line 7
    iput-wide p4, p0, Lr3/u;->d:J

    .line 8
    .line 9
    iput-wide p6, p0, Lr3/u;->e:J

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lr3/u;->b:Lr3/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr3/v;->getPositionProvider()Lr3/y;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lr3/v;->getParentLayoutDirection()Ln3/m;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    iget-wide v6, p0, Lr3/u;->e:J

    .line 12
    .line 13
    iget-object v2, p0, Lr3/u;->c:Ln3/k;

    .line 14
    .line 15
    iget-wide v3, p0, Lr3/u;->d:J

    .line 16
    .line 17
    invoke-interface/range {v1 .. v7}, Lr3/y;->b(Ln3/k;JLn3/m;J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-object v2, p0, Lr3/u;->a:Lg9/w;

    .line 22
    .line 23
    iput-wide v0, v2, Lg9/w;->a:J

    .line 24
    .line 25
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 26
    .line 27
    return-object v0
.end method
