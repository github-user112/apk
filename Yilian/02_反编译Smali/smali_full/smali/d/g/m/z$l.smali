.class public Ld/g/m/z$l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/g/m/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# static fields
.field public static final b:Ld/g/m/z;


# instance fields
.field public final a:Ld/g/m/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/g/m/z$b;

    invoke-direct {v0}, Ld/g/m/z$b;-><init>()V

    invoke-virtual {v0}, Ld/g/m/z$b;->a()Ld/g/m/z;

    move-result-object v0

    .line 1
    iget-object v0, v0, Ld/g/m/z;->a:Ld/g/m/z$l;

    invoke-virtual {v0}, Ld/g/m/z$l;->a()Ld/g/m/z;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ld/g/m/z;->a:Ld/g/m/z$l;

    invoke-virtual {v0}, Ld/g/m/z$l;->b()Ld/g/m/z;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld/g/m/z;->a:Ld/g/m/z$l;

    invoke-virtual {v0}, Ld/g/m/z$l;->c()Ld/g/m/z;

    move-result-object v0

    .line 4
    sput-object v0, Ld/g/m/z$l;->b:Ld/g/m/z;

    return-void
.end method

.method public constructor <init>(Ld/g/m/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/g/m/z$l;->a:Ld/g/m/z;

    return-void
.end method


# virtual methods
.method public a()Ld/g/m/z;
    .locals 1

    iget-object v0, p0, Ld/g/m/z$l;->a:Ld/g/m/z;

    return-object v0
.end method

.method public b()Ld/g/m/z;
    .locals 1

    iget-object v0, p0, Ld/g/m/z$l;->a:Ld/g/m/z;

    return-object v0
.end method

.method public c()Ld/g/m/z;
    .locals 1

    iget-object v0, p0, Ld/g/m/z$l;->a:Ld/g/m/z;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public e()Ld/g/m/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ld/g/m/z$l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ld/g/m/z$l;

    invoke-virtual {p0}, Ld/g/m/z$l;->i()Z

    move-result v1

    invoke-virtual {p1}, Ld/g/m/z$l;->i()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Ld/g/m/z$l;->h()Z

    move-result v1

    invoke-virtual {p1}, Ld/g/m/z$l;->h()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Ld/g/m/z$l;->g()Ld/g/g/b;

    move-result-object v1

    invoke-virtual {p1}, Ld/g/m/z$l;->g()Ld/g/g/b;

    move-result-object v3

    invoke-static {v1, v3}, Ld/b/k/r;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ld/g/m/z$l;->f()Ld/g/g/b;

    move-result-object v1

    invoke-virtual {p1}, Ld/g/m/z$l;->f()Ld/g/g/b;

    move-result-object v3

    invoke-static {v1, v3}, Ld/b/k/r;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ld/g/m/z$l;->e()Ld/g/m/c;

    move-result-object v1

    invoke-virtual {p1}, Ld/g/m/z$l;->e()Ld/g/m/c;

    move-result-object p1

    invoke-static {v1, p1}, Ld/b/k/r;->s(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ld/g/g/b;
    .locals 1

    sget-object v0, Ld/g/g/b;->e:Ld/g/g/b;

    return-object v0
.end method

.method public g()Ld/g/g/b;
    .locals 1

    sget-object v0, Ld/g/g/b;->e:Ld/g/g/b;

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ld/g/m/z$l;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ld/g/m/z$l;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ld/g/m/z$l;->g()Ld/g/g/b;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ld/g/m/z$l;->f()Ld/g/g/b;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ld/g/m/z$l;->e()Ld/g/m/c;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ld/b/k/r;->Q([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j([Ld/g/g/b;)V
    .locals 0

    return-void
.end method

.method public k(Ld/g/m/z;)V
    .locals 0

    return-void
.end method

.method public l(Ld/g/g/b;)V
    .locals 0

    return-void
.end method
