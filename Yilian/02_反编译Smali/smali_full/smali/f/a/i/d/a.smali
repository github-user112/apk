.class public Lf/a/i/d/a;
.super Lf/a/i/c/b;
.source ""


# instance fields
.field public n:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lf/a/i/c/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/a/i/d/a;->n:Z

    iput-boolean p1, p0, Lf/a/i/d/a;->n:Z

    return-void
.end method
