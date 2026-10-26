.class public final enum Lf/a/i/f/a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/i/f/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/a/i/f/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lf/a/i/f/a;

.field public static final synthetic c:[Lf/a/i/f/a;


# instance fields
.field public a:Lf/a/i/f/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf/a/i/f/a;

    const-string v1, "logger"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf/a/i/f/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/a/i/f/a;->b:Lf/a/i/f/a;

    const/4 v1, 0x1

    new-array v1, v1, [Lf/a/i/f/a;

    aput-object v0, v1, v2

    sput-object v1, Lf/a/i/f/a;->c:[Lf/a/i/f/a;

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

.method public static valueOf(Ljava/lang/String;)Lf/a/i/f/a;
    .locals 1

    const-class v0, Lf/a/i/f/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/a/i/f/a;

    return-object p0
.end method

.method public static values()[Lf/a/i/f/a;
    .locals 1

    sget-object v0, Lf/a/i/f/a;->c:[Lf/a/i/f/a;

    invoke-virtual {v0}, [Lf/a/i/f/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/a/i/f/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lf/a/i/f/a;->a:Lf/a/i/f/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lf/a/i/f/a$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
