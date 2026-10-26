.class public final Ld/j/d/g0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/j/d/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/fragment/app/Fragment;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ld/l/e$b;

.field public h:Ld/l/e$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld/j/d/g0$a;->a:I

    iput-object p2, p0, Ld/j/d/g0$a;->b:Landroidx/fragment/app/Fragment;

    sget-object p1, Ld/l/e$b;->e:Ld/l/e$b;

    iput-object p1, p0, Ld/j/d/g0$a;->g:Ld/l/e$b;

    iput-object p1, p0, Ld/j/d/g0$a;->h:Ld/l/e$b;

    return-void
.end method
