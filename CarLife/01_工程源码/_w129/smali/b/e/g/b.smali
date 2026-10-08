.class public Lb/e/g/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lb/e/g/m;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lb/e/g/c;Lb/e/g/m;I)V
    .locals 0

    iput-object p2, p0, Lb/e/g/b;->b:Lb/e/g/m;

    iput p3, p0, Lb/e/g/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lb/e/g/b;->b:Lb/e/g/m;

    check-cast v0, Lb/e/d/d$a;

    .line 1
    iget-object v0, v0, Lb/e/d/d$a;->a:Lb/e/c/b/g;

    if-eqz v0, :cond_0

    check-cast v0, Lb/b/h/z$a;

    :cond_0
    return-void
.end method
