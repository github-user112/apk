.class public final Lhb/s;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final a:Lhb/t;

.field public final b:Lhb/w;

.field public final c:Lva/a;

.field public final d:I

.field public final e:I

.field public final f:Lpa/a1;


# direct methods
.method public constructor <init>(Lhb/t;Lhb/w;Lva/a;IILpa/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhb/s;->a:Lhb/t;

    .line 5
    .line 6
    iput-object p2, p0, Lhb/s;->b:Lhb/w;

    .line 7
    .line 8
    iput-object p3, p0, Lhb/s;->c:Lva/a;

    .line 9
    .line 10
    iput p4, p0, Lhb/s;->d:I

    .line 11
    .line 12
    iput p5, p0, Lhb/s;->e:I

    .line 13
    .line 14
    iput-object p6, p0, Lhb/s;->f:Lpa/a1;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lhb/s;->a:Lhb/t;

    .line 2
    .line 3
    iget-object v0, v0, Lhb/t;->a:Lhb/k;

    .line 4
    .line 5
    iget-object v0, v0, Lhb/k;->a:Lhb/i;

    .line 6
    .line 7
    iget-object v1, v0, Lhb/i;->e:Lhb/a;

    .line 8
    .line 9
    iget-object v2, p0, Lhb/s;->b:Lhb/w;

    .line 10
    .line 11
    iget-object v3, p0, Lhb/s;->c:Lva/a;

    .line 12
    .line 13
    iget v4, p0, Lhb/s;->d:I

    .line 14
    .line 15
    iget v5, p0, Lhb/s;->e:I

    .line 16
    .line 17
    iget-object v6, p0, Lhb/s;->f:Lpa/a1;

    .line 18
    .line 19
    invoke-interface/range {v1 .. v6}, Lhb/c;->f0(Lhb/w;Lva/a;IILpa/a1;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
