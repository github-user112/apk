.class public final Le/c/b/e/a/a$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final c:Le/c/b/e/a/a$c;

.field public static final d:Le/c/b/e/a/a$c;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Le/c/b/e/a/a;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sput-object v1, Le/c/b/e/a/a$c;->d:Le/c/b/e/a/a$c;

    sput-object v1, Le/c/b/e/a/a$c;->c:Le/c/b/e/a/a$c;

    goto :goto_0

    :cond_0
    new-instance v0, Le/c/b/e/a/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Le/c/b/e/a/a$c;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Le/c/b/e/a/a$c;->d:Le/c/b/e/a/a$c;

    new-instance v0, Le/c/b/e/a/a$c;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Le/c/b/e/a/a$c;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Le/c/b/e/a/a$c;->c:Le/c/b/e/a/a$c;

    :goto_0
    return-void
.end method

.method public constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/c/b/e/a/a$c;->a:Z

    iput-object p2, p0, Le/c/b/e/a/a$c;->b:Ljava/lang/Throwable;

    return-void
.end method
