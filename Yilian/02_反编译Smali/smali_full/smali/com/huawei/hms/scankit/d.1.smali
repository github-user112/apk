.class public Lcom/huawei/hms/scankit/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/huawei/hms/scankit/B;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/huawei/hms/scankit/e;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/e;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/d;->a:Lcom/huawei/hms/scankit/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lcom/huawei/hms/ml/scan/HmsScan;Landroid/graphics/Bitmap;F)V
    .locals 0

    iget-object p3, p0, Lcom/huawei/hms/scankit/d;->a:Lcom/huawei/hms/scankit/e;

    invoke-virtual {p3, p1, p2}, Lcom/huawei/hms/scankit/e;->a([Lcom/huawei/hms/ml/scan/HmsScan;Landroid/graphics/Bitmap;)V

    return-void
.end method
