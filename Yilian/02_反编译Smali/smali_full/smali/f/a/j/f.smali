.class public final Lf/a/j/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/b/d/b/e;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lf/a/j/b;

.field public c:Z

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/j/f;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lf/a/j/f;

.field public f:Lf/a/j/f;

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/a/j/f;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/j/f;->c:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf/a/j/f;->d:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lf/a/j/f;->g:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lf/a/j/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
