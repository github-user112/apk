.class public final synthetic La/a/a/a/m/k/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:La/a/a/a/m/k/a/c;


# direct methods
.method public synthetic constructor <init>(La/a/a/a/m/k/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/k/a/b;->b:La/a/a/a/m/k/a/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, La/a/a/a/m/k/a/b;->b:La/a/a/a/m/k/a/c;

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Carlife Connect authentication failed."

    aput-object v4, v2, v3

    const-string v3, "CarLife_SDK"

    const-string v4, "tag"

    .line 2
    invoke-static {v3, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {v2, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v4, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x5

    .line 4
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v5, v3, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :goto_0
    iget-object v0, v0, La/a/a/a/m/k/a/c;->b:La/a/a/a/c;

    invoke-interface {v0}, La/a/a/a/c;->a()V

    return-void
.end method
