.class public abstract Le/c/b/b/q$a;
.super Le/c/b/b/q$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/b/b/q$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Le/c/b/b/q$b;-><init>()V

    const-string v0, "initialCapacity"

    invoke-static {p1, v0}, Ld/s/y;->l(ILjava/lang/String;)I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Le/c/b/b/q$a;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Le/c/b/b/q$a;->b:I

    return-void
.end method
