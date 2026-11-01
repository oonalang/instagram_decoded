.class public final Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;
.super LX/4Kd;
.source ""


# instance fields
.field public A00:LX/6fd;

.field public A01:Lcom/instagram/common/session/UserSession;

.field public A02:LX/8vI;

.field public A03:LX/8vG;

.field public A04:LX/RGN;

.field public A05:LX/PF1;

.field public A06:Lcom/instagram/quicksnap/creation/IgQuickSnapCameraPreferences;

.field public A07:Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;

.field public A08:Ljava/util/List;

.field public A09:Ljava/util/concurrent/atomic/AtomicLong;

.field public A0A:Ljava/util/concurrent/atomic/AtomicReference;

.field public A0B:LX/2sj;

.field public A0C:LX/2sj;

.field public A0D:LX/5By;

.field public A0E:LX/Ge9;

.field public A0F:LX/snm;

.field public A0G:LX/GhC;

.field public A0H:LX/GhC;

.field public A0I:LX/GhC;

.field public A0J:LX/qjH;

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z

.field public A0N:Z

.field public volatile A0O:Landroid/graphics/Bitmap;

.field public volatile A0P:LX/6fd;

.field public volatile A0Q:LX/RKY;

.field public volatile A0R:LX/9Rc;

.field public volatile A0S:LX/W7M;

.field public volatile A0T:Ljava/lang/String;

.field public volatile A0U:Ljava/lang/String;

.field public volatile A0V:Lkotlin/jvm/functions/Function0;


# direct methods
.method private final A00(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;IIJZ)LX/L32;
    .locals 13

    iget-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    invoke-static {v0}, LX/AsI;->A1G(LX/snm;)LX/DSA;

    move-result-object v1

    invoke-static {p1}, LX/249;->A06(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v2, v0, :cond_5

    sget-object v10, LX/R4c;->A02:LX/R4c;

    :goto_0
    invoke-static {}, LX/3xr;->A00()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, LX/3xr;->A04(Landroid/net/NetworkInfo;)LX/6eq;

    move-result-object v0

    iget-object v0, v0, LX/6eq;->A01:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    if-eq v2, v0, :cond_3

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    sget-object v12, LX/9nv;->A04:LX/9nv;

    :goto_1
    sget-object v0, LX/4Na;->A00:LX/4My;

    invoke-static {v0}, LX/1ow;->A04(LX/4My;)LX/1ow;

    move-result-object v0

    iget-object v0, v0, LX/1ow;->A07:Ljava/lang/Long;

    const/4 v8, 0x0

    move-wide/from16 v2, p6

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long v6, p6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-gez v0, :cond_1

    :cond_0
    move-object v11, v8

    :cond_1
    iget-boolean v9, v1, LX/DSA;->A0I:Z

    iget-boolean v8, v1, LX/DSA;->A0F:Z

    iget-boolean v7, v1, LX/DSA;->A0H:Z

    invoke-static/range {p3 .. p3}, LX/5BY;->A0r(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    invoke-static/range {p3 .. p3}, LX/bEz;->A00(Ljava/lang/String;)I

    move-result v5

    sget-object v4, LX/R3f;->A02:LX/R3f;

    iget-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A03:LX/8vG;

    invoke-virtual {v0}, LX/8vG;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LX/5B5;->A0G(Ljava/lang/Object;)V

    new-instance v1, LX/L32;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-boolean v9, v1, LX/L32;->A0E:Z

    iput-boolean v8, v1, LX/L32;->A0C:Z

    iput-boolean v7, v1, LX/L32;->A0D:Z

    iput-boolean v6, v1, LX/L32;->A0B:Z

    iput v5, v1, LX/L32;->A00:I

    move/from16 v5, p4

    iput v5, v1, LX/L32;->A02:I

    move/from16 v5, p5

    iput v5, v1, LX/L32;->A01:I

    iput-object p2, v1, LX/L32;->A08:Ljava/lang/Long;

    move/from16 v5, p8

    iput-boolean v5, v1, LX/L32;->A0A:Z

    iput-object v10, v1, LX/L32;->A05:LX/R4c;

    iput-object v4, v1, LX/L32;->A04:LX/R3f;

    iput-object v0, v1, LX/L32;->A09:Ljava/lang/String;

    iput-object v12, v1, LX/L32;->A06:LX/9nv;

    iput-object v11, v1, LX/L32;->A07:Ljava/lang/Long;

    iput-wide v2, v1, LX/L32;->A03:J

    const/4 v0, 0x0

    sput v0, Lredex/$StoreFenceHelper;->DUMMY_VOLATILE:I

    return-object v1

    :cond_2
    sget-object v12, LX/9nv;->A02:LX/9nv;

    goto :goto_1

    :cond_3
    sget-object v12, LX/9nv;->A05:LX/9nv;

    goto :goto_1

    :cond_4
    sget-object v12, LX/9nv;->A03:LX/9nv;

    goto :goto_1

    :cond_5
    sget-object v10, LX/R4c;->A03:LX/R4c;

    goto/16 :goto_0
.end method

.method public static final A01(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/kyt;Ljava/lang/String;Ljava/lang/String;LX/HAU;J)Ljava/lang/Object;
    .locals 16

    move-object/from16 v10, p4

    move-object/from16 v11, p7

    move-object/from16 v6, p5

    move-object/from16 v5, p0

    move-wide/from16 v0, p8

    move-object/from16 v4, p6

    move-object/from16 v3, p2

    move-object/from16 v13, p1

    instance-of v2, v11, LX/aFm;

    move-object/from16 v8, p3

    if-eqz v2, :cond_0

    move-object v14, v11

    check-cast v14, LX/aFm;

    iget v9, v14, LX/aFm;->A00:I

    const/high16 v7, -0x80000000

    and-int v2, v9, v7

    if-eqz v2, :cond_0

    sub-int/2addr v9, v7

    iput v9, v14, LX/aFm;->A00:I

    :goto_0
    iget-object v2, v14, LX/aFm;->A0A:Ljava/lang/Object;

    sget-object v12, LX/1wh;->A02:LX/1wh;

    iget v7, v14, LX/aFm;->A00:I

    const/16 p1, 0x2

    const/4 v11, 0x0

    if-eqz v7, :cond_1

    const/4 v0, 0x1

    if-eq v7, v0, :cond_2

    const/4 v0, 0x2

    if-eq v7, v0, :cond_4

    invoke-static {}, LX/011;->A0N()Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_0
    new-instance v14, LX/aFm;

    invoke-direct {v14, v8, v11}, LX/aFm;-><init>(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/HAU;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, LX/2hr;->A01(Ljava/lang/Object;)V

    if-nez p4, :cond_3

    goto :goto_1

    :cond_2
    iget-wide v0, v14, LX/aFm;->A01:J

    iget-object v4, v14, LX/aFm;->A06:Ljava/lang/Object;

    iget-object v6, v14, LX/aFm;->A05:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v5, v14, LX/aFm;->A04:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    iget-object v3, v14, LX/aFm;->A03:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    iget-object v13, v14, LX/aFm;->A02:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Bitmap;

    invoke-static {v2}, LX/2hr;->A01(Ljava/lang/Object;)V

    :goto_1
    iget-object v2, v8, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    invoke-static {v2}, LX/AsI;->A1G(LX/snm;)LX/DSA;

    move-result-object v2

    iget-object v10, v2, LX/DSA;->A06:LX/kyt;

    :cond_3
    iget-object v7, v8, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0S:LX/W7M;

    iget-object v2, v8, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    invoke-static {v2}, LX/AsI;->A1G(LX/snm;)LX/DSA;

    move-result-object v9

    sget-object v2, LX/1th;->A00:LX/1th;

    invoke-virtual {v2}, LX/4Lc;->A01()LX/1un;

    move-result-object p0

    new-instance v15, LX/DPd;

    invoke-direct {v15, v13, v8, v11}, LX/DPd;-><init>(Landroid/graphics/Bitmap;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/HAU;)V

    iput-object v13, v14, LX/aFm;->A02:Ljava/lang/Object;

    iput-object v3, v14, LX/aFm;->A03:Ljava/lang/Object;

    iput-object v5, v14, LX/aFm;->A04:Ljava/lang/Object;

    iput-object v6, v14, LX/aFm;->A05:Ljava/lang/Object;

    iput-object v4, v14, LX/aFm;->A06:Ljava/lang/Object;

    iput-object v10, v14, LX/aFm;->A07:Ljava/lang/Object;

    iput-object v7, v14, LX/aFm;->A08:Ljava/lang/Object;

    iput-object v9, v14, LX/aFm;->A09:Ljava/lang/Object;

    iput-wide v0, v14, LX/aFm;->A01:J

    move/from16 v2, p1

    iput v2, v14, LX/aFm;->A00:I

    move-object/from16 v2, p0

    invoke-static {v14, v2, v15}, LX/1uz;->A00(LX/HAU;LX/Ikk;LX/snk;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_5

    return-object v12

    :cond_4
    iget-wide v0, v14, LX/aFm;->A01:J

    iget-object v9, v14, LX/aFm;->A09:Ljava/lang/Object;

    check-cast v9, LX/DSA;

    iget-object v7, v14, LX/aFm;->A08:Ljava/lang/Object;

    check-cast v7, LX/W7M;

    iget-object v10, v14, LX/aFm;->A07:Ljava/lang/Object;

    check-cast v10, LX/kyt;

    iget-object v4, v14, LX/aFm;->A06:Ljava/lang/Object;

    iget-object v6, v14, LX/aFm;->A05:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v5, v14, LX/aFm;->A04:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    iget-object v3, v14, LX/aFm;->A03:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    iget-object v13, v14, LX/aFm;->A02:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Bitmap;

    invoke-static {v2}, LX/2hr;->A01(Ljava/lang/Object;)V

    :cond_5
    check-cast v2, Lcom/instagram/common/gallery/Medium;

    const/4 v15, 0x1

    new-instance v12, LX/D2c;

    move-object v14, v12

    move-object/from16 p0, v13

    move-object/from16 p1, v5

    move-object/from16 p2, v3

    invoke-direct/range {v14 .. v19}, LX/D2c;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v14, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_6

    move-object v14, v11

    :cond_6
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p6

    invoke-static {v6}, LX/5BY;->A0r(Ljava/lang/CharSequence;)Z

    move-result v13

    xor-int/lit8 p9, v13, 0x1

    const/16 p0, 0x0

    move-object/from16 p3, v11

    move-object/from16 p4, v6

    move-wide/from16 p7, v0

    move-object/from16 p1, v8

    move-object/from16 p2, v5

    invoke-direct/range {p1 .. p9}, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A00(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;IIJZ)LX/L32;

    move-result-object v5

    if-eqz v7, :cond_e

    iget-object v6, v7, LX/W7M;->A00:Ljava/lang/String;

    :goto_2
    iget-object v1, v9, LX/DSA;->A0B:Ljava/lang/String;

    iget-boolean v0, v9, LX/DSA;->A0K:Z

    if-nez v6, :cond_7

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    move-object v6, v1

    :cond_7
    if-eqz v7, :cond_d

    iget-object v0, v7, LX/W7M;->A01:Ljava/lang/String;

    :goto_3
    invoke-virtual {v10, v14, v6, v0}, LX/kyt;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LX/kyt;

    move-result-object p3

    iget-object v1, v8, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    invoke-static {v1}, LX/AsI;->A1G(LX/snm;)LX/DSA;

    move-result-object v0

    iget-object v0, v0, LX/DSA;->A05:LX/b4V;

    if-eqz v0, :cond_8

    iget-object v11, v0, LX/b4V;->A01:Ljava/lang/String;

    :cond_8
    iget-boolean v0, v5, LX/L32;->A0C:Z

    new-instance v15, LX/9Rc;

    move-object/from16 p2, p0

    move-object/from16 p5, p0

    move-object/from16 p6, v14

    move-object/from16 p7, v11

    move/from16 p8, v0

    move-object/from16 p1, v2

    move-object/from16 p4, v5

    invoke-direct/range {v15 .. v24}, LX/9Rc;-><init>(Lcom/facebook/mediacomposition/shared/transcoder/base/composition/MediaComposition;Lcom/instagram/common/gallery/Medium;Lcom/instagram/common/gallery/Medium;LX/kyt;LX/L32;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v8, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0U:Ljava/lang/String;

    if-nez v0, :cond_a

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    :goto_4
    sget-object v12, LX/4z7;->A00:LX/4z7;

    return-object v12

    :cond_a
    if-eqz v4, :cond_c

    iget-object v0, v8, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0U:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, v8, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A07:Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;

    invoke-virtual {v0, v15}, Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;->A0T(LX/9Rc;)V

    invoke-direct {v8}, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A04()V

    invoke-virtual {v12}, LX/D2c;->invoke()Ljava/lang/Object;

    goto :goto_4

    :cond_c
    invoke-static {v1}, LX/AsI;->A1G(LX/snm;)LX/DSA;

    move-result-object v0

    iget-boolean v0, v0, LX/DSA;->A0W:Z

    if-eqz v0, :cond_b

    invoke-static {v8}, LX/0ka;->A00(LX/0dq;)LX/0nf;

    move-result-object v0

    invoke-static {v0}, LX/1uw;->A08(LX/mkc;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput-object v15, v8, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0R:LX/9Rc;

    iput-object v12, v8, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0V:Lkotlin/jvm/functions/Function0;

    iput-object v3, v8, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0O:Landroid/graphics/Bitmap;

    iget-object v0, v8, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A01:Lcom/instagram/common/session/UserSession;

    invoke-static {v0}, LX/011;->A0J(LX/4Nb;)LX/say;

    move-result-object v2

    const-wide v0, 0x81121000066051L

    invoke-static {v2, v0, v1}, LX/011;->A0y(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v2, v8, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A07:Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;

    iget-object v0, v2, Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;->A0B:Lcom/instagram/common/session/UserSession;

    invoke-virtual {v15, v0}, LX/9Rc;->A00(Lcom/instagram/common/session/UserSession;)LX/7NY;

    move-result-object v1

    iget-object v0, v15, LX/9Rc;->A02:LX/kyt;

    iget-object v0, v0, LX/kyt;->A02:LX/1mN;

    invoke-static {v1, v2, v0}, Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;->A01(LX/7NY;Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;LX/1mN;)V

    goto :goto_4

    :cond_d
    move-object v0, v11

    goto/16 :goto_3

    :cond_e
    move-object v6, v11

    goto/16 :goto_2
.end method

.method public static final A02(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;Ljava/io/File;Ljava/lang/String;LX/HAU;IJ)Ljava/lang/Object;
    .locals 21

    move-object/from16 v5, p5

    move/from16 v15, p6

    move-object/from16 v9, p4

    move-wide/from16 v3, p7

    move-object/from16 v8, p0

    move-object/from16 v7, p3

    instance-of v0, v5, LX/aFn;

    move-object/from16 v10, p2

    if-eqz v0, :cond_0

    move-object v13, v5

    check-cast v13, LX/aFn;

    iget v2, v13, LX/aFn;->A01:I

    const/high16 v1, -0x80000000

    and-int v0, v2, v1

    if-eqz v0, :cond_0

    sub-int/2addr v2, v1

    iput v2, v13, LX/aFn;->A01:I

    :goto_0
    iget-object v0, v13, LX/aFn;->A0A:Ljava/lang/Object;

    sget-object v2, LX/1wh;->A02:LX/1wh;

    iget v5, v13, LX/aFn;->A01:I

    const/4 v14, 0x2

    const/16 v19, 0x0

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    if-eq v5, v1, :cond_2

    if-eq v5, v14, :cond_4

    invoke-static {}, LX/011;->A0N()Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_0
    new-instance v13, LX/aFn;

    invoke-direct {v13, v10, v5}, LX/aFn;-><init>(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/HAU;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, LX/2hr;->A01(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-wide v3, v13, LX/aFn;->A02:J

    iget v15, v13, LX/aFn;->A00:I

    iget-object v9, v13, LX/aFn;->A05:Ljava/lang/Object;

    iget-object v8, v13, LX/aFn;->A04:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    iget-object v7, v13, LX/aFn;->A03:Ljava/lang/Object;

    check-cast v7, Ljava/io/File;

    invoke-static {v0}, LX/2hr;->A01(Ljava/lang/Object;)V

    move-object/from16 p1, v19

    :goto_1
    iget-object v0, v10, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    invoke-static {v0}, LX/AsI;->A1G(LX/snm;)LX/DSA;

    move-result-object v11

    iget-object v6, v11, LX/DSA;->A06:LX/kyt;

    iget-object v12, v10, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0S:LX/W7M;

    iget-object v5, v11, LX/DSA;->A09:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    move-object/from16 v5, v19

    :cond_3
    sget-object v0, LX/1th;->A00:LX/1th;

    const/16 p7, 0x0

    invoke-virtual {v0}, LX/4Lc;->A01()LX/1un;

    move-result-object v1

    new-instance v0, LX/DPd;

    move-object/from16 p2, v11

    move-object/from16 p3, v10

    move-object/from16 p4, v7

    move-object/from16 p5, v19

    move/from16 p6, v15

    move-object/from16 v20, v0

    move-object/from16 p0, v8

    invoke-direct/range {v20 .. v27}, LX/DPd;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;LX/DSA;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;Ljava/io/File;LX/HAU;I)V

    iput-object v7, v13, LX/aFn;->A03:Ljava/lang/Object;

    iput-object v8, v13, LX/aFn;->A04:Ljava/lang/Object;

    iput-object v9, v13, LX/aFn;->A05:Ljava/lang/Object;

    iput-object v11, v13, LX/aFn;->A06:Ljava/lang/Object;

    iput-object v6, v13, LX/aFn;->A07:Ljava/lang/Object;

    iput-object v12, v13, LX/aFn;->A08:Ljava/lang/Object;

    iput-object v5, v13, LX/aFn;->A09:Ljava/lang/Object;

    iput v15, v13, LX/aFn;->A00:I

    iput-wide v3, v13, LX/aFn;->A02:J

    iput v14, v13, LX/aFn;->A01:I

    invoke-static {v13, v1, v0}, LX/1uz;->A00(LX/HAU;LX/Ikk;LX/snk;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_5

    return-object v2

    :cond_4
    iget-wide v3, v13, LX/aFn;->A02:J

    iget-object v5, v13, LX/aFn;->A09:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v12, v13, LX/aFn;->A08:Ljava/lang/Object;

    check-cast v12, LX/W7M;

    iget-object v6, v13, LX/aFn;->A07:Ljava/lang/Object;

    check-cast v6, LX/kyt;

    iget-object v11, v13, LX/aFn;->A06:Ljava/lang/Object;

    check-cast v11, LX/DSA;

    iget-object v9, v13, LX/aFn;->A05:Ljava/lang/Object;

    iget-object v8, v13, LX/aFn;->A04:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    iget-object v7, v13, LX/aFn;->A03:Ljava/lang/Object;

    invoke-static {v0}, LX/2hr;->A01(Ljava/lang/Object;)V

    const/16 p7, 0x0

    :cond_5
    check-cast v0, LX/IYF;

    iget-object v15, v0, LX/IYF;->A01:Lcom/instagram/common/gallery/Medium;

    iget-object v14, v0, LX/IYF;->A00:Lcom/facebook/mediacomposition/shared/transcoder/base/composition/MediaComposition;

    iget-object v1, v0, LX/IYF;->A03:LX/IY8;

    iget-object v2, v0, LX/IYF;->A02:Lcom/instagram/common/gallery/Medium;

    if-eqz v15, :cond_9

    if-eqz v14, :cond_9

    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    iget-object v0, v11, LX/DSA;->A09:Ljava/lang/String;

    move-object/from16 v18, v0

    iget v0, v1, LX/IY8;->A01:I

    move/from16 v17, v0

    iget v0, v1, LX/IY8;->A00:I

    move/from16 v16, v0

    iget-wide v0, v1, LX/IY8;->A02:J

    new-instance v13, Ljava/lang/Long;

    invoke-direct {v13, v0, v1}, Ljava/lang/Long;-><init>(J)V

    if-eqz v5, :cond_6

    const/16 p7, 0x1

    :cond_6
    move-object/from16 v20, v10

    move-object/from16 p0, v8

    move-object/from16 p1, v13

    move-object/from16 p2, v18

    move/from16 p3, v17

    move/from16 p4, v16

    move-wide/from16 p5, v3

    invoke-direct/range {v20 .. v28}, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A00(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;IIJZ)LX/L32;

    move-result-object v0

    if-eqz v12, :cond_d

    iget-object v3, v12, LX/W7M;->A00:Ljava/lang/String;

    :goto_2
    iget-object v4, v11, LX/DSA;->A0B:Ljava/lang/String;

    iget-boolean v1, v11, LX/DSA;->A0K:Z

    if-nez v3, :cond_7

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    move-object v3, v4

    :cond_7
    if-eqz v12, :cond_c

    iget-object v1, v12, LX/W7M;->A01:Ljava/lang/String;

    :goto_3
    invoke-virtual {v6, v5, v3, v1}, LX/kyt;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LX/kyt;

    move-result-object v17

    iget-object v3, v10, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    invoke-static {v3}, LX/AsI;->A1G(LX/snm;)LX/DSA;

    move-result-object v1

    iget-object v1, v1, LX/DSA;->A05:LX/b4V;

    if-eqz v1, :cond_b

    iget-object v4, v1, LX/b4V;->A01:Ljava/lang/String;

    :goto_4
    iget-boolean v1, v0, LX/L32;->A0C:Z

    new-instance v13, LX/9Rc;

    move-object/from16 v16, v2

    move-object/from16 v18, v0

    move-object/from16 v20, v5

    move-object/from16 p0, v4

    move/from16 p1, v1

    invoke-direct/range {v13 .. v22}, LX/9Rc;-><init>(Lcom/facebook/mediacomposition/shared/transcoder/base/composition/MediaComposition;Lcom/instagram/common/gallery/Medium;Lcom/instagram/common/gallery/Medium;LX/kyt;LX/L32;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    new-instance v1, LX/luB;

    invoke-direct {v1, v0, v8, v10, v7}, LX/luB;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0U:Ljava/lang/String;

    if-eqz v0, :cond_9

    if-eqz v9, :cond_a

    iget-object v0, v10, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0U:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    iget-object v0, v10, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A07:Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;

    invoke-virtual {v0, v13}, Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;->A0T(LX/9Rc;)V

    invoke-direct {v10}, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A04()V

    invoke-virtual {v1}, LX/luB;->invoke()Ljava/lang/Object;

    :cond_9
    :goto_5
    sget-object v2, LX/4z7;->A00:LX/4z7;

    return-object v2

    :cond_a
    invoke-static {v3}, LX/AsI;->A1G(LX/snm;)LX/DSA;

    move-result-object v0

    iget-boolean v0, v0, LX/DSA;->A0W:Z

    if-eqz v0, :cond_8

    invoke-static {v10}, LX/0ka;->A00(LX/0dq;)LX/0nf;

    move-result-object v0

    invoke-static {v0}, LX/1uw;->A08(LX/mkc;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-object v13, v10, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0R:LX/9Rc;

    iput-object v1, v10, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0V:Lkotlin/jvm/functions/Function0;

    iget-object v0, v10, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A01:Lcom/instagram/common/session/UserSession;

    invoke-static {v0}, LX/011;->A0J(LX/4Nb;)LX/say;

    move-result-object v2

    const-wide v0, 0x81121000066051L

    invoke-static {v2, v0, v1}, LX/011;->A0y(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v2, v10, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A07:Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;

    iget-object v0, v2, Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;->A0B:Lcom/instagram/common/session/UserSession;

    invoke-virtual {v13, v0}, LX/9Rc;->A00(Lcom/instagram/common/session/UserSession;)LX/7NY;

    move-result-object v1

    iget-object v0, v13, LX/9Rc;->A02:LX/kyt;

    iget-object v0, v0, LX/kyt;->A02:LX/1mN;

    invoke-static {v1, v2, v0}, Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;->A01(LX/7NY;Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;LX/1mN;)V

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    goto :goto_3

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public static final A03(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/HAU;)LX/4z7;
    .locals 5

    const/16 v4, 0xc

    instance-of v0, p1, LX/DYE;

    if-eqz v0, :cond_0

    move-object v3, p1

    check-cast v3, LX/DYE;

    iget v0, v3, LX/DYE;->$t:I

    if-ne v0, v4, :cond_0

    iget v2, v3, LX/DYE;->A00:I

    const/high16 v1, -0x80000000

    and-int v0, v2, v1

    if-eqz v0, :cond_0

    sub-int/2addr v2, v1

    iput v2, v3, LX/DYE;->A00:I

    :goto_0
    iget-object v2, v3, LX/DYE;->A01:Ljava/lang/Object;

    iget v1, v3, LX/DYE;->A00:I

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    invoke-static {}, LX/011;->A0N()Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-static {p0, p1, v4}, LX/DYE;->A00(Ljava/lang/Object;LX/HAU;I)LX/DYE;

    move-result-object v3

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v2}, LX/2hr;->A01(Ljava/lang/Object;)V

    goto :goto_1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    invoke-static {v2}, LX/2hr;->A01(Ljava/lang/Object;)V

    :try_start_1
    iget-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A06:Lcom/instagram/quicksnap/creation/IgQuickSnapCameraPreferences;

    iput v4, v3, LX/DYE;->A00:I

    iget-object v0, v0, Lcom/instagram/quicksnap/creation/IgQuickSnapCameraPreferences;->A01:Lcom/instagram/common/session/UserSession;

    invoke-static {v0}, LX/20W;->A0c(Lcom/instagram/common/session/UserSession;)LX/2in;

    move-result-object v3

    sget-object v2, LX/0l9;->A06:LX/Izl;

    sget-object v1, LX/0l9;->A0S:[LX/Lms;

    const/4 v0, 0x6

    invoke-static {v3, v2, v1, v0, v4}, LX/135;->A1T(Ljava/lang/Object;LX/Izl;[LX/Lms;IZ)V

    goto :goto_1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v2

    const-string v1, "Failed to update Moods V2 captions info dialog preference"

    const-string v0, "QuickSnapCameraVM"

    invoke-static {v0, v1, v2}, LX/0lj;->A0F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sget-object v0, LX/4z7;->A00:LX/4z7;

    return-object v0
.end method

.method private final A04()V
    .locals 4

    invoke-static {p0}, LX/0ka;->A00(LX/0dq;)LX/0nf;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1e

    new-instance v0, LX/G4B;

    invoke-direct {v0, p0, v2, v1}, LX/G4B;-><init>(Ljava/lang/Object;LX/HAU;I)V

    invoke-static {v0, v3}, LX/020;->A1S(LX/snk;LX/mkc;)V

    iget-object v1, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0D:LX/5By;

    sget-object v0, LX/WFa;->A00:LX/WFa;

    invoke-interface {v1, v0}, LX/InP;->HTF(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final A05(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/instagram/common/session/UserSession;Ljava/lang/String;)V
    .locals 4

    if-eqz p3, :cond_0

    invoke-static {p3}, LX/5BY;->A0r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v2, 0x0

    invoke-static {p2}, LX/5B5;->A0I(Ljava/lang/Object;)V

    new-instance v1, LX/G1w;

    invoke-direct {v1, p0, v3}, LX/G1w;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput-boolean v0, v1, LX/G1w;->A02:Z

    invoke-static {p3}, LX/20W;->A0z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LX/G1w;->A01:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-static {p1}, LX/16V;->A0H(Landroid/graphics/Bitmap;)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public static final A06(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 6

    const-string v4, "QuickSnapCameraVM"

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p2, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A01:Lcom/instagram/common/session/UserSession;

    invoke-static {v0}, LX/4oU;->A06(Lcom/instagram/common/session/UserSession;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0}, LX/5B5;->A0Q(Ljava/lang/Object;)V

    invoke-static {p0}, LX/0E2;->A0G(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0}, LX/254;->A06(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    const/16 v0, 0x2d0

    if-le v1, v0, :cond_1

    const/16 v1, 0x2d0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LX/225;->A00(Landroid/content/Context;)F

    move-result v1

    const/high16 v0, 0x42a00000    # 80.0f

    mul-float/2addr v0, v1

    float-to-int v1, v0

    :cond_1
    :goto_0
    const/4 v2, 0x1

    invoke-static {p1, v1, v1, v2}, LX/6b4;->A00(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-ne v1, p1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_2
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    invoke-static {v1}, LX/5B5;->A0S(Ljava/lang/Object;)V

    new-instance v2, LX/RGY;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, LX/RGY;->A00:Landroid/graphics/Bitmap;

    iput-boolean v5, v2, LX/RGY;->A01:Z

    const/4 v0, 0x0

    sput v0, Lredex/$StoreFenceHelper;->DUMMY_VOLATILE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {p2}, LX/0ka;->A00(LX/0dq;)LX/0nf;

    move-result-object v1

    const/16 v0, 0x3e

    invoke-static {p0, v2, p2, v3, v0}, LX/DSe;->A00(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;LX/HAU;I)LX/DSe;

    move-result-object v0

    invoke-static {v0, v1}, LX/020;->A1S(LX/snk;LX/mkc;)V

    return-void

    :catch_0
    move-exception v1

    const-string v0, "Failed to build archive peek bitmap"

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v0, "Failed to allocate archive peek bitmap"

    :goto_1
    invoke-static {v4, v0, v1}, LX/0lj;->A0F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final A07(Landroid/content/Context;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;Ljava/lang/String;Z)V
    .locals 6

    if-nez p3, :cond_1

    invoke-static {p0}, LX/iJ9;->A00(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, LX/iJ9;->A01(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A01:Lcom/instagram/common/session/UserSession;

    const/4 v4, 0x0

    invoke-static {v0, v4}, LX/011;->A0K(LX/4Nb;Z)LX/say;

    move-result-object v2

    const-wide v0, 0x8115e000006e25L

    invoke-static {v2, v0, v1}, LX/011;->A0y(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    :cond_0
    invoke-interface {v2}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LX/DSA;

    iget v0, v3, LX/DSA;->A00:I

    add-int/lit8 v5, v0, 0x1

    const p0, -0x80001

    move p1, v4

    move p2, v4

    move p3, v4

    invoke-static/range {v3 .. v9}, LX/DSA;->A06(LX/DSA;IIIZZZ)LX/DSA;

    move-result-object v0

    invoke-interface {v2, v1, v0}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method public static final A08(LX/6mz;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 18

    move-object/from16 v2, p1

    iget-object v1, v2, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A01:Lcom/instagram/common/session/UserSession;

    const/4 v0, 0x0

    invoke-static {v1, v0}, LX/5B5;->A0U(Ljava/lang/Object;I)V

    const-class v0, LX/6dn;

    invoke-virtual {v1, v0}, LX/4Nb;->A00(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/6dn;

    if-eqz v0, :cond_1

    iget-object v1, v0, LX/6dn;->A0K:LX/6sv;

    if-eqz v1, :cond_1

    iget-object v0, v2, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    invoke-static {v0}, LX/AsI;->A1G(LX/snm;)LX/DSA;

    move-result-object v0

    iget-boolean v0, v0, LX/DSA;->A0I:Z

    const/16 v16, 0x2

    if-eqz v0, :cond_0

    const/16 v16, 0x1

    :cond_0
    sget-object v11, LX/56z;->A00:LX/56z;

    sget-object v4, LX/FeW;->A00:LX/FeW;

    sget-object v3, LX/42Z;->A0S:LX/42Z;

    const/4 v5, 0x0

    const/16 v17, 0x1

    const-string v9, "ig_camera_client_events"

    move-object/from16 v2, p0

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v10, v5

    move-object v12, v11

    move-object v13, v11

    move-object v14, v11

    move-object v15, v5

    invoke-virtual/range {v1 .. v17}, LX/6sv;->A0Z(LX/6mz;LX/42Z;LX/JtE;Lcom/instagram/creation/capture/quickcapture/aspectratioutil/intf/CreationLayoutConfig;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;II)V

    :cond_1
    return-void
.end method

.method public static final A09(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 2

    iget-object v1, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0R:LX/9Rc;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A07:Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;

    invoke-virtual {v0, v1}, Lcom/instagram/quicksnap/data/repository/QuickSnapRepository;->A0T(LX/9Rc;)V

    invoke-direct {p0}, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A04()V

    iget-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0V:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0V:Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0O:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0R:LX/9Rc;

    iput-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0U:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static final A0A(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 3

    iget-object p0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    :cond_0
    invoke-interface {p0}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, LX/DSA;

    const/16 v0, -0x801

    invoke-static {v1, v0}, LX/DSA;->A05(LX/DSA;I)LX/DSA;

    move-result-object v0

    invoke-interface {p0, v2, v0}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public static final A0B(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0S:LX/W7M;

    iput-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0Q:LX/RKY;

    iget-object p0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    :cond_0
    invoke-interface {p0}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, LX/DSA;

    const/4 v0, 0x0

    invoke-static {v1, v0}, LX/5B5;->A0U(Ljava/lang/Object;I)V

    const-string v0, ""

    invoke-static {v1, v0}, LX/DSA;->A0A(LX/DSA;Ljava/lang/String;)LX/DSA;

    move-result-object v0

    invoke-interface {p0, v2, v0}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public static final A0C(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 4

    iget-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    invoke-static {v0}, LX/AsI;->A1G(LX/snm;)LX/DSA;

    move-result-object v0

    iget-boolean v0, v0, LX/DSA;->A0K:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0K:Z

    if-nez v0, :cond_0

    invoke-static {p0}, LX/0ka;->A00(LX/0dq;)LX/0nf;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x11

    new-instance v0, LX/aKw;

    invoke-direct {v0, p0, v2, v1}, LX/aKw;-><init>(Ljava/lang/Object;LX/HAU;I)V

    invoke-static {v0, v3}, LX/020;->A1S(LX/snk;LX/mkc;)V

    :cond_0
    return-void
.end method

.method public static final A0D(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;Ljava/lang/String;)V
    .locals 36

    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0B:LX/2sj;

    const/16 v31, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v5}, LX/2sj;->AYe(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v5, v3, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0B:LX/2sj;

    iget-object v0, v3, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0C:LX/2sj;

    if-eqz v0, :cond_1

    invoke-interface {v0, v5}, LX/2sj;->AYe(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iget-object v2, v3, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    :cond_2
    invoke-interface {v2}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, LX/DSA;

    iget v0, v7, LX/DSA;->A03:I

    add-int/lit8 v18, v0, 0x1

    const/16 v20, 0x3

    const/4 v15, 0x0

    const/4 v14, 0x0

    const v19, -0x700001

    move-object v6, v5

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    move-object v11, v5

    move-object v12, v5

    move-object v13, v5

    move/from16 v16, v15

    move/from16 v17, v15

    move/from16 v21, v15

    move/from16 v22, v15

    move/from16 v23, v15

    move/from16 v24, v15

    move/from16 v25, v15

    move/from16 v26, v15

    move/from16 v27, v15

    move/from16 v28, v15

    move/from16 v29, v15

    move/from16 v30, v15

    move/from16 v32, v15

    move/from16 v33, v15

    move/from16 v34, v15

    move/from16 v35, v15

    move/from16 p0, v15

    invoke-static/range {v5 .. v36}, LX/DSA;->A00(Landroid/graphics/Bitmap;LX/b4V;LX/DSA;LX/kyt;LX/MF6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;FIIIIIIZZZZZZZZZZZZZZZZ)LX/DSA;

    move-result-object v0

    invoke-interface {v2, v1, v0}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3}, LX/0ka;->A00(LX/0dq;)LX/0nf;

    move-result-object v2

    const/16 v1, 0x16

    new-instance v0, LX/aIs;

    move-object/from16 v4, p1

    invoke-direct {v0, v3, v4, v5, v1}, LX/aIs;-><init>(Ljava/lang/Object;Ljava/lang/String;LX/HAU;I)V

    invoke-static {v0, v2}, LX/194;->A0s(LX/snk;LX/mkc;)LX/1va;

    move-result-object v0

    iput-object v0, v3, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0C:LX/2sj;

    return-void
.end method

.method public static final A0E(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;Z)V
    .locals 33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    :cond_0
    invoke-interface {v2}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, LX/DSA;

    const/16 v18, 0x1

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/16 v17, -0x1

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    move v14, v13

    move v15, v13

    move/from16 v16, v13

    move/from16 v19, v13

    move/from16 v20, v13

    move/from16 v21, v13

    move/from16 v22, v13

    move/from16 v23, v13

    move/from16 v24, v13

    move/from16 v25, v13

    move/from16 v26, v13

    move/from16 v27, v13

    move/from16 v28, v13

    move/from16 v29, v13

    move/from16 v30, v13

    move/from16 v31, v13

    move/from16 v32, v13

    move/from16 p0, v13

    invoke-static/range {v3 .. v34}, LX/DSA;->A00(Landroid/graphics/Bitmap;LX/b4V;LX/DSA;LX/kyt;LX/MF6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;FIIIIIIZZZZZZZZZZZZZZZZ)LX/DSA;

    move-result-object v0

    invoke-interface {v2, v1, v0}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public static final A0F(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;Z)V
    .locals 33

    move-object/from16 v4, p0

    iget-object v3, v4, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A01:Lcom/instagram/common/session/UserSession;

    const/4 v13, 0x0

    invoke-static {v3, v13}, LX/011;->A0K(LX/4Nb;Z)LX/say;

    move-result-object v2

    const-wide v0, 0x8115c200006dc0L

    invoke-static {v2, v0, v1}, LX/011;->A0y(Ljava/lang/Object;J)Z

    move-result v32

    if-eqz p1, :cond_0

    if-eqz v32, :cond_0

    invoke-static {v3, v13}, LX/1na;->A02(LX/4Nb;Z)LX/say;

    move-result-object v2

    const-wide v0, 0x8115c200046dc4L

    invoke-static {v2, v0, v1}, LX/011;->A0y(Ljava/lang/Object;J)Z

    move-result v0

    const/16 p0, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/16 p0, 0x0

    :cond_1
    iget-object v2, v4, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    :cond_2
    invoke-interface {v2}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, LX/DSA;

    const/16 v18, 0x3

    const/4 v3, 0x0

    const/4 v12, 0x0

    const v17, -0x22800001

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    move v14, v13

    move v15, v13

    move/from16 v16, v13

    move/from16 v19, v13

    move/from16 v20, v13

    move/from16 v21, v13

    move/from16 v22, v13

    move/from16 v23, v13

    move/from16 v24, v13

    move/from16 v25, v13

    move/from16 v26, v13

    move/from16 v27, v13

    move/from16 v28, v13

    move/from16 v29, v13

    move/from16 v30, v13

    move/from16 v31, v13

    move/from16 p1, v13

    invoke-static/range {v3 .. v34}, LX/DSA;->A00(Landroid/graphics/Bitmap;LX/b4V;LX/DSA;LX/kyt;LX/MF6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;FIIIIIIZZZZZZZZZZZZZZZZ)LX/DSA;

    move-result-object v0

    invoke-interface {v2, v1, v0}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void
.end method


# virtual methods
.method public final A15()V
    .locals 3

    invoke-static {p0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->hide(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V

    invoke-super {p0}, LX/4Kd;->A15()V

    invoke-static {p0}, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A09(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V

    iget-object v1, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A03:LX/8vG;

    sget-object v0, LX/008;->A00:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, LX/8vG;->A03(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A01:Lcom/instagram/common/session/UserSession;

    const/4 v0, 0x0

    invoke-static {v1, v0}, LX/5B5;->A0U(Ljava/lang/Object;I)V

    const-class v0, LX/6dn;

    invoke-virtual {v1, v0}, LX/4Nb;->A00(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/6dn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX/6dn;->A0P()V

    :cond_0
    iget-object v1, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0A:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    :cond_1
    invoke-interface {v2}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, LX/DSA;

    invoke-static {v0}, LX/DSA;->A03(LX/DSA;)LX/DSA;

    move-result-object v0

    invoke-interface {v2, v1, v0}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void
.end method

.method public final A16()V
    .locals 3

    iget-object v1, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0A:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    :cond_0
    invoke-interface {v2}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, LX/DSA;

    invoke-static {v0}, LX/DSA;->A03(LX/DSA;)LX/DSA;

    move-result-object v0

    invoke-interface {v2, v1, v0}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final A17(I)V
    .locals 35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    :cond_0
    invoke-interface {v2}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, LX/DSA;

    const/4 v0, 0x1

    move/from16 v3, p1

    invoke-static {v3, v0}, LX/011;->A0t(II)Z

    move-result v27

    const/16 v18, 0x3

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const v17, -0x8001

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    move v14, v13

    move v15, v13

    move/from16 v16, v13

    move/from16 v19, v13

    move/from16 v20, v13

    move/from16 v21, v13

    move/from16 v22, v13

    move/from16 v23, v13

    move/from16 v24, v13

    move/from16 v25, v13

    move/from16 v26, v13

    move/from16 v28, v13

    move/from16 v29, v13

    move/from16 v30, v13

    move/from16 v31, v13

    move/from16 v32, v13

    move/from16 v33, v13

    move/from16 v34, v13

    invoke-static/range {v3 .. v34}, LX/DSA;->A00(Landroid/graphics/Bitmap;LX/b4V;LX/DSA;LX/kyt;LX/MF6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;FIIIIIIZZZZZZZZZZZZZZZZ)LX/DSA;

    move-result-object v0

    invoke-interface {v2, v1, v0}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final A18(LX/kyt;)V
    .locals 4

    iget-object v2, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    invoke-static {v2}, LX/AsI;->A1G(LX/snm;)LX/DSA;

    move-result-object v0

    iget-object v1, v0, LX/DSA;->A06:LX/kyt;

    invoke-virtual {v1, p1}, LX/kyt;->A06(LX/kyt;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq v1, p1, :cond_1

    :cond_0
    invoke-interface {v2}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, LX/DSA;

    invoke-static {v0, p1}, LX/DSA;->A07(LX/DSA;LX/kyt;)LX/DSA;

    move-result-object v0

    invoke-interface {v2, v1, v0}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, LX/DSA;

    const/4 v3, 0x0

    invoke-static {v0, p1}, LX/DSA;->A07(LX/DSA;LX/kyt;)LX/DSA;

    move-result-object v0

    invoke-interface {v2, v1, v0}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, LX/0ka;->A00(LX/0dq;)LX/0nf;

    move-result-object v2

    const/16 v1, 0x15

    new-instance v0, LX/I93;

    invoke-direct {v0, p1, p0, v3, v1}, LX/I93;-><init>(Ljava/lang/Object;Ljava/lang/Object;LX/HAU;I)V

    invoke-static {v0, v2}, LX/020;->A1S(LX/snk;LX/mkc;)V

    return-void
.end method

.method public final A19(LX/W7M;)V
    .locals 9

    iput-object p1, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0S:LX/W7M;

    iget-object v2, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    :cond_0
    invoke-interface {v2}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LX/DSA;

    iget-object v5, p1, LX/W7M;->A02:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string v5, ""

    :cond_1
    invoke-static {p1}, LX/Vc3;->A00(LX/W7M;)LX/MF6;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, LX/Sq2;->A00(LX/MF6;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    iget-object v0, v3, LX/DSA;->A0C:Ljava/util/List;

    invoke-static {p1, v0}, LX/Vc3;->A01(LX/W7M;Ljava/util/List;)LX/MF6;

    move-result-object v4

    const/4 v7, 0x0

    const v8, -0x1c000401

    invoke-static/range {v3 .. v8}, LX/DSA;->A08(LX/DSA;LX/MF6;Ljava/lang/String;Ljava/lang/String;FI)LX/DSA;

    move-result-object v0

    invoke-interface {v2, v1, v0}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0C(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V

    return-void

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public final A1A(Z)V
    .locals 9

    iget-object v2, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0F:LX/snm;

    :cond_0
    invoke-interface {v2}, LX/snm;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LX/DSA;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, -0x10001

    move v7, p1

    move v8, v5

    invoke-static/range {v3 .. v8}, LX/DSA;->A0B(LX/DSA;Ljava/lang/String;IIZZ)LX/DSA;

    move-result-object v0

    invoke-interface {v2, v1, v0}, LX/snm;->AcF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
