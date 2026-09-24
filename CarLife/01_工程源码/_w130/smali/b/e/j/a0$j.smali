.class public Lb/e/j/a0$j;
.super Lb/e/j/a0$i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/e/j/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# static fields
.field public static final n:Lb/e/j/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Lb/e/j/a0;->h(Landroid/view/WindowInsets;)Lb/e/j/a0;

    move-result-object v0

    sput-object v0, Lb/e/j/a0$j;->n:Lb/e/j/a0;

    return-void
.end method

.method public constructor <init>(Lb/e/j/a0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/e/j/a0$i;-><init>(Lb/e/j/a0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method
