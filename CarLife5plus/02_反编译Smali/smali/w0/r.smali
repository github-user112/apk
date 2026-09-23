.class public final Lw0/r;
.super Ly8/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/Object;

.field public f:Ljc/c;

.field public g:J

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lw0/t;

.field public j:I


# direct methods
.method public constructor <init>(Lw0/t;Ly8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw0/r;->i:Lw0/t;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ly8/c;-><init>(Lw8/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iput-object p1, p0, Lw0/r;->h:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lw0/r;->j:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lw0/r;->j:I

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    iget-object v0, p0, Lw0/r;->i:Lw0/t;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    move-object v5, p0

    .line 17
    invoke-static/range {v0 .. v5}, Lw0/t;->a(Lw0/t;Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassifier;Ly8/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
