.class public La/c/a/p$c;
.super La/c/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "La/c/a/p<",
        "TT;*>;>",
        "La/c/a/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:La/c/a/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/c/a/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, La/c/a/b;-><init>()V

    iput-object p1, p0, La/c/a/p$c;->a:La/c/a/p;

    return-void
.end method


# virtual methods
.method public a(La/c/a/h;La/c/a/m;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, La/c/a/p$c;->a:La/c/a/p;

    invoke-static {v0, p1, p2}, La/c/a/p;->parsePartialFrom(La/c/a/p;La/c/a/h;La/c/a/m;)La/c/a/p;

    move-result-object p1

    return-object p1
.end method
