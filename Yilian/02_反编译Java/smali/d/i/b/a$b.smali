.class public Ld/i/b/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/i/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/i/b/a;


# direct methods
.method public constructor <init>(Ld/i/b/a;)V
    .locals 0

    iput-object p1, p0, Ld/i/b/a$b;->a:Ld/i/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/i/b/a$b;->a:Ld/i/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/i/b/a;->s(I)V

    return-void
.end method
