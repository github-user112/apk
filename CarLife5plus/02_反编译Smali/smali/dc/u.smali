.class public final Ldc/u;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ldc/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ldc/d;


# direct methods
.method public synthetic constructor <init>(Ldc/d;I)V
    .locals 0

    .line 1
    iput p2, p0, Ldc/u;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ldc/u;->b:Ldc/d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final t0(Ldc/e;Lw8/c;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ldc/u;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ldc/t;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p1, v1}, Ldc/t;-><init>(Ldc/e;I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Ldc/u;->b:Ldc/d;

    .line 13
    .line 14
    invoke-interface {p1, v0, p2}, Ldc/d;->t0(Ldc/e;Lw8/c;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 19
    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 24
    .line 25
    :goto_0
    return-object p1

    .line 26
    :pswitch_0
    new-instance v0, Ldc/t;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p1, v1}, Ldc/t;-><init>(Ldc/e;I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Ldc/u;->b:Ldc/d;

    .line 33
    .line 34
    invoke-interface {p1, v0, p2}, Ldc/d;->t0(Ldc/e;Lw8/c;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 39
    .line 40
    if-ne p1, p2, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 44
    .line 45
    :goto_1
    return-object p1

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
