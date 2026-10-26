.class public final enum Le/c/b/a/a$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/c/b/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/c/b/a/a$a;

.field public static final enum b:Le/c/b/a/a$a;

.field public static final enum c:Le/c/b/a/a$a;

.field public static final enum d:Le/c/b/a/a$a;

.field public static final synthetic e:[Le/c/b/a/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Le/c/b/a/a$a;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/c/b/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/b/a/a$a;->a:Le/c/b/a/a$a;

    new-instance v0, Le/c/b/a/a$a;

    const-string v1, "NOT_READY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Le/c/b/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/b/a/a$a;->b:Le/c/b/a/a$a;

    new-instance v0, Le/c/b/a/a$a;

    const-string v1, "DONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Le/c/b/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/b/a/a$a;->c:Le/c/b/a/a$a;

    new-instance v0, Le/c/b/a/a$a;

    const-string v1, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Le/c/b/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/b/a/a$a;->d:Le/c/b/a/a$a;

    const/4 v1, 0x4

    new-array v1, v1, [Le/c/b/a/a$a;

    sget-object v6, Le/c/b/a/a$a;->a:Le/c/b/a/a$a;

    aput-object v6, v1, v2

    sget-object v2, Le/c/b/a/a$a;->b:Le/c/b/a/a$a;

    aput-object v2, v1, v3

    sget-object v2, Le/c/b/a/a$a;->c:Le/c/b/a/a$a;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Le/c/b/a/a$a;->e:[Le/c/b/a/a$a;

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

.method public static valueOf(Ljava/lang/String;)Le/c/b/a/a$a;
    .locals 1

    const-class v0, Le/c/b/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/c/b/a/a$a;

    return-object p0
.end method

.method public static values()[Le/c/b/a/a$a;
    .locals 1

    sget-object v0, Le/c/b/a/a$a;->e:[Le/c/b/a/a$a;

    invoke-virtual {v0}, [Le/c/b/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/c/b/a/a$a;

    return-object v0
.end method
