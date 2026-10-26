.class public Lf/a/h/a/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Lf/a/h/a/j;


# instance fields
.field public a:Lf/a/h/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf/a/h/a/j;->a:Lf/a/h/a/h;

    return-void
.end method

.method public static declared-synchronized a()Lf/a/h/a/j;
    .locals 2

    const-class v0, Lf/a/h/a/j;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf/a/h/a/j;->b:Lf/a/h/a/j;

    if-nez v1, :cond_0

    new-instance v1, Lf/a/h/a/j;

    invoke-direct {v1}, Lf/a/h/a/j;-><init>()V

    sput-object v1, Lf/a/h/a/j;->b:Lf/a/h/a/j;

    :cond_0
    sget-object v1, Lf/a/h/a/j;->b:Lf/a/h/a/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
