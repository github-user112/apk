.class public Lcom/huawei/hms/scankit/p/Ic;
.super Ljava/text/SimpleDateFormat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/p/Kc;->a(ZI)Lcom/huawei/hms/scankit/p/Kc$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hms/scankit/p/Kc;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/Kc;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Ic;->a:Lcom/huawei/hms/scankit/p/Kc;

    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string p1, "UTC"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method
