.class public Lb/p/a/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/p/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/p/a/b;


# direct methods
.method public constructor <init>(Lb/p/a/b;)V
    .locals 0

    iput-object p1, p0, Lb/p/a/b$c;->b:Lb/p/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/p/a/b$c;->b:Lb/p/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/p/a/b;->setScrollState(I)V

    iget-object v0, p0, Lb/p/a/b$c;->b:Lb/p/a/b;

    .line 1
    iget v1, v0, Lb/p/a/b;->k:I

    invoke-virtual {v0, v1}, Lb/p/a/b;->q(I)V

    return-void
.end method
