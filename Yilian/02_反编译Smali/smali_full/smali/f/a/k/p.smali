.class public final synthetic Lf/a/k/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/k/g0;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lf/a/k/g0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/p;->a:Lf/a/k/g0;

    iput-object p2, p0, Lf/a/k/p;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/a/k/p;->a:Lf/a/k/g0;

    iget-object v1, p0, Lf/a/k/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf/a/k/g0;->N(Ljava/lang/String;)V

    return-void
.end method
