.class public Lb/k/a/b$b;
.super Lb/j/p;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final b:Lb/j/q;


# instance fields
.field public c:Lb/d/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/d/i<",
            "Lb/k/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/k/a/b$b$a;

    invoke-direct {v0}, Lb/k/a/b$b$a;-><init>()V

    sput-object v0, Lb/k/a/b$b;->b:Lb/j/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/j/p;-><init>()V

    new-instance v0, Lb/d/i;

    invoke-direct {v0}, Lb/d/i;-><init>()V

    iput-object v0, p0, Lb/k/a/b$b;->c:Lb/d/i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lb/k/a/b$b;->c:Lb/d/i;

    invoke-virtual {v0}, Lb/d/i;->e()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lb/k/a/b$b;->c:Lb/d/i;

    .line 1
    iget v3, v0, Lb/d/i;->e:I

    iget-object v4, v0, Lb/d/i;->d:[Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aput-object v2, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iput v1, v0, Lb/d/i;->e:I

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lb/k/a/b$b;->c:Lb/d/i;

    invoke-virtual {v0, v1}, Lb/d/i;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/a/b$a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method
