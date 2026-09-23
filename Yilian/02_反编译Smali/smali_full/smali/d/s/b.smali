.class public Ld/s/b;
.super Ld/s/q;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ld/s/q;-><init>()V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ld/s/q;->J(I)Ld/s/q;

    new-instance v1, Ld/s/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ld/s/d;-><init>(I)V

    invoke-virtual {p0, v1}, Ld/s/q;->H(Ld/s/k;)Ld/s/q;

    new-instance v1, Ld/s/c;

    invoke-direct {v1}, Ld/s/c;-><init>()V

    invoke-virtual {p0, v1}, Ld/s/q;->H(Ld/s/k;)Ld/s/q;

    new-instance v1, Ld/s/d;

    invoke-direct {v1, v0}, Ld/s/d;-><init>(I)V

    invoke-virtual {p0, v1}, Ld/s/q;->H(Ld/s/k;)Ld/s/q;

    return-void
.end method
