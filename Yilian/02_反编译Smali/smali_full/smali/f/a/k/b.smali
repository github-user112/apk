.class public final synthetic Lf/a/k/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/k/g0$a;

.field public final synthetic b:Landroid/os/IBinder;

.field public final synthetic c:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lf/a/k/g0$a;Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/b;->a:Lf/a/k/g0$a;

    iput-object p2, p0, Lf/a/k/b;->b:Landroid/os/IBinder;

    iput-object p3, p0, Lf/a/k/b;->c:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lf/a/k/b;->a:Lf/a/k/g0$a;

    iget-object v1, p0, Lf/a/k/b;->b:Landroid/os/IBinder;

    iget-object v2, p0, Lf/a/k/b;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lf/a/k/g0$a;->a(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method
