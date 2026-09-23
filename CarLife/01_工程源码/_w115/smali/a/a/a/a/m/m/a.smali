.class public final synthetic La/a/a/a/m/m/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:La/a/a/a/m/m/b;


# direct methods
.method public synthetic constructor <init>(La/a/a/a/m/m/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/m/m/a;->b:La/a/a/a/m/m/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, La/a/a/a/m/m/a;->b:La/a/a/a/m/m/b;

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, La/a/a/a/m/m/b;->V()V

    return-void
.end method
