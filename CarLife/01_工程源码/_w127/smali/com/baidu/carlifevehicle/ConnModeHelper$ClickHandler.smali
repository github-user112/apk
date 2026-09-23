.class public Lcom/baidu/carlifevehicle/ConnModeHelper$ClickHandler;
.super Ljava/lang/Object;
.source "ConnModeHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlifevehicle/ConnModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/baidu/carlifevehicle/ConnModeHelper;->onModeClicked(I)V

    :cond_0
    return-void
.end method
