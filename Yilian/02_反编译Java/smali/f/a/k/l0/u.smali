.class public final synthetic Lf/a/k/l0/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/k/l0/g3;

.field public final synthetic b:F

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lf/a/k/l0/g3;FLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/l0/u;->a:Lf/a/k/l0/g3;

    iput p2, p0, Lf/a/k/l0/u;->b:F

    iput-object p3, p0, Lf/a/k/l0/u;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lf/a/k/l0/u;->a:Lf/a/k/l0/g3;

    iget v1, p0, Lf/a/k/l0/u;->b:F

    iget-object v2, p0, Lf/a/k/l0/u;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lf/a/k/l0/g3;->Y(FLjava/lang/String;)V

    return-void
.end method
