.class public final Lb8/k;
.super Ly8/c;


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Lb0/f;


# direct methods
.method public constructor <init>(Lb0/f;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb8/k;->f:Lb0/f;

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
    .locals 1

    .line 1
    iput-object p1, p0, Lb8/k;->d:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lb8/k;->e:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lb8/k;->e:I

    .line 9
    .line 10
    iget-object p1, p0, Lb8/k;->f:Lb0/f;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Lb0/f;->a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
