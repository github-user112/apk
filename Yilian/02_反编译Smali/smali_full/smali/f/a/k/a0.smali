.class public final synthetic Lf/a/k/a0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/k/j0;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lf/a/k/j0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/a0;->a:Lf/a/k/j0;

    iput-boolean p2, p0, Lf/a/k/a0;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/a/k/a0;->a:Lf/a/k/j0;

    iget-boolean v1, p0, Lf/a/k/a0;->b:Z

    invoke-virtual {v0, v1}, Lf/a/k/j0;->b(Z)V

    return-void
.end method
