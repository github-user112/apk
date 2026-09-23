.class public final La/a/b/l/c/c$b$c;
.super Lc/k/b/d;
.source ""

# interfaces
.implements Lc/k/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/l/c/c$b;->l(La/a/b/l/c/d/c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/k/b/d;",
        "Lc/k/a/a<",
        "Lc/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:La/a/b/l/c/c;

.field public final synthetic c:La/a/b/l/c/c$b;

.field public final synthetic d:La/a/b/l/c/d/c;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(La/a/b/l/c/c;La/a/b/l/c/c$b;La/a/b/l/c/d/c;Z)V
    .locals 0

    iput-object p1, p0, La/a/b/l/c/c$b$c;->b:La/a/b/l/c/c;

    iput-object p2, p0, La/a/b/l/c/c$b$c;->c:La/a/b/l/c/c$b;

    iput-object p3, p0, La/a/b/l/c/c$b$c;->d:La/a/b/l/c/d/c;

    iput-boolean p4, p0, La/a/b/l/c/c$b$c;->e:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc/k/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "AudioPlayer "

    aput-object v3, v1, v2

    .line 1
    iget-object v2, p0, La/a/b/l/c/c$b$c;->b:La/a/b/l/c/c;

    .line 2
    iget v2, v2, La/a/b/l/c/c;->b:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, " onCompletion"

    aput-object v3, v1, v2

    const-string v2, "CarLife_SDK"

    const-string v3, "tag"

    .line 4
    invoke-static {v2, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v2, v1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :goto_0
    iget-object v0, p0, La/a/b/l/c/c$b$c;->c:La/a/b/l/c/c$b;

    .line 8
    iget-object v0, v0, La/a/b/l/c/c$b;->b:La/a/b/l/c/c$a;

    .line 9
    iget-object v1, p0, La/a/b/l/c/c$b$c;->d:La/a/b/l/c/d/c;

    iget-boolean v2, p0, La/a/b/l/c/c$b$c;->e:Z

    invoke-interface {v0, v1, v2}, La/a/b/l/c/c$a;->l(La/a/b/l/c/d/c;Z)V

    .line 10
    sget-object v0, Lc/g;->a:Lc/g;

    return-object v0
.end method
