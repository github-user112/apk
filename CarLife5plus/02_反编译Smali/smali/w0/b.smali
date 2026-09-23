.class public final synthetic Lw0/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lw0/q;

.field public final synthetic b:Z

.field public final synthetic c:Lm3/j;

.field public final synthetic d:Z

.field public final synthetic e:J

.field public final synthetic f:F

.field public final synthetic g:Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lw0/q;ZLm3/j;ZJFLandroidx/compose/ui/input/pointer/SuspendPointerInputElement;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw0/b;->a:Lw0/q;

    .line 5
    .line 6
    iput-boolean p2, p0, Lw0/b;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lw0/b;->c:Lm3/j;

    .line 9
    .line 10
    iput-boolean p4, p0, Lw0/b;->d:Z

    .line 11
    .line 12
    iput-wide p5, p0, Lw0/b;->e:J

    .line 13
    .line 14
    iput p7, p0, Lw0/b;->f:F

    .line 15
    .line 16
    iput-object p8, p0, Lw0/b;->g:Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 17
    .line 18
    iput p9, p0, Lw0/b;->h:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lw0/b;->h:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    iget-object v0, p0, Lw0/b;->a:Lw0/q;

    .line 18
    .line 19
    iget-boolean v1, p0, Lw0/b;->b:Z

    .line 20
    .line 21
    iget-object v2, p0, Lw0/b;->c:Lm3/j;

    .line 22
    .line 23
    iget-boolean v3, p0, Lw0/b;->d:Z

    .line 24
    .line 25
    iget-wide v4, p0, Lw0/b;->e:J

    .line 26
    .line 27
    iget v6, p0, Lw0/b;->f:F

    .line 28
    .line 29
    iget-object v7, p0, Lw0/b;->g:Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    .line 30
    .line 31
    invoke-static/range {v0 .. v9}, Lw0/y0;->d(Lw0/q;ZLm3/j;ZJFLandroidx/compose/ui/input/pointer/SuspendPointerInputElement;Lf1/s;I)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 35
    .line 36
    return-object p1
.end method
