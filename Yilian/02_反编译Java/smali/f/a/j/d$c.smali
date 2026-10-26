.class public Lf/a/j/d$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lf/a/j/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/j/k<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:I

.field public d:Lf/a/j/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/j/k<",
            "*>;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Lf/a/j/l;

.field public g:Le/a/b/b/c/f;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lf/a/j/e;",
            "Lf/a/j/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lf/a/j/h;",
            "Lf/a/j/d$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/a/j/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/j/k<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lf/a/j/d$c;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lf/a/j/d$c;->i:Ljava/util/Map;

    iput-object p1, p0, Lf/a/j/d$c;->a:Lf/a/j/k;

    return-void
.end method
