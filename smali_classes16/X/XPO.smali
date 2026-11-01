.class public final LX/XPO;
.super LX/Q84;
.source ""


# static fields
.field public static final __redex_internal_original_name:Ljava/lang/String; = "QuickSnapUnifiedFragment"


# instance fields
.field public A00:J

.field public A01:Landroid/view/View;

.field public A02:Landroid/view/ViewGroup;

.field public A03:Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;

.field public A04:Lcom/instagram/quicksnap/unified/QuickSnapViewerQPPlugin;

.field public A05:LX/ghT;

.field public A06:Lkotlin/jvm/functions/Function0;

.field public A07:Z

.field public final A08:LX/Rwf;

.field public final A09:LX/Rwf;

.field public final A0A:LX/Rwf;

.field public final A0B:LX/lvA;

.field public final A0C:Landroidx/compose/runtime/MutableState;

.field public final A0D:LX/2gq;

.field public final A0E:LX/lFv;

.field public final A0F:Ljava/lang/String;

.field public final A0G:LX/Esp;

.field public final A0H:LX/Esp;

.field public final A0I:LX/Esp;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, LX/Q84;-><init>()V

    const-string v0, "quicksnap_unified_fragment"

    iput-object v0, p0, LX/XPO;->A0F:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, LX/XPO;->A07:Z

    new-instance v0, LX/lFv;

    invoke-direct {v0}, LX/lFv;-><init>()V

    iput-object v0, p0, LX/XPO;->A0E:LX/lFv;

    sget-object v0, LX/Zss;->A02:LX/Zss;

    invoke-static {v0}, LX/216;->A09(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, LX/XPO;->A0C:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x0

    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    iput-object v0, p0, LX/XPO;->A0B:LX/lvA;

    const/16 v0, 0x18

    invoke-static {p0, v0}, LX/221;->A0o(Ljava/lang/Object;I)LX/Esp;

    move-result-object v0

    iput-object v0, p0, LX/XPO;->A0G:LX/Esp;

    const/16 v0, 0x19

    new-instance v4, LX/RW1;

    invoke-direct {v4, p0, v0}, LX/RW1;-><init>(Ljava/lang/Object;I)V

    const/16 v0, 0xed

    invoke-static {p0, v0}, LX/240;->A04(Ljava/lang/Object;I)LX/240;

    move-result-object v1

    const/16 v0, 0x302

    invoke-static {v1, v0}, LX/16V;->A14(Lkotlin/jvm/functions/Function0;I)LX/Esp;

    move-result-object v3

    const-class v0, LX/7MB;

    invoke-static {v0}, LX/194;->A0q(Ljava/lang/Class;)LX/1nj;

    move-result-object v2

    const/16 v0, 0x14b

    invoke-static {v3, v0}, LX/194;->A0o(Ljava/lang/Object;I)LX/E4q;

    move-result-object v1

    const/16 v0, 0x13b

    invoke-static {v3, v1, v4, v2, v0}, LX/16V;->A0T(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;LX/Lmv;I)LX/0kb;

    move-result-object v0

    iput-object v0, p0, LX/XPO;->A0I:LX/Esp;

    const/16 v0, 0x36

    new-instance v4, LX/NJ2;

    invoke-direct {v4, p0, v0}, LX/NJ2;-><init>(Ljava/lang/Object;I)V

    const/16 v0, 0xee

    invoke-static {p0, v0}, LX/240;->A04(Ljava/lang/Object;I)LX/240;

    move-result-object v1

    const/16 v0, 0x303

    invoke-static {v1, v0}, LX/16V;->A14(Lkotlin/jvm/functions/Function0;I)LX/Esp;

    move-result-object v3

    const-class v0, LX/RuX;

    invoke-static {v0}, LX/194;->A0q(Ljava/lang/Class;)LX/1nj;

    move-result-object v2

    const/16 v0, 0x14c

    invoke-static {v3, v0}, LX/194;->A0o(Ljava/lang/Object;I)LX/E4q;

    move-result-object v1

    const/16 v0, 0x13c

    invoke-static {v3, v1, v4, v2, v0}, LX/16V;->A0T(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;LX/Lmv;I)LX/0kb;

    move-result-object v0

    iput-object v0, p0, LX/XPO;->A0H:LX/Esp;

    const/4 v2, 0x4

    new-instance v0, LX/na6;

    invoke-direct {v0, p0, v2}, LX/na6;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, LX/XPO;->A0D:LX/2gq;

    const/4 v1, 0x6

    new-instance v0, LX/Rwf;

    invoke-direct {v0, p0, v1}, LX/Rwf;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, LX/XPO;->A0A:LX/Rwf;

    new-instance v0, LX/Rwf;

    invoke-direct {v0, p0, v2}, LX/Rwf;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, LX/XPO;->A08:LX/Rwf;

    const/4 v1, 0x5

    new-instance v0, LX/Rwf;

    invoke-direct {v0, p0, v1}, LX/Rwf;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, LX/XPO;->A09:LX/Rwf;

    return-void
.end method

.method public static final A00(LX/XPO;)LX/7MB;
    .locals 0
    .annotation build Ldalvik/annotation/optimization/NeverInline;
    .end annotation

    iget-object p0, p0, LX/XPO;->A0I:LX/Esp;

    invoke-interface {p0}, LX/Esp;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX/7MB;

    return-object p0
.end method

.method private final A01()V
    .locals 6

    iget-object v0, p0, LX/XPO;->A0C:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v0, LX/Zss;->A02:LX/Zss;

    if-ne v1, v0, :cond_1

    iget-object v5, p0, LX/XPO;->A0E:LX/lFv;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v4, LX/lFv;->A03:[Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v1, 0x0

    :cond_0
    aget-object v0, v4, v1

    invoke-static {v3, v0}, LX/0Eb;->A00(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v2, :cond_0

    iget-object v1, v5, LX/lFv;->A01:Landroidx/compose/runtime/MutableState;

    sget-object v0, LX/cef;->A00:LX/cef;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->HEn(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, v5, LX/lFv;->A00:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, v5, LX/lFv;->A00:Z

    invoke-static {p0}, LX/218;->A0o(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-static {v4}, LX/C9G;->A0e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, LX/omZ;

    invoke-direct {v0, v1, v5, v3}, LX/omZ;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v0, v2}, LX/sbz;->A01(Landroidx/fragment/app/Fragment;LX/rbZ;Ljava/util/List;)V

    return-void

    :cond_3
    invoke-static {p0, v5}, LX/lFv;->A00(Landroidx/fragment/app/Fragment;LX/lFv;)V

    return-void
.end method

.method public static final A02(Landroid/view/ViewGroup;LX/XPO;)V
    .locals 19

    move-object/from16 v0, p1

    iget-object v1, v0, LX/XPO;->A05:LX/ghT;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v3, v0, LX/XPO;->A01:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, LX/Q84;->getSession()Lcom/instagram/common/session/UserSession;

    move-result-object v2

    new-instance v1, LX/bpu;

    invoke-direct {v1, v0}, LX/bpu;-><init>(LX/XPO;)V

    invoke-static {v2}, LX/5B5;->A0Q(Ljava/lang/Object;)V

    new-instance v6, LX/ghT;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v2, v6, LX/ghT;->A04:Lcom/instagram/common/session/UserSession;

    iput-object v4, v6, LX/ghT;->A00:Landroid/content/Context;

    iput-object v0, v6, LX/ghT;->A03:Landroidx/fragment/app/Fragment;

    move-object/from16 v2, p0

    iput-object v2, v6, LX/ghT;->A02:Landroid/view/ViewGroup;

    iput-object v3, v6, LX/ghT;->A01:Landroid/view/View;

    iput-object v1, v6, LX/ghT;->A06:LX/bpu;

    const/4 v1, 0x0

    sput v1, Lredex/$StoreFenceHelper;->DUMMY_VOLATILE:I

    const v1, 0x7f0b3292

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-static {v1, v12, v12}, LX/0tL;->A01(Landroid/view/View;ZZ)LX/Klx;

    move-result-object v18

    const v1, 0x7f0b3294

    invoke-static {v2, v1, v12}, LX/215;->A0X(Landroid/view/View;IZ)LX/Klx;

    move-result-object p0

    const v1, 0x7f0b3293

    invoke-static {v2, v1, v12}, LX/215;->A0X(Landroid/view/View;IZ)LX/Klx;

    move-result-object p1

    iget-object v14, v6, LX/ghT;->A01:Landroid/view/View;

    new-instance v7, LX/15G;

    move-object v13, v7

    move-object v15, v8

    move-object/from16 v17, v8

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, LX/15G;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/FrameLayout;LX/Klx;LX/Klx;LX/Klx;)V

    iget-object v2, v6, LX/ghT;->A00:Landroid/content/Context;

    iget-object v4, v6, LX/ghT;->A04:Lcom/instagram/common/session/UserSession;

    const-string v1, "quicksnap_voice_reply"

    invoke-static {v1, v12, v12}, LX/0WP;->A01(Ljava/lang/String;ZZ)LX/0WQ;

    move-result-object v1

    new-instance v5, LX/5Pg;

    invoke-direct {v5, v2, v4, v1, v8}, LX/5Pg;-><init>(Landroid/content/Context;Lcom/instagram/common/session/UserSession;LX/Ifn;Ljava/lang/String;)V

    iget-object v3, v6, LX/ghT;->A03:Landroidx/fragment/app/Fragment;

    sget-object v9, LX/008;->A0C:Ljava/lang/Integer;

    const/4 v11, 0x1

    const/16 v1, 0x13

    invoke-static {v1}, LX/C56;->A00(I)LX/C56;

    move-result-object v10

    invoke-static/range {v2 .. v12}, LX/15J;->A00(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/instagram/common/session/UserSession;LX/5Pg;LX/Ff1;LX/15G;LX/mbh;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;ZZ)LX/15J;

    move-result-object v3

    const/16 v2, 0x8

    new-instance v1, LX/P61;

    invoke-direct {v1, v6, v2}, LX/P61;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1}, LX/0E2;->A1D(Lkotlin/jvm/functions/Function0;)LX/4z5;

    move-result-object v1

    invoke-virtual {v3, v1}, LX/15J;->A0B(LX/Esp;)V

    iput-object v3, v6, LX/ghT;->A05:LX/15J;

    iput-object v6, v0, LX/XPO;->A05:LX/ghT;

    :cond_0
    return-void
.end method

.method public static final A03(LX/XPO;LX/Zss;)V
    .locals 6

    iget-object v5, p0, LX/XPO;->A0C:Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, LX/Zss;->A02:LX/Zss;

    if-ne v0, v4, :cond_1

    sget-object v0, LX/Zss;->A03:LX/Zss;

    if-ne p1, v0, :cond_1

    invoke-static {p0}, LX/XPO;->A00(LX/XPO;)LX/7MB;

    move-result-object v1

    invoke-static {v1}, LX/C1F;->A0U(LX/7MB;)LX/7NY;

    move-result-object v0

    iget-object v3, v1, LX/7MB;->A0L:LX/8vI;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, v0, LX/7NY;->A0A:Ljava/lang/String;

    iget-object v0, v0, LX/7NY;->A05:Lcom/instagram/user/model/User;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/user/model/User;->A77()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    sget-object v0, LX/R06;->A0v:LX/R06;

    invoke-static {v0, v3, v2, v1}, LX/8vI;->A0C(LX/R06;LX/8vI;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v5, p1}, Landroidx/compose/runtime/MutableState;->HEn(Ljava/lang/Object;)V

    invoke-static {p0}, LX/XPO;->A00(LX/XPO;)LX/7MB;

    move-result-object v3

    sget-object v0, LX/Zss;->A03:LX/Zss;

    invoke-static {p1, v0}, LX/011;->A0z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v1, 0x1c

    new-instance v0, LX/D9W;

    invoke-direct {v0, v2, v1}, LX/D9W;-><init>(ZI)V

    invoke-static {v3, v0}, LX/7MB;->A0A(LX/7MB;Lkotlin/jvm/functions/Function1;)V

    if-ne p1, v4, :cond_3

    invoke-direct {p0}, LX/XPO;->A01()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, LX/XPO;->A03:Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    invoke-interface {v3}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/DSA;

    iget-object v0, v0, LX/DSA;->A05:LX/b4V;

    if-nez v0, :cond_5

    return-void

    :cond_4
    move-object v2, v1

    goto :goto_0

    :cond_5
    invoke-interface {v3}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, LX/DSA;

    const v0, 0x7fffffff

    invoke-static {v1, v0}, LX/DSA;->A05(LX/DSA;I)LX/DSA;

    move-result-object v0

    invoke-interface {v3, v2, v0}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void
.end method

.method public static final A04(LX/XPO;Z)V
    .locals 4

    const v3, 0x7f133918

    if-eqz p1, :cond_0

    const v3, 0x7f13663c

    :cond_0
    invoke-static {p0}, LX/XPO;->A00(LX/XPO;)LX/7MB;

    move-result-object v0

    iget-object v0, v0, LX/7MB;->A0b:LX/GhC;

    invoke-interface {v0}, LX/GhC;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX/7MH;

    iget-boolean v0, v1, LX/7MH;->A0Q:Z

    if-nez v0, :cond_1

    iget-boolean v0, v1, LX/7MH;->A0U:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "NA"

    invoke-static {v1, v0, v3}, LX/226;->A0E(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-static {p0}, LX/215;->A0E(Landroidx/fragment/app/Fragment;)LX/0hr;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, LX/F15;

    invoke-direct {v0, p0, v1, v3}, LX/F15;-><init>(LX/XPO;LX/HAU;I)V

    invoke-static {v0, v2}, LX/020;->A1S(LX/snk;LX/mkc;)V

    return-void
.end method

.method public static final A05(LX/XPO;)Z
    .locals 1

    invoke-static {p0}, LX/XPO;->A00(LX/XPO;)LX/7MB;

    move-result-object v0

    iget-object v0, v0, LX/7MB;->A0O:LX/7MD;

    invoke-virtual {v0}, LX/CBm;->A0W()LX/GhC;

    move-result-object v0

    invoke-interface {v0}, LX/GhC;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/QU2;

    iget-object v0, v0, LX/QU2;->A00:LX/Zte;

    if-nez v0, :cond_0

    invoke-static {p0}, LX/XPO;->A00(LX/XPO;)LX/7MB;

    move-result-object v0

    iget-object v0, v0, LX/7MB;->A0Q:LX/7MF;

    invoke-virtual {v0}, LX/CBm;->A0W()LX/GhC;

    move-result-object v0

    invoke-interface {v0}, LX/GhC;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/QU3;

    iget-object v0, v0, LX/QU3;->A00:LX/Zs3;

    if-nez v0, :cond_0

    invoke-static {p0}, LX/XPO;->A00(LX/XPO;)LX/7MB;

    move-result-object v0

    iget-object v0, v0, LX/7MB;->A0P:LX/7MG;

    invoke-virtual {v0}, LX/CBm;->A0W()LX/GhC;

    move-result-object v0

    invoke-interface {v0}, LX/GhC;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/QV0;

    iget-object v0, v0, LX/QV0;->A00:LX/Zrx;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final getModuleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LX/XPO;->A0F:Ljava/lang/String;

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v0, 0x12d32fd2

    invoke-static {v0}, LX/3Et;->A02(I)I

    move-result v3

    invoke-super {p0, p1}, LX/4Ka;->onCreate(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v0, "initial_content"

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, LX/Zss;->valueOf(Ljava/lang/String;)LX/Zss;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    sget-object v6, LX/Zss;->A02:LX/Zss;

    :cond_1
    iget-object v0, p0, LX/XPO;->A0C:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, v6}, Landroidx/compose/runtime/MutableState;->HEn(Ljava/lang/Object;)V

    sget-object v0, LX/7QE;->A0A:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/7QE;

    if-eqz v0, :cond_2

    iget-object v4, v0, LX/7QE;->A01:LX/rni;

    iget v2, v0, LX/7QE;->A00:I

    const-string v1, "viewer_created"

    const v0, 0x5a73d38

    invoke-interface {v4, v0, v2, v1}, Lcom/facebook/quicklog/QuickPerformanceLogger;->markerPoint(IILjava/lang/String;)V

    :cond_2
    invoke-static {p0}, LX/XPO;->A00(LX/XPO;)LX/7MB;

    move-result-object v4

    sget-object v0, LX/Zss;->A03:LX/Zss;

    const/4 v5, 0x1

    invoke-static {v6, v0}, LX/011;->A0z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v1, 0x1c

    new-instance v0, LX/D9W;

    invoke-direct {v0, v2, v1}, LX/D9W;-><init>(ZI)V

    invoke-static {v4, v0}, LX/7MB;->A0A(LX/7MB;Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0}, LX/XPO;->A00(LX/XPO;)LX/7MB;

    move-result-object v4

    sget-object v2, LX/0l3;->A03:LX/0l3;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    const-string v0, "quick_snap_viewer_media_author_id"

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_0
    invoke-virtual {v4, v2, v5}, LX/7MB;->A17(LX/0l3;Z)V

    invoke-virtual {p0}, LX/Q84;->getSession()Lcom/instagram/common/session/UserSession;

    move-result-object v0

    invoke-static {v0}, LX/2qn;->A00(Lcom/instagram/common/session/UserSession;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, LX/21X;->A0J(LX/Q84;)LX/say;

    move-result-object v2

    const-wide v0, 0x810d00005d483cL

    invoke-static {v2, v0, v1}, LX/011;->A0y(Ljava/lang/Object;J)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0}, LX/4Ka;->requireWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v0, 0x2000

    # Instants screenshots: only QuickSnapUnifiedFragment opts out of FLAG_SECURE.
    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_4
    invoke-virtual {p0}, LX/Q84;->getSession()Lcom/instagram/common/session/UserSession;

    move-result-object v0

    invoke-static {v0}, LX/8vG;->A00(Lcom/instagram/common/session/UserSession;)LX/8vG;

    move-result-object v1

    sget-object v0, LX/008;->A01:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, LX/8vG;->A04(Ljava/lang/Integer;)V

    const v0, 0x5a24f10

    invoke-static {v0, v3}, LX/3Et;->A09(II)V

    return-void

    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const v0, -0x230a42b7

    invoke-static {v0}, LX/3Et;->A02(I)I

    move-result v3

    const/4 v0, 0x6

    new-instance v2, LX/EXd;

    invoke-direct {v2, p0, v0}, LX/EXd;-><init>(Ljava/lang/Object;I)V

    const v0, 0x134815a1

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, LX/2DF;->A03(Ljava/lang/Object;IZ)LX/2DG;

    move-result-object v0

    invoke-static {p0, v0, v1, v1}, LX/HbU;->A04(LX/4Ka;LX/snk;ZZ)Landroidx/compose/ui/platform/ComposeView;

    move-result-object v1

    const v0, -0x3ea86c20

    invoke-static {v0, v3}, LX/3Et;->A09(II)V

    return-object v1
.end method

.method public final onDestroy()V
    .locals 7

    const v0, 0x24b13373

    invoke-static {v0}, LX/3Et;->A02(I)I

    move-result v5

    invoke-super {p0}, LX/4Ka;->onDestroy()V

    invoke-static {p0}, LX/XPO;->A00(LX/XPO;)LX/7MB;

    move-result-object v3

    iget-boolean v0, v3, LX/7MB;->A0B:Z

    if-eqz v0, :cond_2

    iget-object v2, v3, LX/7MB;->A0R:LX/8vJ;

    sget-object v0, LX/57A;->A00:LX/57A;

    iget-object v1, v2, LX/8vJ;->A02:Ljava/util/Set;

    invoke-static {v0, v1}, LX/4dx;->A02(Ljava/lang/Iterable;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    if-nez v0, :cond_1

    invoke-interface {v1, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v2, v2, LX/8vJ;->A03:LX/snm;

    :cond_0
    invoke-interface {v2}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Set;

    invoke-static {v6, v0}, LX/4dx;->A00(Ljava/lang/Iterable;Ljava/util/Set;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-interface {v2, v1, v0}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v3}, LX/7MB;->A16()V

    :cond_2
    iget-object v0, v3, LX/7MB;->A0N:Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;

    iget-object v2, v0, Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;->A0X:LX/snm;

    :cond_3
    invoke-interface {v2}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v0, LX/56z;->A00:LX/56z;

    invoke-interface {v2, v1, v0}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-static {v3, v1, v1}, LX/7MB;->A09(LX/7MB;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, LX/7MB;->A0b:LX/GhC;

    invoke-interface {v0}, LX/GhC;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX/7MH;

    iget-boolean v0, v2, LX/7MH;->A0P:Z

    if-eqz v0, :cond_6

    invoke-virtual {v2}, LX/7MH;->A04()LX/7NY;

    move-result-object v4

    :goto_0
    iget-object v3, v3, LX/7MB;->A0L:LX/8vI;

    if-eqz v4, :cond_5

    iget-object v0, v4, LX/7NY;->A05:Lcom/instagram/user/model/User;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/instagram/user/model/User;->A77()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v1, v4, LX/7NY;->A0A:Ljava/lang/String;

    :cond_4
    sget-object v0, LX/R06;->A03:LX/R06;

    invoke-static {v0, v3, v1, v2}, LX/8vI;->A0C(LX/R06;LX/8vI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LX/Q84;->getSession()Lcom/instagram/common/session/UserSession;

    move-result-object v0

    invoke-static {v0}, LX/8vG;->A00(Lcom/instagram/common/session/UserSession;)LX/8vG;

    move-result-object v1

    sget-object v0, LX/008;->A01:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, LX/8vG;->A03(Ljava/lang/Integer;)V

    const v0, 0x5d671187

    invoke-static {v0, v5}, LX/3Et;->A09(II)V

    return-void

    :cond_5
    move-object v2, v1

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_6
    move-object v4, v1

    goto :goto_0
.end method

.method public final onDestroyView()V
    .locals 4

    const v0, -0x4657dfc5

    invoke-static {v0}, LX/3Et;->A02(I)I

    move-result v3

    iget-object v0, p0, LX/XPO;->A05:LX/ghT;

    if-eqz v0, :cond_0

    iget-object v0, v0, LX/ghT;->A05:LX/15J;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX/15J;->A0A()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LX/XPO;->A05:LX/ghT;

    iput-object v0, p0, LX/XPO;->A01:Landroid/view/View;

    iput-object v0, p0, LX/XPO;->A02:Landroid/view/ViewGroup;

    invoke-super {p0}, LX/4Ka;->onDestroyView()V

    iput-object v0, p0, LX/XPO;->A03:Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;

    invoke-static {p0}, LX/116;->A0A(LX/Q84;)LX/3xx;

    move-result-object v2

    const-class v1, LX/na5;

    iget-object v0, p0, LX/XPO;->A0D:LX/2gq;

    invoke-virtual {v2, v0, v1}, LX/3xx;->A03(LX/2gq;Ljava/lang/Class;)V

    invoke-static {p0}, LX/21X;->A0J(LX/Q84;)LX/say;

    move-result-object v2

    const-wide v0, 0x8112e000016386L

    invoke-static {v2, v0, v1}, LX/011;->A0y(Ljava/lang/Object;J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()LX/0dj;

    move-result-object v1

    const-string v0, "unified_archive_fragment"

    invoke-virtual {v1, v0}, LX/0dj;->A0Q(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()LX/0dj;

    move-result-object v0

    invoke-static {v1, v0}, LX/BVE;->A1D(Landroidx/fragment/app/Fragment;LX/0dj;)V

    :cond_1
    const v0, -0x3810fc91

    invoke-static {v0, v3}, LX/3Et;->A09(II)V

    return-void
.end method

.method public final onPause()V
    .locals 3

    const v0, -0x5516bda6

    invoke-static {v0}, LX/3Et;->A02(I)I

    move-result v2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, LX/XPO;->A05:LX/ghT;

    if-eqz v0, :cond_0

    iget-object v0, v0, LX/ghT;->A05:LX/15J;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX/15J;->A09()V

    :cond_0
    invoke-static {p0}, LX/XPO;->A00(LX/XPO;)LX/7MB;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, LX/7MB;->A1A(Z)V

    invoke-static {p0}, LX/XPO;->A00(LX/XPO;)LX/7MB;

    move-result-object v0

    invoke-virtual {v0}, LX/7MB;->A16()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    const v0, -0x50f025c0

    :goto_0
    invoke-static {v0, v2}, LX/3Et;->A09(II)V

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, LX/BVE;->A0M(Landroid/view/Window;)LX/0Vf;

    move-result-object v1

    iget-boolean v0, p0, LX/XPO;->A07:Z

    invoke-virtual {v1, v0}, LX/0Vf;->A01(Z)V

    :cond_2
    const v0, -0x3993f10

    goto :goto_0

    :cond_3
    const v0, -0x1cd0894c

    goto :goto_0
.end method

.method public final onResume()V
    .locals 4

    const v0, 0x49366fde

    invoke-static {v0}, LX/3Et;->A02(I)I

    move-result v3

    invoke-super {p0}, LX/4Ka;->onResume()V

    iget-object v0, p0, LX/XPO;->A05:LX/ghT;

    if-eqz v0, :cond_0

    iget-object v1, v0, LX/ghT;->A05:LX/15J;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, v1, LX/15J;->A02:Z

    :cond_0
    invoke-static {p0}, LX/XPO;->A00(LX/XPO;)LX/7MB;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LX/7MB;->A1B(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    const v0, -0x5f4ad6f7

    :goto_0
    invoke-static {v0, v3}, LX/3Et;->A09(II)V

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, LX/BVE;->A0M(Landroid/view/Window;)LX/0Vf;

    move-result-object v1

    iget-object v0, v1, LX/0Vf;->A00:LX/0Uy;

    invoke-virtual {v0}, LX/0Uy;->A07()Z

    move-result v0

    iput-boolean v0, p0, LX/XPO;->A07:Z

    invoke-virtual {v1, v2}, LX/0Vf;->A01(Z)V

    :cond_2
    invoke-direct {p0}, LX/XPO;->A01()V

    invoke-static {p0}, LX/XPO;->A00(LX/XPO;)LX/7MB;

    move-result-object v0

    invoke-virtual {v0, v2}, LX/7MB;->A1A(Z)V

    const v0, -0x3f1c6710

    goto :goto_0

    :cond_3
    const v0, -0xa672e11

    goto :goto_0
.end method

.method public final onStart()V
    .locals 10

    const v0, 0x43b19900

    invoke-static {v0}, LX/3Et;->A02(I)I

    move-result v3

    move-object v5, p0

    invoke-super {p0}, LX/4Ka;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, LX/Q84;->getSession()Lcom/instagram/common/session/UserSession;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    move v9, v7

    invoke-static/range {v4 .. v9}, LX/5LI;->A03(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/instagram/common/session/UserSession;ZZZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/high16 v2, -0x1000000

    invoke-static {v0, v2}, LX/0lk;->A05(Landroid/app/Activity;I)V

    invoke-static {v0, v2}, LX/0lU;->A04(Landroid/app/Activity;I)V

    invoke-static {v0}, LX/215;->A07(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    const v0, -0x49ba24f

    invoke-static {v1, v2, v0}, LX/0KG;->A0U(Landroid/view/View;II)V

    const v0, -0x62f5b996

    invoke-static {v0, v3}, LX/3Et;->A09(II)V

    return-void
.end method

.method public final onStop()V
    .locals 4

    const v0, -0x4a5a6de6

    invoke-static {v0}, LX/3Et;->A02(I)I

    move-result v3

    invoke-super {p0}, LX/4Ka;->onStop()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, LX/Q84;->getSession()Lcom/instagram/common/session/UserSession;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, LX/5LI;->A05(Landroid/app/Activity;Lcom/instagram/common/session/UserSession;Z)V

    const v0, 0xbd4d535

    invoke-static {v0, v3}, LX/3Et;->A09(II)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-static {p1}, LX/5B5;->A0Q(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, LX/4Ka;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, LX/Q84;->getSession()Lcom/instagram/common/session/UserSession;

    move-result-object v5

    invoke-static {v5}, LX/5B5;->A0I(Ljava/lang/Object;)V

    new-instance v4, Lcom/instagram/quicksnap/unified/QuickSnapViewerQPPlugin;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object p0, v4, Lcom/instagram/quicksnap/unified/QuickSnapViewerQPPlugin;->A03:LX/XPO;

    iput-object p0, v4, Lcom/instagram/quicksnap/unified/QuickSnapViewerQPPlugin;->A00:LX/9PW;

    iput-object v5, v4, Lcom/instagram/quicksnap/unified/QuickSnapViewerQPPlugin;->A01:Lcom/instagram/common/session/UserSession;

    const/4 v0, 0x0

    sput v0, Lredex/$StoreFenceHelper;->DUMMY_VOLATILE:I

    iput-object v4, p0, LX/XPO;->A04:Lcom/instagram/quicksnap/unified/QuickSnapViewerQPPlugin;

    sget-object v2, Lcom/instagram/quickpromotion/intf/QuickPromotionSlot;->A1U:Lcom/instagram/quickpromotion/intf/QuickPromotionSlot;

    const/4 v0, 0x4

    new-instance v1, LX/R12;

    invoke-direct {v1, v4, v0}, LX/R12;-><init>(Ljava/lang/Object;I)V

    const/4 v3, 0x2

    new-instance v0, LX/R14;

    invoke-direct {v0, v4, v3}, LX/R14;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, v0}, LX/0gY;->A0A(LX/Ggl;LX/8VZ;)LX/0gZ;

    move-result-object v0

    invoke-static {p0, p0, v5, v0, v2}, LX/2qy;->A0G(LX/4Ka;LX/9PW;Lcom/instagram/common/session/UserSession;LX/Hlk;Lcom/instagram/quickpromotion/intf/QuickPromotionSlot;)LX/0hF;

    move-result-object v0

    iput-object v0, v4, Lcom/instagram/quicksnap/unified/QuickSnapViewerQPPlugin;->A02:LX/OlX;

    invoke-static {p0}, LX/BVE;->A0J(Landroidx/fragment/app/Fragment;)LX/01h;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()LX/00T;

    move-result-object v1

    iget-object v0, p0, LX/XPO;->A08:LX/Rwf;

    invoke-virtual {v2, v0, v1}, LX/01h;->A06(LX/01a;LX/00T;)V

    invoke-static {p0}, LX/BVE;->A0J(Landroidx/fragment/app/Fragment;)LX/01h;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()LX/00T;

    move-result-object v1

    iget-object v0, p0, LX/XPO;->A0A:LX/Rwf;

    invoke-virtual {v2, v0, v1}, LX/01h;->A06(LX/01a;LX/00T;)V

    invoke-static {p0}, LX/BVE;->A0J(Landroidx/fragment/app/Fragment;)LX/01h;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()LX/00T;

    move-result-object v1

    iget-object v0, p0, LX/XPO;->A09:LX/Rwf;

    invoke-virtual {v2, v0, v1}, LX/01h;->A06(LX/01a;LX/00T;)V

    invoke-static {p0}, LX/XPO;->A00(LX/XPO;)LX/7MB;

    move-result-object v0

    iget-object v1, v0, LX/7MB;->A0G:LX/0go;

    new-instance v0, LX/K7R;

    invoke-direct {v0, p0, v3}, LX/K7R;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, p0, v0}, LX/0go;->A06(LX/00T;LX/0bn;)V

    return-void
.end method
