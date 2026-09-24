.class public La/a/a/a/l/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x3

.field public static c:I = 0x3

.field public static d:I = 0x1

.field public static e:I = 0x1

.field public static f:I = 0x1

.field public static g:Ljava/lang/String; = ""

.field public static h:Ljava/lang/String; = ""

.field public static i:Ljava/lang/String; = ""

.field public static j:Z

.field public static k:Z

.field public static l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static p:I

.field public static q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static r:Ljava/lang/String;

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:I

.field public static x:J

.field public static y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/a/a/l/b;->l:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/a/a/l/b;->m:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/a/a/l/b;->n:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/a/a/l/b;->o:Ljava/util/Map;

    const/16 v0, 0x1f4

    sput v0, La/a/a/a/l/b;->p:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, La/a/a/a/l/b;->q:Ljava/util/List;

    const-string v0, "keycode"

    sput-object v0, La/a/a/a/l/b;->r:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, La/a/a/a/l/b;->s:I

    const/4 v1, 0x2

    sput v1, La/a/a/a/l/b;->t:I

    const/4 v1, 0x3

    sput v1, La/a/a/a/l/b;->u:I

    sput v0, La/a/a/a/l/b;->v:I

    sput v0, La/a/a/a/l/b;->w:I

    const-wide/16 v1, 0x64

    sput-wide v1, La/a/a/a/l/b;->x:J

    sput v0, La/a/a/a/l/b;->y:I

    return-void
.end method
