.class public final La/a/b/p/c;
.super La/a/a/a/d;
.source ""


# instance fields
.field public final d:La/a/a/a/c;

.field public final e:La/a/a/a/m/g;

.field public final f:I


# direct methods
.method public constructor <init>(La/a/a/a/c;La/a/a/a/m/g;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, La/a/a/a/d;-><init>()V

    iput-object p1, p0, La/a/b/p/c;->d:La/a/a/a/c;

    iput-object p2, p0, La/a/b/p/c;->e:La/a/a/a/m/g;

    const/4 p1, 0x1

    iput p1, p0, La/a/b/p/c;->f:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, La/a/b/p/c;->f:I

    return v0
.end method

.method public y(II)V
    .locals 0

    return-void
.end method
