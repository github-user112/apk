.class public Le/c/b/b/k;
.super Le/c/b/b/n$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/b/b/n<",
        "TK;TV;>.b<TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Le/c/b/b/n;


# direct methods
.method public constructor <init>(Le/c/b/b/n;)V
    .locals 1

    iput-object p1, p0, Le/c/b/b/k;->e:Le/c/b/b/n;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/c/b/b/n$b;-><init>(Le/c/b/b/n;Le/c/b/b/k;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Le/c/b/b/k;->e:Le/c/b/b/n;

    iget-object v0, v0, Le/c/b/b/n;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
