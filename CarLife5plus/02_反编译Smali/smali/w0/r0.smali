.class public final synthetic Lw0/r0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg9/t;


# direct methods
.method public synthetic constructor <init>(Lg9/t;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw0/r0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/r0;->b:Lg9/t;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lw0/r0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lq2/d2;

    .line 7
    .line 8
    iget-object v0, p0, Lw0/r0;->b:Lg9/t;

    .line 9
    .line 10
    iget-boolean v1, v0, Lg9/t;->a:Z

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const-string v1, "null cannot be cast to non-null type androidx.compose.foundation.gestures.ScrollableContainerNode"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Lz/d1;

    .line 21
    .line 22
    iget-boolean p1, p1, Lz/d1;->o:Z

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 30
    :goto_1
    iput-boolean p1, v0, Lg9/t;->a:Z

    .line 31
    .line 32
    xor-int/2addr p1, v2

    .line 33
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :pswitch_0
    check-cast p1, Lw0/w;

    .line 39
    .line 40
    iget-object p1, p1, Lw0/w;->f:Lb3/l0;

    .line 41
    .line 42
    iget-object p1, p1, Lb3/l0;->a:Lb3/k0;

    .line 43
    .line 44
    iget-object p1, p1, Lb3/k0;->a:Lb3/g;

    .line 45
    .line 46
    iget-object p1, p1, Lb3/g;->b:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-lez p1, :cond_2

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    iget-object v0, p0, Lw0/r0;->b:Lg9/t;

    .line 56
    .line 57
    iput-boolean p1, v0, Lg9/t;->a:Z

    .line 58
    .line 59
    :cond_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 60
    .line 61
    return-object p1

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
