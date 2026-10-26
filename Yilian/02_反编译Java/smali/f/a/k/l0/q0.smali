.class public final synthetic Lf/a/k/l0/q0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/k/l0/p3;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lf/a/k/l0/p3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/l0/q0;->a:Lf/a/k/l0/p3;

    iput p2, p0, Lf/a/k/l0/q0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/q0;->a:Lf/a/k/l0/p3;

    iget v1, p0, Lf/a/k/l0/q0;->b:I

    invoke-virtual {v0, v1}, Lf/a/k/l0/p3;->a0(I)V

    return-void
.end method
