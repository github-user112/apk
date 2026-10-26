.class public final Le/d/b/a/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final c:Le/d/b/a/d;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/d/b/a/d;

    invoke-direct {v0}, Le/d/b/a/d;-><init>()V

    sput-object v0, Le/d/b/a/d;->c:Le/d/b/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Le/d/b/a/f/a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Le/d/b/a/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 1
    sget-object v0, Le/d/b/a/f/a;->b:Le/d/b/a/f/a;

    iget-object v0, v0, Le/d/b/a/f/a;->a:Ljava/util/concurrent/Executor;

    .line 2
    iput-object v0, p0, Le/d/b/a/d;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
