.class public final Lg3/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lg3/g;


# virtual methods
.method public final a(Lg3/h;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p1, Lg3/h;->d:I

    .line 3
    .line 4
    iput v0, p1, Lg3/h;->e:I

    .line 5
    .line 6
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lg3/i;

    .line 2
    .line 3
    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const-class v0, Lg3/i;

    .line 2
    .line 3
    sget-object v1, Lg9/y;->a:Lg9/z;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lm9/c;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "FinishComposingTextCommand()"

    .line 2
    .line 3
    return-object v0
.end method
