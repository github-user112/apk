.class public final Leb/r;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Leb/s;


# direct methods
.method public synthetic constructor <init>(Leb/s;I)V
    .locals 0

    .line 1
    iput p2, p0, Leb/r;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Leb/r;->b:Leb/s;

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
    iget v0, p0, Leb/r;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Leb/r;->b:Leb/s;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-boolean v0, v1, Leb/s;->c:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v1, Leb/s;->b:Ljb/i;

    .line 13
    .line 14
    invoke-static {v0}, Lxa/k;->h(Ly9/b;)Ly9/i0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lp9/x1;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 24
    .line 25
    :goto_0
    return-object v0

    .line 26
    :pswitch_0
    iget-object v0, v1, Leb/s;->b:Ljb/i;

    .line 27
    .line 28
    invoke-static {v0}, Lxa/k;->i(Ly9/b;)Ly9/l0;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0}, Lxa/k;->j(Ly9/b;)Ly9/l0;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v2, 0x2

    .line 37
    new-array v2, v2, [Ly9/l0;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    aput-object v1, v2, v3

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    aput-object v0, v2, v1

    .line 44
    .line 45
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
