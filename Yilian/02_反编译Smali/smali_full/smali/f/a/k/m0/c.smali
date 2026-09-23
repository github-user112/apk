.class public final synthetic Lf/a/k/m0/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/k/k0/d;


# direct methods
.method public synthetic constructor <init>(Lf/a/k/k0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/m0/c;->a:Lf/a/k/k0/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf/a/k/m0/c;->a:Lf/a/k/k0/d;

    invoke-interface {v0}, Lf/a/k/k0/d;->w()V

    return-void
.end method
