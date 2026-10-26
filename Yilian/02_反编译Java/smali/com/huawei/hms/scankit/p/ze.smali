.class public Lcom/huawei/hms/scankit/p/ze;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/security/SecureRandom;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/p/ze;->a:Ljava/security/SecureRandom;

    return-void
.end method

.method public static a(F)F
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/p/ze;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextFloat()F

    move-result v0

    mul-float v0, v0, p0

    return v0
.end method

.method public static a(I)I
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/p/ze;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    return p0
.end method
