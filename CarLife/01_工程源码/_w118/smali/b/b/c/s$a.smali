.class public Lb/b/c/s$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/e/j/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/c/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/b/c/s;


# direct methods
.method public constructor <init>(Lb/b/c/s;)V
    .locals 0

    iput-object p1, p0, Lb/b/c/s$a;->b:Lb/b/c/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public H(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lb/b/c/s$a;->b:Lb/b/c/s;

    invoke-virtual {v0, p1}, Lb/b/c/s;->b(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
