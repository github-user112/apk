.class public final La/a/b/l/c/c$b$d;
.super Lc/k/b/d;
.source ""

# interfaces
.implements Lc/k/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/l/c/c$b;->s(La/a/b/l/c/d/c;JJ)V
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

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public constructor <init>(La/a/b/l/c/c$b;La/a/b/l/c/d/c;JJ)V
    .locals 0

    iput-object p1, p0, La/a/b/l/c/c$b$d;->b:La/a/b/l/c/c$b;

    iput-object p2, p0, La/a/b/l/c/c$b$d;->c:La/a/b/l/c/d/c;

    iput-wide p3, p0, La/a/b/l/c/c$b$d;->d:J

    iput-wide p5, p0, La/a/b/l/c/c$b$d;->e:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc/k/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, La/a/b/l/c/c$b$d;->b:La/a/b/l/c/c$b;

    .line 2
    iget-object v1, v0, La/a/b/l/c/c$b;->b:La/a/b/l/c/c$a;

    .line 3
    iget-object v2, p0, La/a/b/l/c/c$b$d;->c:La/a/b/l/c/d/c;

    iget-wide v3, p0, La/a/b/l/c/c$b$d;->d:J

    iget-wide v5, p0, La/a/b/l/c/c$b$d;->e:J

    invoke-interface/range {v1 .. v6}, La/a/b/l/c/c$a;->s(La/a/b/l/c/d/c;JJ)V

    .line 4
    sget-object v0, Lc/g;->a:Lc/g;

    return-object v0
.end method
