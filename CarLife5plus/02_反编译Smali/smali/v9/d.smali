.class public final Lv9/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lv9/q0;


# instance fields
.field public final a:Lv9/q0;

.field public final b:Lv9/i;

.field public final c:I


# direct methods
.method public constructor <init>(Lv9/q0;Lv9/i;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv9/d;->a:Lv9/q0;

    .line 5
    .line 6
    iput-object p2, p0, Lv9/d;->b:Lv9/i;

    .line 7
    .line 8
    iput p3, p0, Lv9/d;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lv9/d;->a:Lv9/q0;

    .line 2
    .line 3
    invoke-interface {v0}, Lv9/q0;->C()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final G(Lv9/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lv9/d;->a:Lv9/q0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lv9/k;->G(Lv9/m;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final J()Llb/y0;
    .locals 2

    .line 1
    iget-object v0, p0, Lv9/d;->a:Lv9/q0;

    .line 2
    .line 3
    invoke-interface {v0}, Lv9/q0;->J()Llb/y0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getVariance(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final Y()Lkb/o;
    .locals 2

    .line 1
    iget-object v0, p0, Lv9/d;->a:Lv9/q0;

    .line 2
    .line 3
    invoke-interface {v0}, Lv9/q0;->Y()Lkb/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getStorageManager(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final a()Lv9/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lv9/d;->a:Lv9/q0;

    invoke-interface {v0}, Lv9/q0;->a()Lv9/q0;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lv9/k;
    .locals 1

    .line 2
    iget-object v0, p0, Lv9/d;->a:Lv9/q0;

    invoke-interface {v0}, Lv9/q0;->a()Lv9/q0;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lv9/q0;
    .locals 1

    .line 3
    iget-object v0, p0, Lv9/d;->a:Lv9/q0;

    invoke-interface {v0}, Lv9/q0;->a()Lv9/q0;

    move-result-object v0

    return-object v0
.end method

.method public final d0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final getAnnotations()Lw9/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lv9/d;->a:Lv9/q0;

    .line 2
    .line 3
    invoke-interface {v0}, Lw9/a;->getAnnotations()Lw9/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getIndex()I
    .locals 2

    .line 1
    iget-object v0, p0, Lv9/d;->a:Lv9/q0;

    .line 2
    .line 3
    invoke-interface {v0}, Lv9/q0;->getIndex()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lv9/d;->c:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public final getName()Lua/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lv9/d;->a:Lv9/q0;

    .line 2
    .line 3
    invoke-interface {v0}, Lv9/k;->getName()Lua/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getSource()Lv9/m0;
    .locals 2

    .line 1
    iget-object v0, p0, Lv9/d;->a:Lv9/q0;

    .line 2
    .line 3
    invoke-interface {v0}, Lv9/l;->getSource()Lv9/m0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSource(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getUpperBounds()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lv9/d;->a:Lv9/q0;

    .line 2
    .line 3
    invoke-interface {v0}, Lv9/q0;->getUpperBounds()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getUpperBounds(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final k()Lv9/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lv9/d;->b:Lv9/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Llb/a0;
    .locals 2

    .line 1
    iget-object v0, p0, Lv9/d;->a:Lv9/q0;

    .line 2
    .line 3
    invoke-interface {v0}, Lv9/h;->n()Llb/a0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getDefaultType(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final t()Llb/k0;
    .locals 2

    .line 1
    iget-object v0, p0, Lv9/d;->a:Lv9/q0;

    .line 2
    .line 3
    invoke-interface {v0}, Lv9/h;->t()Llb/k0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getTypeConstructor(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lv9/d;->a:Lv9/q0;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "[inner-copy]"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
