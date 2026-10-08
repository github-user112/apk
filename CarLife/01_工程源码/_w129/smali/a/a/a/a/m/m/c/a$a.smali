.class public final La/a/a/a/m/m/c/a$a;
.super Lc/k/b/d;
.source ""

# interfaces
.implements Lc/k/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/m/m/c/a;-><init>(La/a/a/a/c;La/a/a/a/a/j/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/k/b/d;",
        "Lc/k/a/b<",
        "La/a/a/a/a/j/f/b;",
        "Lc/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:La/a/a/a/m/m/c/a;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/c/a;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/m/m/c/a$a;->b:La/a/a/a/m/m/c/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lc/k/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, La/a/a/a/a/j/f/b;

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/m/m/c/a$a;->b:La/a/a/a/m/m/c/a;

    .line 2
    iput-object p1, v0, La/a/a/a/m/m/c/a;->c:La/a/a/a/a/j/f/b;

    .line 3
    invoke-virtual {v0}, La/a/a/a/a/j/c;->b()V

    .line 4
    sget-object p1, Lc/g;->a:Lc/g;

    return-object p1
.end method
