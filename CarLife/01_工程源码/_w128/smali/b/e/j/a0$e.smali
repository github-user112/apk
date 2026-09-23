.class public Lb/e/j/a0$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/e/j/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Lb/e/j/a0;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lb/e/j/a0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/e/j/a0;-><init>(Lb/e/j/a0;)V

    invoke-direct {p0, v0}, Lb/e/j/a0$e;-><init>(Lb/e/j/a0;)V

    return-void
.end method

.method public constructor <init>(Lb/e/j/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/e/j/a0$e;->a:Lb/e/j/a0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public b()Lb/e/j/a0;
    .locals 1

    invoke-virtual {p0}, Lb/e/j/a0$e;->a()V

    iget-object v0, p0, Lb/e/j/a0$e;->a:Lb/e/j/a0;

    return-object v0
.end method

.method public c(Lb/e/d/b;)V
    .locals 0

    return-void
.end method

.method public d(Lb/e/d/b;)V
    .locals 0

    return-void
.end method
