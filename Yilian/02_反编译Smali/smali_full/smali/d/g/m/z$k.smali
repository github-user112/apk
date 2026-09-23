.class public Ld/g/m/z$k;
.super Ld/g/m/z$j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/g/m/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# static fields
.field public static final r:Ld/g/m/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Ld/g/m/z;->f(Landroid/view/WindowInsets;)Ld/g/m/z;

    move-result-object v0

    sput-object v0, Ld/g/m/z$k;->r:Ld/g/m/z;

    return-void
.end method

.method public constructor <init>(Ld/g/m/z;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/g/m/z$j;-><init>(Ld/g/m/z;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method
