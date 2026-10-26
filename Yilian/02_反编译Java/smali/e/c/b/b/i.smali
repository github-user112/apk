.class public final Le/c/b/b/i;
.super Le/c/b/b/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/b/b/i<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Le/c/b/b/n;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Le/c/b/b/n;-><init>(I)V

    .line 2
    invoke-direct {p0, v0}, Le/c/b/b/c;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x3

    const-string v1, "expectedValuesPerKey"

    .line 3
    invoke-static {v0, v1}, Ld/s/y;->l(ILjava/lang/String;)I

    iput v0, p0, Le/c/b/b/i;->g:I

    return-void
.end method


# virtual methods
.method public h()Ljava/util/Collection;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Le/c/b/b/i;->g:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method
