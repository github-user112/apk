.class public final synthetic Lj0/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lf9/k;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lj0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/a;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lj0/a;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLu0/b;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lj0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lj0/a;->b:Z

    iput-object p2, p0, Lj0/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lj0/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj0/a;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lu0/b;

    .line 9
    .line 10
    iget-boolean v1, p0, Lj0/a;->b:Z

    .line 11
    .line 12
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lu0/b;->i()Ldc/v;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    check-cast v0, Ldc/a0;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ldc/a0;->o(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-object v2

    .line 28
    :pswitch_0
    iget-object v0, p0, Lj0/a;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lf9/k;

    .line 31
    .line 32
    iget-boolean v1, p0, Lj0/a;->b:Z

    .line 33
    .line 34
    xor-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 44
    .line 45
    return-object v0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
