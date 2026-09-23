.class public final Lcom/huawei/hms/scankit/p/nb$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/nb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lcom/huawei/hms/scankit/p/nb$a;


# direct methods
.method public constructor <init>(ILcom/huawei/hms/scankit/p/nb$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/huawei/hms/scankit/p/nb$b;->a:I

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/huawei/hms/scankit/p/nb$a;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/nb$b;->b:[Lcom/huawei/hms/scankit/p/nb$a;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/huawei/hms/scankit/p/nb$a;Lcom/huawei/hms/scankit/p/mb;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/p/nb$b;-><init>(ILcom/huawei/hms/scankit/p/nb$a;)V

    return-void
.end method

.method public constructor <init>(ILcom/huawei/hms/scankit/p/nb$a;Lcom/huawei/hms/scankit/p/nb$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/huawei/hms/scankit/p/nb$b;->a:I

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/huawei/hms/scankit/p/nb$a;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/nb$b;->b:[Lcom/huawei/hms/scankit/p/nb$a;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/huawei/hms/scankit/p/nb$a;Lcom/huawei/hms/scankit/p/nb$a;Lcom/huawei/hms/scankit/p/mb;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/scankit/p/nb$b;-><init>(ILcom/huawei/hms/scankit/p/nb$a;Lcom/huawei/hms/scankit/p/nb$a;)V

    return-void
.end method


# virtual methods
.method public a()[Lcom/huawei/hms/scankit/p/nb$a;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/nb$b;->b:[Lcom/huawei/hms/scankit/p/nb$a;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/nb$b;->a:I

    return v0
.end method
