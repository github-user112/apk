.class public Ld/m/a/b$c;
.super Ld/l/s;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/m/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final d:Ld/l/u;


# instance fields
.field public c:Ld/e/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/e/i<",
            "Ld/m/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/m/a/b$c$a;

    invoke-direct {v0}, Ld/m/a/b$c$a;-><init>()V

    sput-object v0, Ld/m/a/b$c;->d:Ld/l/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld/l/s;-><init>()V

    new-instance v0, Ld/e/i;

    invoke-direct {v0}, Ld/e/i;-><init>()V

    iput-object v0, p0, Ld/m/a/b$c;->c:Ld/e/i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Ld/m/a/b$c;->c:Ld/e/i;

    invoke-virtual {v0}, Ld/e/i;->f()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Ld/m/a/b$c;->c:Ld/e/i;

    invoke-virtual {v0, v2}, Ld/e/i;->g(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/m/a/b$a;

    .line 1
    throw v1

    .line 2
    :cond_0
    iget-object v0, p0, Ld/m/a/b$c;->c:Ld/e/i;

    .line 3
    iget v3, v0, Ld/e/i;->d:I

    iget-object v4, v0, Ld/e/i;->c:[Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aput-object v1, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iput v2, v0, Ld/e/i;->d:I

    iput-boolean v2, v0, Ld/e/i;->a:Z

    return-void
.end method
