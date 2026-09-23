.class public Lb/h/b/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lb/j/g;
.implements Lb/j/u;
.implements Lb/m/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/b/m$a;,
        Lb/h/b/m$d;,
        Lb/h/b/m$b;,
        Lb/h/b/m$c;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/Object;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Landroid/view/ViewGroup;

.field public H:Landroid/view/View;

.field public I:Z

.field public J:Z

.field public K:Lb/h/b/m$a;

.field public L:Z

.field public M:F

.field public N:Landroid/view/LayoutInflater;

.field public O:Z

.field public P:Lb/j/d$b;

.field public Q:Lb/j/h;

.field public R:Lb/h/b/w0;

.field public S:Lb/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/j/l<",
            "Lb/j/g;",
            ">;"
        }
    .end annotation
.end field

.field public T:Lb/m/b;

.field public final U:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/h/b/m$c;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Landroid/os/Bundle;

.field public e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroid/os/Bundle;

.field public g:Ljava/lang/String;

.field public h:Landroid/os/Bundle;

.field public i:Lb/h/b/m;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/Boolean;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:I

.field public t:Lb/h/b/c0;

.field public u:Lb/h/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/b/z<",
            "*>;"
        }
    .end annotation
.end field

.field public v:Lb/h/b/c0;

.field public w:Lb/h/b/m;

.field public x:I

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb/h/b/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/h/b/m;->c:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/h/b/m;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/h/b/m;->j:Ljava/lang/String;

    iput-object v0, p0, Lb/h/b/m;->l:Ljava/lang/Boolean;

    new-instance v0, Lb/h/b/d0;

    invoke-direct {v0}, Lb/h/b/d0;-><init>()V

    iput-object v0, p0, Lb/h/b/m;->v:Lb/h/b/c0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h/b/m;->E:Z

    iput-boolean v0, p0, Lb/h/b/m;->J:Z

    sget-object v0, Lb/j/d$b;->f:Lb/j/d$b;

    iput-object v0, p0, Lb/h/b/m;->P:Lb/j/d$b;

    new-instance v0, Lb/j/l;

    invoke-direct {v0}, Lb/j/l;-><init>()V

    iput-object v0, p0, Lb/h/b/m;->S:Lb/j/l;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/h/b/m;->U:Ljava/util/ArrayList;

    .line 1
    new-instance v0, Lb/j/h;

    invoke-direct {v0, p0}, Lb/j/h;-><init>(Lb/j/g;)V

    iput-object v0, p0, Lb/h/b/m;->Q:Lb/j/h;

    .line 2
    new-instance v0, Lb/m/b;

    invoke-direct {v0, p0}, Lb/m/b;-><init>(Lb/m/c;)V

    .line 3
    iput-object v0, p0, Lb/h/b/m;->T:Lb/m/b;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->u:Lb/h/b/z;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lb/h/b/m;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public A0(Landroid/content/Intent;I)V
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lb/h/b/m;->u:Lb/h/b/z;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lb/h/b/m;->q()Lb/h/b/c0;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lb/h/b/c0;->w:Lb/a/g/c;

    if-eqz v1, :cond_0

    new-instance v1, Lb/h/b/c0$k;

    iget-object v2, p0, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Lb/h/b/c0$k;-><init>(Ljava/lang/String;I)V

    iget-object p2, v0, Lb/h/b/c0;->z:Ljava/util/ArrayDeque;

    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object p2, v0, Lb/h/b/c0;->w:Lb/a/g/c;

    invoke-virtual {p2, p1}, Lb/a/g/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lb/h/b/c0;->q:Lb/h/b/z;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget-object p2, v0, Lb/h/b/z;->c:Landroid/content/Context;

    .line 4
    sget-object v0, Lb/e/c/a;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string v0, " not attached to Activity"

    invoke-static {p2, p0, v0}, La/b/a/a/a;->b(Ljava/lang/String;Lb/h/b/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final B()Z
    .locals 1

    iget v0, p0, Lb/h/b/m;->s:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B0()V
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/h/b/m;->c()Lb/h/b/m$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public C()Z
    .locals 2

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    const/4 v1, 0x0

    return v1
.end method

.method public final D()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/h/b/m;->w:Lb/h/b/m;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, v0, Lb/h/b/m;->n:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/h/b/m;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/h/b/m;->F:Z

    return-void
.end method

.method public F(IILandroid/content/Intent;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lb/h/b/c0;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " received the following in onActivityResult(): requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resultCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public G()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    iget-object v0, p0, Lb/h/b/m;->u:Lb/h/b/z;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, v0, Lb/h/b/z;->b:Landroid/app/Activity;

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lb/h/b/m;->F:Z

    invoke-virtual {p0, v0}, Lb/h/b/m;->H(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public H(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/h/b/m;->F:Z

    return-void
.end method

.method public I()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public J()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public K(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    if-eqz p1, :cond_0

    const-string v1, "android:support:fragments"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lb/h/b/m;->v:Lb/h/b/c0;

    invoke-virtual {v1, p1}, Lb/h/b/c0;->X(Landroid/os/Parcelable;)V

    iget-object p1, p0, Lb/h/b/m;->v:Lb/h/b/c0;

    invoke-virtual {p1}, Lb/h/b/c0;->m()V

    .line 2
    :cond_0
    iget-object p1, p0, Lb/h/b/m;->v:Lb/h/b/c0;

    .line 3
    iget v1, p1, Lb/h/b/c0;->p:I

    if-lt v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lb/h/b/c0;->m()V

    :cond_2
    return-void
.end method

.method public L()Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public M()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public N()V
    .locals 0

    return-void
.end method

.method public O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public P()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    return-void
.end method

.method public Q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    return-void
.end method

.method public R()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    return-void
.end method

.method public S(Z)V
    .locals 0

    return-void
.end method

.method public T()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    return-void
.end method

.method public U(Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/h/b/m;->F:Z

    iget-object p1, p0, Lb/h/b/m;->u:Lb/h/b/z;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p1, Lb/h/b/z;->b:Landroid/app/Activity;

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lb/h/b/m;->F:Z

    invoke-virtual {p0}, Lb/h/b/m;->T()V

    :cond_1
    return-void
.end method

.method public V()V
    .locals 0

    return-void
.end method

.method public W()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public X()V
    .locals 0

    return-void
.end method

.method public Y()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    return-void
.end method

.method public Z()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/h/b/m;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/h/b/m;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/h/b/m;->z:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/h/b/m;->c:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/h/b/m;->s:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/h/b/m;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/h/b/m;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/h/b/m;->o:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/h/b/m;->p:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/h/b/m;->A:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/h/b/m;->B:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/h/b/m;->E:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/h/b/m;->D:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/h/b/m;->C:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lb/h/b/m;->J:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lb/h/b/m;->t:Lb/h/b/c0;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/h/b/m;->t:Lb/h/b/c0;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lb/h/b/m;->u:Lb/h/b/z;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/h/b/m;->u:Lb/h/b/z;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lb/h/b/m;->w:Lb/h/b/m;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/h/b/m;->w:Lb/h/b/m;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lb/h/b/m;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/h/b/m;->h:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lb/h/b/m;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/h/b/m;->d:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lb/h/b/m;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/h/b/m;->e:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lb/h/b/m;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewRegistryState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/h/b/m;->f:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1
    :cond_6
    iget-object v0, p0, Lb/h/b/m;->i:Lb/h/b/m;

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lb/h/b/m;->t:Lb/h/b/c0;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lb/h/b/m;->j:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 2
    iget-object v0, v0, Lb/h/b/c0;->c:Lb/h/b/j0;

    invoke-virtual {v0, v1}, Lb/h/b/j0;->d(Ljava/lang/String;)Lb/h/b/m;

    move-result-object v0

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    .line 3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTarget="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/h/b/m;->k:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopDirection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/h/b/m;->r()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p0}, Lb/h/b/m;->g()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getEnterAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/h/b/m;->g()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_a
    invoke-virtual {p0}, Lb/h/b/m;->k()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getExitAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/h/b/m;->k()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    invoke-virtual {p0}, Lb/h/b/m;->s()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getPopEnterAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/h/b/m;->s()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_c
    invoke-virtual {p0}, Lb/h/b/m;->t()I

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "getPopExitAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/h/b/m;->t()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_d
    iget-object v0, p0, Lb/h/b/m;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/h/b/m;->G:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_e
    iget-object v0, p0, Lb/h/b/m;->H:Landroid/view/View;

    if-eqz v0, :cond_f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/h/b/m;->H:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_f
    invoke-virtual {p0}, Lb/h/b/m;->d()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/h/b/m;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {p0}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Lb/k/a/a;->b(Lb/j/g;)Lb/k/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/k/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/h/b/m;->v:Lb/h/b/c0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lb/h/b/m;->v:Lb/h/b/c0;

    const-string v1, "  "

    invoke-static {p1, v1}, La/b/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/h/b/c0;->y(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a0()Lb/j/t;
    .locals 3

    iget-object v0, p0, Lb/h/b/m;->t:Lb/h/b/c0;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lb/h/b/m;->p()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lb/h/b/m;->t:Lb/h/b/c0;

    .line 1
    iget-object v0, v0, Lb/h/b/c0;->J:Lb/h/b/f0;

    .line 2
    iget-object v1, v0, Lb/h/b/f0;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/j/t;

    if-nez v1, :cond_0

    new-instance v1, Lb/j/t;

    invoke-direct {v1}, Lb/j/t;-><init>()V

    iget-object v0, v0, Lb/h/b/f0;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lb/j/d;
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->Q:Lb/j/h;

    return-object v0
.end method

.method public b0()V
    .locals 0

    return-void
.end method

.method public final c()Lb/h/b/m$a;
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    if-nez v0, :cond_0

    new-instance v0, Lb/h/b/m$a;

    invoke-direct {v0}, Lb/h/b/m$a;-><init>()V

    iput-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    :cond_0
    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    return-object v0
.end method

.method public c0()V
    .locals 0

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lb/h/b/m$a;->a:Landroid/view/View;

    return-object v0
.end method

.method public d0(I[Ljava/lang/String;[I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final e()Lb/h/b/c0;
    .locals 3

    iget-object v0, p0, Lb/h/b/m;->u:Lb/h/b/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/h/b/m;->v:Lb/h/b/c0;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " has not been attached yet."

    invoke-static {v1, p0, v2}, La/b/a/a/a;->b(Ljava/lang/String;Lb/h/b/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->u:Lb/h/b/z;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, v0, Lb/h/b/z;->c:Landroid/content/Context;

    :goto_0
    return-object v0
.end method

.method public f0(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lb/h/b/m$a;->d:I

    return v0
.end method

.method public g0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    return-void
.end method

.method public h()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1
.end method

.method public h0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    return-void
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public i0(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public j0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    return-void
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lb/h/b/m$a;->e:I

    return v0
.end method

.method public k0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lb/h/b/m;->v:Lb/h/b/c0;

    invoke-virtual {v0}, Lb/h/b/c0;->T()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h/b/m;->r:Z

    new-instance v1, Lb/h/b/w0;

    invoke-virtual {p0}, Lb/h/b/m;->a0()Lb/j/t;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lb/h/b/w0;-><init>(Lb/h/b/m;Lb/j/t;)V

    iput-object v1, p0, Lb/h/b/m;->R:Lb/h/b/w0;

    invoke-virtual {p0, p1, p2, p3}, Lb/h/b/m;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lb/h/b/m;->H:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/h/b/m;->R:Lb/h/b/w0;

    invoke-virtual {p1}, Lb/h/b/w0;->c()V

    iget-object p1, p0, Lb/h/b/m;->H:Landroid/view/View;

    iget-object p2, p0, Lb/h/b/m;->R:Lb/h/b/w0;

    const p3, 0x7f090133

    .line 1
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lb/h/b/m;->H:Landroid/view/View;

    iget-object p2, p0, Lb/h/b/m;->R:Lb/h/b/w0;

    const p3, 0x7f090135

    .line 3
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lb/h/b/m;->H:Landroid/view/View;

    iget-object p2, p0, Lb/h/b/m;->R:Lb/h/b/w0;

    const p3, 0x7f090134

    .line 5
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lb/h/b/m;->S:Lb/j/l;

    iget-object p2, p0, Lb/h/b/m;->R:Lb/h/b/w0;

    invoke-virtual {p1, p2}, Lb/j/l;->g(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lb/h/b/m;->R:Lb/h/b/w0;

    .line 7
    iget-object p1, p1, Lb/h/b/w0;->c:Lb/j/h;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lb/h/b/m;->R:Lb/h/b/w0;

    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l()Lb/m/a;
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->T:Lb/m/b;

    .line 1
    iget-object v0, v0, Lb/m/b;->b:Lb/m/a;

    return-object v0
.end method

.method public l0()V
    .locals 5

    iget-object v0, p0, Lb/h/b/m;->v:Lb/h/b/c0;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, v1}, Lb/h/b/c0;->w(I)V

    .line 2
    iget-object v0, p0, Lb/h/b/m;->H:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/h/b/m;->R:Lb/h/b/w0;

    .line 3
    invoke-virtual {v0}, Lb/h/b/w0;->c()V

    iget-object v0, v0, Lb/h/b/w0;->c:Lb/j/h;

    .line 4
    iget-object v0, v0, Lb/j/h;->b:Lb/j/d$b;

    .line 5
    sget-object v3, Lb/j/d$b;->d:Lb/j/d$b;

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lb/h/b/m;->R:Lb/h/b/w0;

    sget-object v3, Lb/j/d$a;->ON_DESTROY:Lb/j/d$a;

    invoke-virtual {v0, v3}, Lb/h/b/w0;->a(Lb/j/d$a;)V

    :cond_1
    iput v1, p0, Lb/h/b/m;->c:I

    iput-boolean v2, p0, Lb/h/b/m;->F:Z

    invoke-virtual {p0}, Lb/h/b/m;->Q()V

    iget-boolean v0, p0, Lb/h/b/m;->F:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, Lb/k/a/a;->b(Lb/j/g;)Lb/k/a/a;

    move-result-object v0

    check-cast v0, Lb/k/a/b;

    .line 8
    iget-object v0, v0, Lb/k/a/b;->b:Lb/k/a/b$b;

    .line 9
    iget-object v1, v0, Lb/k/a/b$b;->c:Lb/d/i;

    invoke-virtual {v1}, Lb/d/i;->e()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    iget-object v4, v0, Lb/k/a/b$b;->c:Lb/d/i;

    invoke-virtual {v4, v3}, Lb/d/i;->f(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/k/a/b$a;

    .line 10
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :cond_2
    iput-boolean v2, p0, Lb/h/b/m;->r:Z

    return-void

    :cond_3
    new-instance v0, Lb/h/b/a1;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-static {v1, p0, v2}, La/b/a/a/a;->b(Ljava/lang/String;Lb/h/b/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/h/b/a1;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public m()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1
.end method

.method public m0()V
    .locals 1

    invoke-virtual {p0}, Lb/h/b/m;->onLowMemory()V

    iget-object v0, p0, Lb/h/b/m;->v:Lb/h/b/c0;

    invoke-virtual {v0}, Lb/h/b/c0;->p()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public n0(Landroid/view/Menu;)Z
    .locals 2

    iget-boolean v0, p0, Lb/h/b/m;->A:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lb/h/b/m;->D:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lb/h/b/m;->E:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lb/h/b/m;->b0()V

    :cond_0
    iget-object v0, p0, Lb/h/b/m;->v:Lb/h/b/c0;

    invoke-virtual {v0, p1}, Lb/h/b/c0;->v(Landroid/view/Menu;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method public o()Landroid/view/LayoutInflater;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/h/b/m;->u:Lb/h/b/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/h/b/z;->f()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lb/h/b/m;->v:Lb/h/b/c0;

    .line 1
    iget-object v1, v1, Lb/h/b/c0;->f:Lb/h/b/a0;

    .line 2
    invoke-static {v0, v1}, Lb/e/b/g;->V(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o0([Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/h/b/m;->u:Lb/h/b/z;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lb/h/b/m;->q()Lb/h/b/c0;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lb/h/b/c0;->y:Lb/a/g/c;

    if-eqz v1, :cond_0

    new-instance v1, Lb/h/b/c0$k;

    iget-object v2, p0, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Lb/h/b/c0$k;-><init>(Ljava/lang/String;I)V

    iget-object p2, v0, Lb/h/b/c0;->z:Ljava/util/ArrayDeque;

    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object p2, v0, Lb/h/b/c0;->y:Lb/a/g/c;

    invoke-virtual {p2, p1}, Lb/a/g/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lb/h/b/c0;->q:Lb/h/b/z;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment "

    const-string v0, " not attached to Activity"

    invoke-static {p2, p0, v0}, La/b/a/a/a;->b(Ljava/lang/String;Lb/h/b/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/h/b/m;->F:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Lb/h/b/m;->p0()Lb/h/b/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/h/b/m;->F:Z

    return-void
.end method

.method public final p()I
    .locals 2

    iget-object v0, p0, Lb/h/b/m;->P:Lb/j/d$b;

    sget-object v1, Lb/j/d$b;->c:Lb/j/d$b;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lb/h/b/m;->w:Lb/h/b/m;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lb/h/b/m;->w:Lb/h/b/m;

    invoke-virtual {v1}, Lb/h/b/m;->p()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public final p0()Lb/h/b/p;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/h/b/m;->u:Lb/h/b/z;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lb/h/b/z;->b:Landroid/app/Activity;

    .line 3
    check-cast v0, Lb/h/b/p;

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not attached to an activity."

    invoke-static {v1, p0, v2}, La/b/a/a/a;->b(Ljava/lang/String;Lb/h/b/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()Lb/h/b/c0;
    .locals 3

    iget-object v0, p0, Lb/h/b/m;->t:Lb/h/b/c0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not associated with a fragment manager."

    invoke-static {v1, p0, v2}, La/b/a/a/a;->b(Ljava/lang/String;Lb/h/b/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q0()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " not attached to a context."

    invoke-static {v1, p0, v2}, La/b/a/a/a;->b(Ljava/lang/String;Lb/h/b/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, v0, Lb/h/b/m$a;->c:Z

    return v0
.end method

.method public final r0()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/h/b/m;->H:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-static {v1, p0, v2}, La/b/a/a/a;->b(Ljava/lang/String;Lb/h/b/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lb/h/b/m$a;->f:I

    return v0
.end method

.method public s0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lb/h/b/m;->c()Lb/h/b/m$a;

    move-result-object v0

    iput-object p1, v0, Lb/h/b/m$a;->a:Landroid/view/View;

    return-void
.end method

.method public t()I
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lb/h/b/m$a;->g:I

    return v0
.end method

.method public t0(IIII)V
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lb/h/b/m;->c()Lb/h/b/m$a;

    move-result-object v0

    iput p1, v0, Lb/h/b/m$a;->d:I

    invoke-virtual {p0}, Lb/h/b/m;->c()Lb/h/b/m$a;

    move-result-object p1

    iput p2, p1, Lb/h/b/m$a;->e:I

    invoke-virtual {p0}, Lb/h/b/m;->c()Lb/h/b/m$a;

    move-result-object p1

    iput p3, p1, Lb/h/b/m$a;->f:I

    invoke-virtual {p0}, Lb/h/b/m;->c()Lb/h/b/m$a;

    move-result-object p1

    iput p4, p1, Lb/h/b/m$a;->g:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/h/b/m;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/h/b/m;->x:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/h/b/m;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lb/h/b/m;->z:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/h/b/m;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lb/h/b/m$a;->l:Ljava/lang/Object;

    sget-object v2, Lb/h/b/m;->b:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lb/h/b/m;->m()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public u0(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p0}, Lb/h/b/m;->c()Lb/h/b/m$a;

    move-result-object v0

    iput-object p1, v0, Lb/h/b/m$a;->b:Landroid/animation/Animator;

    return-void
.end method

.method public final v()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Lb/h/b/m;->q0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public v0(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->t:Lb/h/b/c0;

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {v0}, Lb/h/b/c0;->Q()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already added and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iput-object p1, p0, Lb/h/b/m;->h:Landroid/os/Bundle;

    return-void
.end method

.method public w()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lb/h/b/m$a;->k:Ljava/lang/Object;

    sget-object v2, Lb/h/b/m;->b:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lb/h/b/m;->h()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public w0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lb/h/b/m;->c()Lb/h/b/m$a;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lb/h/b/m$a;->o:Landroid/view/View;

    return-void
.end method

.method public x()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1
.end method

.method public x0(Z)V
    .locals 1

    invoke-virtual {p0}, Lb/h/b/m;->c()Lb/h/b/m$a;

    move-result-object v0

    iput-boolean p1, v0, Lb/h/b/m$a;->q:Z

    return-void
.end method

.method public y()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lb/h/b/m$a;->m:Ljava/lang/Object;

    sget-object v2, Lb/h/b/m;->b:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lb/h/b/m;->x()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public y0(Lb/h/b/m$d;)V
    .locals 2

    invoke-virtual {p0}, Lb/h/b/m;->c()Lb/h/b/m$a;

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    iget-object v0, v0, Lb/h/b/m$a;->p:Lb/h/b/m$d;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    check-cast p1, Lb/h/b/c0$m;

    .line 1
    iget v0, p1, Lb/h/b/c0$m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lb/h/b/c0$m;->c:I

    :cond_3
    return-void
.end method

.method public final z(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lb/h/b/m;->v()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public z0(Z)V
    .locals 1

    iget-object v0, p0, Lb/h/b/m;->K:Lb/h/b/m$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lb/h/b/m;->c()Lb/h/b/m$a;

    move-result-object v0

    iput-boolean p1, v0, Lb/h/b/m$a;->c:Z

    return-void
.end method
