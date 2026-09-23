.class public final Lp2/g;
.super Li2/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final e:Lp2/f;

.field public final f:Lf1/k1;


# direct methods
.method public constructor <init>(Lp2/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp2/g;->e:Lp2/f;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lf1/b;->s(Ljava/lang/Object;)Lf1/k1;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lp2/g;->f:Lf1/k1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final j(Lp2/f;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp2/g;->e:Lp2/f;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    return p1
.end method

.method public final q(Lp2/f;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lp2/g;->e:Lp2/f;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "Check failed."

    .line 7
    .line 8
    invoke-static {p1}, Ln2/a;->b(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object p1, p0, Lp2/g;->f:Lf1/k1;

    .line 12
    .line 13
    invoke-virtual {p1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    :cond_1
    return-object p1
.end method
