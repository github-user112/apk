.class public final Lu9/j;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lu9/m;


# direct methods
.method public synthetic constructor <init>(Lu9/m;I)V
    .locals 0

    .line 1
    iput p2, p0, Lu9/j;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lu9/j;->b:Lu9/m;

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
    iget v0, p0, Lu9/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu9/j;->b:Lu9/m;

    .line 7
    .line 8
    iget-object v0, v0, Lu9/m;->a:Ly9/a0;

    .line 9
    .line 10
    iget-object v0, v0, Ly9/a0;->d:Ls9/i;

    .line 11
    .line 12
    invoke-virtual {v0}, Ls9/i;->e()Llb/a0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :pswitch_0
    iget-object v0, p0, Lu9/j;->b:Lu9/m;

    .line 18
    .line 19
    iget-object v0, v0, Lu9/m;->a:Ly9/a0;

    .line 20
    .line 21
    iget-object v0, v0, Ly9/a0;->d:Ls9/i;

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    const-string v2, "WARNING"

    .line 26
    .line 27
    const-string v3, "This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version"

    .line 28
    .line 29
    invoke-static {v0, v3, v1, v2}, Lw9/e;->a(Ls9/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lw9/j;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    sget-object v0, Lw9/g;->a:Lw9/f;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v1, Lw9/i;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-direct {v1, v2, v0}, Lw9/i;-><init>(ILjava/util/List;)V

    .line 50
    .line 51
    .line 52
    move-object v0, v1

    .line 53
    :goto_0
    return-object v0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
