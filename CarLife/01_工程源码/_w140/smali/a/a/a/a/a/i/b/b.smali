.class public La/a/a/a/a/i/b/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:La/a/a/a/a/i/b/a;

.field public b:La/a/a/a/a/i/b/d;


# direct methods
.method public constructor <init>(La/a/a/a/a/i/b/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/a/a/a/i/b/a;

    sget-object v1, La/a/a/a/a/i/b/a$a;->d:La/a/a/a/a/i/b/a$a;

    invoke-direct {v0, v1}, La/a/a/a/a/i/b/a;-><init>(La/a/a/a/a/i/b/a$a;)V

    iput-object v0, p0, La/a/a/a/a/i/b/b;->a:La/a/a/a/a/i/b/a;

    iput-object p1, p0, La/a/a/a/a/i/b/b;->b:La/a/a/a/a/i/b/d;

    return-void
.end method
