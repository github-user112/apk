.class public final synthetic Lx/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lx/f;


# direct methods
.method public synthetic constructor <init>(Lx/f;I)V
    .locals 0

    .line 1
    iput p2, p0, Lx/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lx/a;->b:Lx/f;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lx/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lx/a;->b:Lx/f;

    .line 7
    .line 8
    iget-object v0, v0, Lx/f;->w:Lf9/a;

    .line 9
    .line 10
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    sget-object v0, Landroidx/compose/foundation/c;->a:Lf1/c0;

    .line 17
    .line 18
    iget-object v1, p0, Lx/a;->b:Lx/f;

    .line 19
    .line 20
    invoke-static {v1, v0}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lx/n0;

    .line 25
    .line 26
    instance-of v2, v0, Lx/r0;

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "clickable only supports IndicationNodeFactory instances provided to LocalIndication, but Indication was provided instead. Either migrate the Indication implementation to implement IndicationNodeFactory, or use the other clickable overload that takes an Indication parameter, and explicitly pass LocalIndication.current there. You can also use ComposeFoundationFlags.isNonComposedClickableEnabled to temporarily opt-out; note that this flag will be removed in a future release and is only intended to be a temporary migration aid. The Indication instance provided here was: "

    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Lc0/b;->a(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v2, v1, Lx/f;->y:Lx/r0;

    .line 48
    .line 49
    check-cast v0, Lx/r0;

    .line 50
    .line 51
    iput-object v0, v1, Lx/f;->y:Lx/r0;

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-static {v0, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    iget-object v0, v1, Lx/f;->A:Lq2/l;

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    iget-boolean v2, v1, Lx/f;->G:Z

    .line 66
    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    :cond_1
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lq2/m;->B0(Lq2/l;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    const/4 v0, 0x0

    .line 75
    iput-object v0, v1, Lx/f;->A:Lq2/l;

    .line 76
    .line 77
    invoke-virtual {v1}, Lx/f;->I0()V

    .line 78
    .line 79
    .line 80
    :cond_3
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 81
    .line 82
    return-object v0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
