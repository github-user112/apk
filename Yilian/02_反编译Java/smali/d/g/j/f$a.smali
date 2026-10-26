.class public Ld/g/j/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/g/j/f;->c(Landroid/content/Context;Ld/g/j/e;Ld/g/j/c;II)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ld/g/j/f$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ld/g/j/e;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ld/g/j/e;I)V
    .locals 0

    iput-object p1, p0, Ld/g/j/f$a;->a:Ljava/lang/String;

    iput-object p2, p0, Ld/g/j/f$a;->b:Landroid/content/Context;

    iput-object p3, p0, Ld/g/j/f$a;->c:Ld/g/j/e;

    iput p4, p0, Ld/g/j/f$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ld/g/j/f$a;->a:Ljava/lang/String;

    iget-object v1, p0, Ld/g/j/f$a;->b:Landroid/content/Context;

    iget-object v2, p0, Ld/g/j/f$a;->c:Ld/g/j/e;

    iget v3, p0, Ld/g/j/f$a;->d:I

    invoke-static {v0, v1, v2, v3}, Ld/g/j/f;->a(Ljava/lang/String;Landroid/content/Context;Ld/g/j/e;I)Ld/g/j/f$e;

    move-result-object v0

    return-object v0
.end method
