.class public abstract Lcom/huawei/hms/scankit/p/yd;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lcom/huawei/hms/scankit/p/yd;


# instance fields
.field public final b:Lcom/huawei/hms/scankit/p/yd;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/huawei/hms/scankit/p/wd;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/hms/scankit/p/wd;-><init>(Lcom/huawei/hms/scankit/p/yd;II)V

    sput-object v0, Lcom/huawei/hms/scankit/p/yd;->a:Lcom/huawei/hms/scankit/p/yd;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/scankit/p/yd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/yd;->b:Lcom/huawei/hms/scankit/p/yd;

    return-void
.end method


# virtual methods
.method public final a()Lcom/huawei/hms/scankit/p/yd;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/yd;->b:Lcom/huawei/hms/scankit/p/yd;

    return-object v0
.end method

.method public final a(II)Lcom/huawei/hms/scankit/p/yd;
    .locals 1

    new-instance v0, Lcom/huawei/hms/scankit/p/wd;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/hms/scankit/p/wd;-><init>(Lcom/huawei/hms/scankit/p/yd;II)V

    return-object v0
.end method

.method public abstract a(Lcom/huawei/hms/scankit/p/ab;[B)V
.end method

.method public final b(II)Lcom/huawei/hms/scankit/p/yd;
    .locals 1

    new-instance v0, Lcom/huawei/hms/scankit/p/td;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/hms/scankit/p/td;-><init>(Lcom/huawei/hms/scankit/p/yd;II)V

    return-object v0
.end method
