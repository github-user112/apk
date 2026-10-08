.class public final La/a/b/l/c/c$b$a;
.super Lc/k/b/d;
.source ""

# interfaces
.implements Lc/k/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/l/c/c$b;->b(La/a/b/l/c/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/k/b/d;",
        "Lc/k/a/a<",
        "Lc/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:La/a/b/l/c/c$b;

.field public final synthetic c:La/a/b/l/c/d/c;


# direct methods
.method public constructor <init>(La/a/b/l/c/c$b;La/a/b/l/c/d/c;)V
    .locals 0

    iput-object p1, p0, La/a/b/l/c/c$b$a;->b:La/a/b/l/c/c$b;

    iput-object p2, p0, La/a/b/l/c/c$b$a;->c:La/a/b/l/c/d/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc/k/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, La/a/b/l/c/c$b$a;->b:La/a/b/l/c/c$b;

    .line 2
    iget-object v0, v0, La/a/b/l/c/c$b;->b:La/a/b/l/c/c$a;

    .line 3
    iget-object v1, p0, La/a/b/l/c/c$b$a;->c:La/a/b/l/c/d/c;

    invoke-interface {v0, v1}, La/a/b/l/c/c$a;->b(La/a/b/l/c/d/c;)V

    .line 4
    sget-object v0, Lc/g;->a:Lc/g;

    return-object v0
.end method
