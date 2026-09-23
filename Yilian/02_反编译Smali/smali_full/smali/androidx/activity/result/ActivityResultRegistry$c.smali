.class public Landroidx/activity/result/ActivityResultRegistry$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/ActivityResultRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ld/a/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/e/b<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final b:Ld/a/e/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/e/f/a<",
            "*TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld/a/e/b;Ld/a/e/f/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/e/b<",
            "TO;>;",
            "Ld/a/e/f/a<",
            "*TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$c;->a:Ld/a/e/b;

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$c;->b:Ld/a/e/f/a;

    return-void
.end method
