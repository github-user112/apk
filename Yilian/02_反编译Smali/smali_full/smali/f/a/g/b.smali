.class public final synthetic Lf/a/g/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/g/j;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lf/a/g/j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/g/b;->a:Lf/a/g/j;

    iput p2, p0, Lf/a/g/b;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/a/g/b;->a:Lf/a/g/j;

    iget v1, p0, Lf/a/g/b;->b:I

    invoke-virtual {v0, v1}, Lf/a/g/j;->f(I)V

    return-void
.end method
