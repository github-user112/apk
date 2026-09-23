.class public final enum Ld/j/d/u0$d$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/j/d/u0$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld/j/d/u0$d$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ld/j/d/u0$d$c;

.field public static final enum b:Ld/j/d/u0$d$c;

.field public static final enum c:Ld/j/d/u0$d$c;

.field public static final enum d:Ld/j/d/u0$d$c;

.field public static final synthetic e:[Ld/j/d/u0$d$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Ld/j/d/u0$d$c;

    const-string v1, "REMOVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld/j/d/u0$d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/j/d/u0$d$c;->a:Ld/j/d/u0$d$c;

    new-instance v0, Ld/j/d/u0$d$c;

    const-string v1, "VISIBLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ld/j/d/u0$d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/j/d/u0$d$c;->b:Ld/j/d/u0$d$c;

    new-instance v0, Ld/j/d/u0$d$c;

    const-string v1, "GONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ld/j/d/u0$d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/j/d/u0$d$c;->c:Ld/j/d/u0$d$c;

    new-instance v0, Ld/j/d/u0$d$c;

    const-string v1, "INVISIBLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ld/j/d/u0$d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/j/d/u0$d$c;->d:Ld/j/d/u0$d$c;

    const/4 v1, 0x4

    new-array v1, v1, [Ld/j/d/u0$d$c;

    sget-object v6, Ld/j/d/u0$d$c;->a:Ld/j/d/u0$d$c;

    aput-object v6, v1, v2

    sget-object v2, Ld/j/d/u0$d$c;->b:Ld/j/d/u0$d$c;

    aput-object v2, v1, v3

    sget-object v2, Ld/j/d/u0$d$c;->c:Ld/j/d/u0$d$c;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Ld/j/d/u0$d$c;->e:[Ld/j/d/u0$d$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static b(I)Ld/j/d/u0$d$c;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    sget-object p0, Ld/j/d/u0$d$c;->c:Ld/j/d/u0$d$c;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown visibility "

    invoke-static {v1, p0}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Ld/j/d/u0$d$c;->d:Ld/j/d/u0$d$c;

    return-object p0

    :cond_2
    sget-object p0, Ld/j/d/u0$d$c;->b:Ld/j/d/u0$d$c;

    return-object p0
.end method

.method public static c(Landroid/view/View;)Ld/j/d/u0$d$c;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ld/j/d/u0$d$c;->d:Ld/j/d/u0$d$c;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-static {p0}, Ld/j/d/u0$d$c;->b(I)Ld/j/d/u0$d$c;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ld/j/d/u0$d$c;
    .locals 1

    const-class v0, Ld/j/d/u0$d$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld/j/d/u0$d$c;

    return-object p0
.end method

.method public static values()[Ld/j/d/u0$d$c;
    .locals 1

    sget-object v0, Ld/j/d/u0$d$c;->e:[Ld/j/d/u0$d$c;

    invoke-virtual {v0}, [Ld/j/d/u0$d$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/j/d/u0$d$c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    const-string v4, "SpecialEffectsController: Setting view "

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v2}, Ld/j/d/y;->M(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to INVISIBLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ld/j/d/y;->M(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to GONE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v0, 0x8

    goto :goto_0

    :cond_4
    invoke-static {v2}, Ld/j/d/y;->M(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to VISIBLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-static {v2}, Ld/j/d/y;->M(I)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpecialEffectsController: Removing view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    :goto_1
    return-void
.end method
