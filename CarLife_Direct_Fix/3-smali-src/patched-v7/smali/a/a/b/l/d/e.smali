.class public final La/a/b/l/d/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/a/a/a/j/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F0(La/a/a/a/c;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, La/a/b/l/d/f;->a:La/a/b/l/d/f;

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "-----abandonAudioFocus-----"

    aput-object v2, v0, v1

    const-string v2, "CarLifeVoice"

    const-string v3, "tag"

    .line 1
    invoke-static {v2, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v0, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

    .line 3
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, v2, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object p1, La/a/b/l/d/f;->c:La/a/a/a/c;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, La/a/b/l/d/a;->b:La/a/b/l/d/a;

    invoke-interface {p1, v0}, La/a/a/a/c;->D(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 5
    :goto_1
    sget-object p1, La/a/b/l/d/f;->b:La/a/b/l/d/b;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, La/a/b/l/d/b;->a(Z)V

    .line 6
    :goto_2
    sput v1, La/a/b/l/d/d;->b:I

    return-void
.end method

.method public synthetic O(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->b(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public synthetic Q(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->e(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public synthetic b0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->f(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public synthetic c0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->d(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public g0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, La/a/a/a/a/a/b;->n()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 1
    :pswitch_0
    sget-boolean p1, La/a/b/l/d/d;->c:Z

    if-nez p1, :cond_0

    .line 2
    sget-object p1, La/a/b/l/d/f;->a:La/a/b/l/d/f;

    invoke-virtual {p1}, La/a/b/l/d/f;->b()V

    const/4 p1, 0x1

    .line 3
    sput p1, La/a/b/l/d/d;->b:I

    .line 4
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_1
    sget-object p1, La/a/b/l/d/f;->a:La/a/b/l/d/f;

    invoke-virtual {p1}, La/a/b/l/d/f;->a()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 5
    :pswitch_2
    sget-boolean p1, La/a/b/l/d/d;->c:Z

    if-nez p1, :cond_1

    .line 6
    sget-object p1, La/a/b/l/d/f;->a:La/a/b/l/d/f;

    invoke-virtual {p1}, La/a/b/l/d/f;->c()V

    const/4 p1, 0x2

    .line 7
    sput p1, La/a/b/l/d/d;->b:I

    .line 8
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x10022
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic n0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, La/a/a/a/a/j/d;->b(La/a/a/a/a/j/e;La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public o(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
