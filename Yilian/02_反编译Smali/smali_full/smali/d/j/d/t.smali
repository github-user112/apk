.class public Ld/j/d/t;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ld/j/d/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/j/d/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld/j/d/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/j/d/v<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/j/d/t;->a:Ld/j/d/v;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ld/j/d/t;->a:Ld/j/d/v;

    iget-object v0, v0, Ld/j/d/v;->d:Ld/j/d/y;

    invoke-virtual {v0}, Ld/j/d/y;->T()V

    return-void
.end method
