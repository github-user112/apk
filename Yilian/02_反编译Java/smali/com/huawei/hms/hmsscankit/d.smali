.class public Lcom/huawei/hms/hmsscankit/d;
.super Lcom/huawei/hms/hmsscankit/api/IOnLightCallback$Stub;
.source ""


# instance fields
.field public final a:Lcom/huawei/hms/hmsscankit/OnLightVisibleCallBack;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/hmsscankit/OnLightVisibleCallBack;)V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/api/IOnLightCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/d;->a:Lcom/huawei/hms/hmsscankit/OnLightVisibleCallBack;

    return-void
.end method


# virtual methods
.method public onVisibleChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/d;->a:Lcom/huawei/hms/hmsscankit/OnLightVisibleCallBack;

    invoke-interface {v0, p1}, Lcom/huawei/hms/hmsscankit/OnLightVisibleCallBack;->onVisibleChanged(Z)V

    return-void
.end method
