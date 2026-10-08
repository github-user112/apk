.class public final synthetic La/a/a/a/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc/k/a/a;


# direct methods
.method public synthetic constructor <init>(Lc/k/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/a/c;->b:Lc/k/a/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, La/a/a/a/a/c;->b:Lc/k/a/a;

    const-string v1, "$tmp0"

    .line 1
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lc/k/a/a;->a()Ljava/lang/Object;

    return-void
.end method
