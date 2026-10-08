.class public final La/a/a/a/m/m/d/f;
.super Lc/k/b/d;
.source ""

# interfaces
.implements Lc/k/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/k/b/d;",
        "Lc/k/a/a<",
        "Lc/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:La/a/a/a/m/m/d/e;

.field public final synthetic c:La/a/a/a/a/j/f/a;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/d/e;La/a/a/a/a/j/f/a;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/m/m/d/f;->b:La/a/a/a/m/m/d/e;

    iput-object p2, p0, La/a/a/a/m/m/d/f;->c:La/a/a/a/a/j/f/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc/k/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, La/a/a/a/m/m/d/f;->b:La/a/a/a/m/m/d/e;

    iget-object v1, p0, La/a/a/a/m/m/d/f;->c:La/a/a/a/a/j/f/a;

    .line 2
    invoke-virtual {v0, v1}, La/a/a/a/m/m/d/e;->d(La/a/a/a/a/j/f/a;)V

    .line 3
    sget-object v0, Lc/g;->a:Lc/g;

    return-object v0
.end method
