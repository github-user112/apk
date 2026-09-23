.class public Lcom/huawei/hms/scankit/p/Gc;
.super Ljava/util/LinkedHashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/p/Hc;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hms/scankit/p/Hc;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/Hc;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Gc;->a:Lcom/huawei/hms/scankit/p/Hc;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/Gc;->a:Lcom/huawei/hms/scankit/p/Hc;

    iget-object p1, p1, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method
