.class public Le/e/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/e/a/e;


# instance fields
.field public final a:Le/e/a/d;


# direct methods
.method public constructor <init>(Le/e/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Le/e/a/b;->a:Le/e/a/d;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Le/e/a/b;->a:Le/e/a/d;

    invoke-interface {v0, p1, p2, p3}, Le/e/a/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
