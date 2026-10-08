.class public Lb/e/g/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lb/e/g/m;

.field public final synthetic c:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lb/e/g/c;Lb/e/g/m;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p2, p0, Lb/e/g/a;->b:Lb/e/g/m;

    iput-object p3, p0, Lb/e/g/a;->c:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/e/g/a;->b:Lb/e/g/m;

    iget-object v1, p0, Lb/e/g/a;->c:Landroid/graphics/Typeface;

    check-cast v0, Lb/e/d/d$a;

    .line 1
    iget-object v0, v0, Lb/e/d/d$a;->a:Lb/e/c/b/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lb/e/c/b/g;->d(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
