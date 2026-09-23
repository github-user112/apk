.class public Ld/s/q$b;
.super Ld/s/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/s/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ld/s/q;


# direct methods
.method public constructor <init>(Ld/s/q;)V
    .locals 0

    invoke-direct {p0}, Ld/s/n;-><init>()V

    iput-object p1, p0, Ld/s/q$b;->a:Ld/s/q;

    return-void
.end method


# virtual methods
.method public a(Ld/s/k;)V
    .locals 1

    iget-object p1, p0, Ld/s/q$b;->a:Ld/s/q;

    iget-boolean v0, p1, Ld/s/q;->M:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ld/s/k;->F()V

    iget-object p1, p0, Ld/s/q$b;->a:Ld/s/q;

    const/4 v0, 0x1

    iput-boolean v0, p1, Ld/s/q;->M:Z

    :cond_0
    return-void
.end method

.method public d(Ld/s/k;)V
    .locals 2

    iget-object v0, p0, Ld/s/q$b;->a:Ld/s/q;

    iget v1, v0, Ld/s/q;->L:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Ld/s/q;->L:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Ld/s/q;->M:Z

    invoke-virtual {v0}, Ld/s/k;->m()V

    :cond_0
    invoke-virtual {p1, p0}, Ld/s/k;->v(Ld/s/k$d;)Ld/s/k;

    return-void
.end method
