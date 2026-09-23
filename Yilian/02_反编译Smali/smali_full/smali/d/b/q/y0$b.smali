.class public Ld/b/q/y0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/q/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/b/q/y0;


# direct methods
.method public constructor <init>(Ld/b/q/y0;)V
    .locals 0

    iput-object p1, p0, Ld/b/q/y0$b;->a:Ld/b/q/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ld/b/q/y0$b;->a:Ld/b/q/y0;

    invoke-virtual {v0}, Ld/b/q/y0;->b()V

    return-void
.end method
