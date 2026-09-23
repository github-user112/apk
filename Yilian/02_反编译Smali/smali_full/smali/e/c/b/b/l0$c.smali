.class public final Le/c/b/b/l0$c;
.super Le/c/b/b/s;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/b/s<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final transient c:[Ljava/lang/Object;

.field public final transient d:I

.field public final transient e:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Le/c/b/b/s;-><init>()V

    iput-object p1, p0, Le/c/b/b/l0$c;->c:[Ljava/lang/Object;

    iput p2, p0, Le/c/b/b/l0$c;->d:I

    iput p3, p0, Le/c/b/b/l0$c;->e:I

    return-void
.end method


# virtual methods
.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le/c/b/b/l0$c;->e:I

    invoke-static {p1, v0}, Le/c/b/a/f;->c(II)I

    iget-object v0, p0, Le/c/b/b/l0$c;->c:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Le/c/b/b/l0$c;->d:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Le/c/b/b/l0$c;->e:I

    return v0
.end method
