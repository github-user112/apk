.class public final synthetic Lf/a/k/l0/n0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/k/l0/p3;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lf/a/k/l0/p3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/l0/n0;->a:Lf/a/k/l0/p3;

    iput p2, p0, Lf/a/k/l0/n0;->b:I

    iput p3, p0, Lf/a/k/l0/n0;->c:I

    iput p4, p0, Lf/a/k/l0/n0;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lf/a/k/l0/n0;->a:Lf/a/k/l0/p3;

    iget v1, p0, Lf/a/k/l0/n0;->b:I

    iget v2, p0, Lf/a/k/l0/n0;->c:I

    iget v3, p0, Lf/a/k/l0/n0;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lf/a/k/l0/p3;->b0(III)V

    return-void
.end method
