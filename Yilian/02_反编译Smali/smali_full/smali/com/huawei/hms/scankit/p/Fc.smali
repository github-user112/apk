.class public Lcom/huawei/hms/scankit/p/Fc;
.super Ljava/text/SimpleDateFormat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/p/Hc;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hms/scankit/p/Hc;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/Hc;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Fc;->a:Lcom/huawei/hms/scankit/p/Hc;

    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string p1, "UTC"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method
