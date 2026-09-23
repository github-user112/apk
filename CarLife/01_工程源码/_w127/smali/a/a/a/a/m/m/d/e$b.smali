.class public final La/a/a/a/m/m/d/e$b;
.super Lc/k/b/d;
.source ""

# interfaces
.implements Lc/k/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/m/m/d/e;-><init>(La/a/a/a/c;La/a/a/a/m/m/d/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/k/b/d;",
        "Lc/k/a/a<",
        "La/a/a/a/m/m/d/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:La/a/a/a/m/m/d/e;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/d/e;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/m/m/d/e$b;->b:La/a/a/a/m/m/d/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc/k/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, La/a/a/a/m/m/d/d;

    iget-object v1, p0, La/a/a/a/m/m/d/e$b;->b:La/a/a/a/m/m/d/e;

    .line 2
    iget-object v2, v1, La/a/a/a/m/m/d/e;->a:La/a/a/a/c;

    .line 3
    invoke-direct {v0, v2, v1}, La/a/a/a/m/m/d/d;-><init>(La/a/a/a/c;La/a/a/a/m/m/d/d$a;)V

    return-object v0
.end method
