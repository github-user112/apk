.class public final synthetic Lf/a/g/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/g/j;


# direct methods
.method public synthetic constructor <init>(Lf/a/g/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/g/e;->a:Lf/a/g/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf/a/g/e;->a:Lf/a/g/j;

    invoke-virtual {v0}, Lf/a/g/j;->e()V

    return-void
.end method
