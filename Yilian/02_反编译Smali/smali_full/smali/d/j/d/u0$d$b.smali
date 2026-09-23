.class public final enum Ld/j/d/u0$d$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/j/d/u0$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld/j/d/u0$d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ld/j/d/u0$d$b;

.field public static final enum b:Ld/j/d/u0$d$b;

.field public static final enum c:Ld/j/d/u0$d$b;

.field public static final synthetic d:[Ld/j/d/u0$d$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Ld/j/d/u0$d$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld/j/d/u0$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/j/d/u0$d$b;->a:Ld/j/d/u0$d$b;

    new-instance v0, Ld/j/d/u0$d$b;

    const-string v1, "ADDING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ld/j/d/u0$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/j/d/u0$d$b;->b:Ld/j/d/u0$d$b;

    new-instance v0, Ld/j/d/u0$d$b;

    const-string v1, "REMOVING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ld/j/d/u0$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld/j/d/u0$d$b;->c:Ld/j/d/u0$d$b;

    const/4 v1, 0x3

    new-array v1, v1, [Ld/j/d/u0$d$b;

    sget-object v5, Ld/j/d/u0$d$b;->a:Ld/j/d/u0$d$b;

    aput-object v5, v1, v2

    sget-object v2, Ld/j/d/u0$d$b;->b:Ld/j/d/u0$d$b;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Ld/j/d/u0$d$b;->d:[Ld/j/d/u0$d$b;

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

.method public static valueOf(Ljava/lang/String;)Ld/j/d/u0$d$b;
    .locals 1

    const-class v0, Ld/j/d/u0$d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld/j/d/u0$d$b;

    return-object p0
.end method

.method public static values()[Ld/j/d/u0$d$b;
    .locals 1

    sget-object v0, Ld/j/d/u0$d$b;->d:[Ld/j/d/u0$d$b;

    invoke-virtual {v0}, [Ld/j/d/u0$d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/j/d/u0$d$b;

    return-object v0
.end method
