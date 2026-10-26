.class public final synthetic Lf/a/k/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/k/g0;


# direct methods
.method public synthetic constructor <init>(Lf/a/k/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/r;->a:Lf/a/k/g0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf/a/k/r;->a:Lf/a/k/g0;

    invoke-virtual {v0}, Lf/a/k/g0;->a0()V

    return-void
.end method
