.class public final synthetic Lf/a/k/m0/e0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/k/m0/v0;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lf/a/k/m0/v0;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/m0/e0;->a:Lf/a/k/m0/v0;

    iput p2, p0, Lf/a/k/m0/e0;->b:I

    iput-object p3, p0, Lf/a/k/m0/e0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lf/a/k/m0/e0;->a:Lf/a/k/m0/v0;

    iget v1, p0, Lf/a/k/m0/e0;->b:I

    iget-object v2, p0, Lf/a/k/m0/e0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lf/a/k/m0/v0;->v0(ILjava/lang/String;)V

    return-void
.end method
