.class public final Ljb/f;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljb/h;


# direct methods
.method public synthetic constructor <init>(Ljb/h;I)V
    .locals 0

    .line 1
    iput p2, p0, Ljb/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ljb/f;->b:Ljb/h;

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
    .locals 3

    .line 1
    iget v0, p0, Ljb/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ljb/f;->b:Ljb/h;

    .line 7
    .line 8
    iget-object v1, v0, Ljb/h;->g:Lmb/f;

    .line 9
    .line 10
    iget-object v0, v0, Ljb/h;->j:Ljb/i;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v1, "classDescriptor"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljb/i;->t()Llb/k0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Llb/f;

    .line 25
    .line 26
    invoke-virtual {v0}, Llb/f;->l()Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "getSupertypes(...)"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :pswitch_0
    sget-object v0, Leb/f;->m:Leb/f;

    .line 37
    .line 38
    sget-object v1, Leb/o;->a:Leb/m;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    sget-object v1, Leb/l;->b:Leb/l;

    .line 44
    .line 45
    iget-object v2, p0, Ljb/f;->b:Ljb/h;

    .line 46
    .line 47
    invoke-virtual {v2, v0, v1}, Ljb/q;->i(Leb/f;Lf9/k;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
