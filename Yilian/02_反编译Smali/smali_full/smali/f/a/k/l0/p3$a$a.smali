.class public Lf/a/k/l0/p3$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/k/l0/p3$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/k/l0/p3$a;


# direct methods
.method public constructor <init>(Lf/a/k/l0/p3$a;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/l0/p3$a$a;->a:Lf/a/k/l0/p3$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l0/p3$a$a;->a:Lf/a/k/l0/p3$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lf/a/k/l0/p3$a;->b:Z

    return-void
.end method
