.class public final enum La/a/a/a/a/i/b/a$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/i/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/a/a/a/i/b/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:La/a/a/a/a/i/b/a$a;

.field public static final enum c:La/a/a/a/a/i/b/a$a;

.field public static final enum d:La/a/a/a/a/i/b/a$a;

.field public static final synthetic e:[La/a/a/a/a/i/b/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, La/a/a/a/a/i/b/a$a;

    const-string v1, "TRIANGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/a/a/a/i/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/a/a/i/b/a$a;->b:La/a/a/a/a/i/b/a$a;

    new-instance v1, La/a/a/a/a/i/b/a$a;

    const-string v3, "RECTANGLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, La/a/a/a/a/i/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/a/a/a/a/i/b/a$a;->c:La/a/a/a/a/i/b/a$a;

    new-instance v3, La/a/a/a/a/i/b/a$a;

    const-string v5, "FULL_RECTANGLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, La/a/a/a/a/i/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, La/a/a/a/a/i/b/a$a;->d:La/a/a/a/a/i/b/a$a;

    const/4 v5, 0x3

    new-array v5, v5, [La/a/a/a/a/i/b/a$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, La/a/a/a/a/i/b/a$a;->e:[La/a/a/a/a/i/b/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/a/a/i/b/a$a;
    .locals 1

    const-class v0, La/a/a/a/a/i/b/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/a/a/a/i/b/a$a;

    return-object p0
.end method

.method public static values()[La/a/a/a/a/i/b/a$a;
    .locals 1

    sget-object v0, La/a/a/a/a/i/b/a$a;->e:[La/a/a/a/a/i/b/a$a;

    invoke-virtual {v0}, [La/a/a/a/a/i/b/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/a/a/i/b/a$a;

    return-object v0
.end method
