.class public final enum Le/a/b/b/c/g0$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/b/c/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/b/b/c/g0$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/a/b/b/c/g0$b;

.field public static final enum b:Le/a/b/b/c/g0$b;

.field public static final enum c:Le/a/b/b/c/g0$b;

.field public static final synthetic d:[Le/a/b/b/c/g0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Le/a/b/b/c/g0$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/a/b/b/c/g0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/b/b/c/g0$b;->a:Le/a/b/b/c/g0$b;

    new-instance v0, Le/a/b/b/c/g0$b;

    const-string v1, "TYPE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Le/a/b/b/c/g0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/b/b/c/g0$b;->b:Le/a/b/b/c/g0$b;

    new-instance v0, Le/a/b/b/c/g0$b;

    const-string v1, "INSTANCE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Le/a/b/b/c/g0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/b/b/c/g0$b;->c:Le/a/b/b/c/g0$b;

    const/4 v1, 0x3

    new-array v1, v1, [Le/a/b/b/c/g0$b;

    sget-object v5, Le/a/b/b/c/g0$b;->a:Le/a/b/b/c/g0$b;

    aput-object v5, v1, v2

    sget-object v2, Le/a/b/b/c/g0$b;->b:Le/a/b/b/c/g0$b;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Le/a/b/b/c/g0$b;->d:[Le/a/b/b/c/g0$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/a/b/b/c/g0$b;
    .locals 1

    const-class v0, Le/a/b/b/c/g0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/b/b/c/g0$b;

    return-object p0
.end method

.method public static values()[Le/a/b/b/c/g0$b;
    .locals 1

    sget-object v0, Le/a/b/b/c/g0$b;->d:[Le/a/b/b/c/g0$b;

    invoke-virtual {v0}, [Le/a/b/b/c/g0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/b/b/c/g0$b;

    return-object v0
.end method
