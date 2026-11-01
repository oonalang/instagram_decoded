.class public abstract LX/XcZ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:LX/sdn;

.field public static final A01:LX/sdn;

.field public static final A02:LX/sdn;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const v4, 0x3f333333    # 0.7f

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v0, v4, v3}, LX/AsD;->A0Z(Ljava/lang/Object;FF)LX/2Io;

    move-result-object v0

    sput-object v0, LX/XcZ;->A00:LX/sdn;

    invoke-static {}, LX/BPF;->A0F()J

    move-result-wide v1

    new-instance v0, LX/2kO;

    invoke-direct {v0, v1, v2}, LX/2kO;-><init>(J)V

    invoke-static {v0, v4, v3}, LX/AsD;->A0Z(Ljava/lang/Object;FF)LX/2Io;

    move-result-object v0

    sput-object v0, LX/XcZ;->A01:LX/sdn;

    new-instance v0, LX/3Ct;

    invoke-direct {v0, v1, v2}, LX/3Ct;-><init>(J)V

    invoke-static {v0, v4, v3}, LX/AsD;->A0Z(Ljava/lang/Object;FF)LX/2Io;

    move-result-object v0

    sput-object v0, LX/XcZ;->A02:LX/sdn;

    return-void
.end method

.method public static final A00(LX/XtV;)Lcom/facebook/cameracore/litecamera/mediapipeline/iglu/filter/model/ValueMapFilterModel;
    .locals 4

    iget-object v0, p0, LX/XtV;->A00:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    invoke-static {}, LX/0E2;->A1A()Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v1, p0, LX/XtV;->A01:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, LX/8U7;->A0E(Ljava/lang/String;F)Lcom/facebook/cameracore/litecamera/mediapipeline/iglu/filter/model/ValueMapFilterModel;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, LX/XtV;->A01:Ljava/lang/String;

    invoke-static {v0}, LX/8U7;->A0D(Ljava/lang/String;)Lcom/facebook/cameracore/litecamera/mediapipeline/iglu/filter/model/ValueMapFilterModel;

    move-result-object v3

    :goto_0
    iget-object v0, p0, LX/XtV;->A02:Ljava/util/Map;

    invoke-static {v0}, LX/011;->A0f(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, LX/011;->A0i(Ljava/util/Iterator;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, LX/20W;->A11(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX/0E2;->A03(Ljava/lang/Object;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/facebook/cameracore/litecamera/mediapipeline/iglu/filter/model/ValueMapFilterModel;->A0E(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method public static final A01(Landroid/graphics/Bitmap;LX/iAM;LX/k4m;LX/DSA;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/kyb;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;LX/1nm;FIIIIZZZZZZZZZ)V
    .locals 63

    move-object/from16 v33, p0

    move/from16 v53, p17

    move/from16 v52, p27

    move/from16 v27, p28

    move/from16 v32, p29

    move/from16 v31, p30

    move/from16 v30, p25

    move/from16 v29, p26

    move-object/from16 v26, p9

    move-object/from16 v24, p10

    move-object/from16 v23, p11

    move-object/from16 v22, p12

    move-object/from16 v25, p13

    move-object/from16 v21, p15

    move-object/from16 v20, p14

    const v1, -0x704cf1e3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, LX/iAM;->HOA(I)V

    move/from16 v18, p18

    and-int/lit8 v1, p18, 0x6

    move-object/from16 v6, p3

    if-nez v1, :cond_3b

    invoke-static {v0, v6}, LX/BPg;->A0W(LX/iAM;Ljava/lang/Object;)I

    move-result v1

    or-int v1, v1, p18

    :goto_0
    and-int/lit8 v2, p18, 0x30

    move-object/from16 v51, p5

    if-nez v2, :cond_0

    move-object/from16 v2, v51

    invoke-static {v0, v2}, LX/BPg;->A0X(LX/iAM;Ljava/lang/Object;)I

    move-result v2

    or-int/2addr v1, v2

    :cond_0
    move/from16 v2, v18

    and-int/lit16 v2, v2, 0x180

    move-object/from16 p15, p2

    if-nez v2, :cond_1

    move-object/from16 v2, p15

    invoke-static {v0, v2}, LX/BPg;->A0Y(LX/iAM;Ljava/lang/Object;)I

    move-result v2

    or-int/2addr v1, v2

    :cond_1
    move/from16 v2, v18

    and-int/lit16 v2, v2, 0xc00

    move/from16 v50, p22

    if-nez v2, :cond_2

    move/from16 v2, v50

    invoke-static {v0, v2}, LX/BPg;->A0t(LX/iAM;Z)I

    move-result v2

    or-int/2addr v1, v2

    :cond_2
    move/from16 v2, v18

    and-int/lit16 v2, v2, 0x6000

    move/from16 v49, p23

    if-nez v2, :cond_3

    move/from16 v2, v49

    invoke-static {v0, v2}, LX/BPg;->A0u(LX/iAM;Z)I

    move-result v2

    or-int/2addr v1, v2

    :cond_3
    const/high16 v2, 0x30000

    and-int v2, p18, v2

    const/high16 v4, 0x10000

    move/from16 v48, p24

    if-nez v2, :cond_4

    move/from16 v2, v48

    invoke-static {v0, v2}, LX/BPg;->A0v(LX/iAM;Z)I

    move-result v2

    or-int/2addr v1, v2

    :cond_4
    const/high16 v2, 0x180000

    and-int v2, p18, v2

    move-object/from16 p13, p6

    if-nez v2, :cond_5

    move-object/from16 v2, p13

    invoke-static {v0, v2}, LX/BPg;->A0c(LX/iAM;Ljava/lang/Object;)I

    move-result v2

    or-int/2addr v1, v2

    :cond_5
    const/high16 v2, 0xc00000

    and-int v2, p18, v2

    move-object/from16 p12, p7

    if-nez v2, :cond_6

    move-object/from16 v2, p12

    invoke-static {v0, v2}, LX/BPg;->A0d(LX/iAM;Ljava/lang/Object;)I

    move-result v2

    or-int/2addr v1, v2

    :cond_6
    const/high16 v2, 0x6000000

    and-int v2, p18, v2

    move-object/from16 p11, p8

    if-nez v2, :cond_7

    move-object/from16 v2, p11

    invoke-static {v0, v2}, LX/BPg;->A0e(LX/iAM;Ljava/lang/Object;)I

    move-result v2

    or-int/2addr v1, v2

    :cond_7
    const/high16 v2, 0x30000000

    and-int v2, p18, v2

    move-object/from16 p14, p4

    if-nez v2, :cond_8

    move-object/from16 v2, p14

    invoke-static {v0, v2}, LX/BPg;->A0f(LX/iAM;Ljava/lang/Object;)I

    move-result v2

    or-int/2addr v1, v2

    :cond_8
    move/from16 v17, p19

    and-int/lit8 v2, p19, 0x6

    move-object/from16 p10, p16

    if-nez v2, :cond_3a

    move-object/from16 v2, p10

    invoke-static {v0, v2}, LX/BPg;->A0W(LX/iAM;Ljava/lang/Object;)I

    move-result v2

    or-int v2, p19, v2

    :goto_1
    move/from16 v12, p21

    and-int/lit16 v13, v12, 0x800

    if-eqz v13, :cond_39

    or-int/lit8 v2, v2, 0x30

    :cond_9
    :goto_2
    and-int/lit16 v11, v12, 0x1000

    if-eqz v11, :cond_38

    or-int/lit16 v2, v2, 0x180

    :cond_a
    :goto_3
    and-int/lit16 v10, v12, 0x2000

    if-eqz v10, :cond_37

    or-int/lit16 v2, v2, 0xc00

    :cond_b
    :goto_4
    and-int/lit16 v9, v12, 0x4000

    if-eqz v9, :cond_36

    or-int/lit16 v2, v2, 0x6000

    :cond_c
    :goto_5
    const v3, 0x8000

    and-int v40, p21, v3

    const/high16 v14, 0x30000

    if-eqz v40, :cond_35

    or-int/2addr v2, v14

    :cond_d
    :goto_6
    and-int v39, p21, v4

    const/high16 v3, 0x180000

    if-nez v39, :cond_e

    and-int v3, p19, v3

    if-nez v3, :cond_f

    move-object/from16 v3, v23

    invoke-static {v0, v3}, LX/BPg;->A0c(LX/iAM;Ljava/lang/Object;)I

    move-result v3

    :cond_e
    or-int/2addr v2, v3

    :cond_f
    const/high16 v3, 0x20000

    and-int v38, p21, v3

    const/high16 v3, 0xc00000

    if-nez v38, :cond_10

    and-int v3, p19, v3

    if-nez v3, :cond_11

    move/from16 v3, v53

    invoke-static {v0, v3}, LX/BPg;->A0A(LX/iAM;F)I

    move-result v3

    :cond_10
    or-int/2addr v2, v3

    :cond_11
    const/high16 v3, 0x40000

    and-int v8, p21, v3

    const/high16 v3, 0x6000000

    if-nez v8, :cond_12

    and-int v3, p19, v3

    if-nez v3, :cond_13

    move/from16 v3, v27

    invoke-static {v0, v3}, LX/BPg;->A0y(LX/iAM;Z)I

    move-result v3

    :cond_12
    or-int/2addr v2, v3

    :cond_13
    const/high16 v3, 0x80000

    and-int v37, p21, v3

    const/high16 v3, 0x30000000

    if-nez v37, :cond_14

    and-int v3, p19, v3

    if-nez v3, :cond_15

    move-object/from16 v3, v22

    invoke-static {v0, v3}, LX/BPg;->A0f(LX/iAM;Ljava/lang/Object;)I

    move-result v3

    :cond_14
    or-int/2addr v2, v3

    :cond_15
    const/high16 v44, 0x100000

    and-int v7, p21, v44

    move/from16 v19, p20

    if-eqz v7, :cond_33

    or-int/lit8 v3, p20, 0x6

    :goto_7
    const/high16 v4, 0x200000

    and-int v5, p21, v4

    if-eqz v5, :cond_32

    or-int/lit8 v3, v3, 0x30

    :cond_16
    :goto_8
    const/high16 v4, 0x400000

    and-int v36, p21, v4

    if-eqz v36, :cond_31

    or-int/lit16 v3, v3, 0x180

    :cond_17
    :goto_9
    const/high16 v28, 0x800000

    and-int v35, p21, v28

    if-eqz v35, :cond_30

    or-int/lit16 v3, v3, 0xc00

    :cond_18
    :goto_a
    const/high16 v4, 0x1000000

    and-int v34, p21, v4

    if-eqz v34, :cond_2f

    or-int/lit16 v3, v3, 0x6000

    :cond_19
    :goto_b
    const/high16 v4, 0x2000000

    and-int v16, p21, v4

    if-eqz v16, :cond_2e

    or-int/2addr v3, v14

    :cond_1a
    :goto_c
    const v15, 0x12492493

    and-int v14, v1, v15

    const v4, 0x12492492

    if-ne v14, v4, :cond_1b

    and-int/2addr v15, v2

    if-ne v15, v4, :cond_1b

    const v15, 0x12493

    and-int/2addr v15, v3

    const v14, 0x12492

    const/4 v4, 0x0

    if-eq v15, v14, :cond_1c

    :cond_1b
    const/4 v4, 0x1

    :cond_1c
    invoke-static {v0, v1, v4}, LX/20W;->A1Y(LX/iAM;IZ)Z

    move-result v4

    if-eqz v4, :cond_6f

    move/from16 v4, v30

    invoke-static {v13, v4}, LX/AtD;->A1U(IZ)Z

    move-result v30

    move/from16 v4, v29

    invoke-static {v11, v4}, LX/AtD;->A1U(IZ)Z

    move-result v29

    if-eqz v10, :cond_1e

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v26

    sget-object v10, LX/2Fr;->A00:Ljava/lang/Object;

    move-object/from16 v4, v26

    if-ne v4, v10, :cond_1d

    const/16 v4, 0x59e

    invoke-static {v0, v4}, LX/B7f;->A0u(LX/iAM;I)LX/C84;

    move-result-object v26

    :cond_1d
    check-cast v26, Lkotlin/jvm/functions/Function0;

    :cond_1e
    move/from16 v4, v52

    invoke-static {v9, v4}, LX/AtD;->A1U(IZ)Z

    move-result v52

    if-eqz v40, :cond_20

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v24

    sget-object v9, LX/2Fr;->A00:Ljava/lang/Object;

    move-object/from16 v4, v24

    if-ne v4, v9, :cond_1f

    const/16 v4, 0x59f

    invoke-static {v0, v4}, LX/B7f;->A0u(LX/iAM;I)LX/C84;

    move-result-object v24

    :cond_1f
    check-cast v24, Lkotlin/jvm/functions/Function0;

    :cond_20
    if-eqz v39, :cond_22

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v23

    sget-object v9, LX/2Fr;->A00:Ljava/lang/Object;

    move-object/from16 v4, v23

    if-ne v4, v9, :cond_21

    const/16 v4, 0x5a0

    invoke-static {v0, v4}, LX/Ata;->A18(LX/iAM;I)LX/C84;

    move-result-object v23

    :cond_21
    check-cast v23, Lkotlin/jvm/functions/Function0;

    :cond_22
    if-eqz v38, :cond_23

    const/high16 v53, 0x3f800000    # 1.0f

    :cond_23
    move/from16 v4, v27

    invoke-static {v8, v4}, LX/AtD;->A1U(IZ)Z

    move-result v27

    if-eqz v37, :cond_25

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v22

    sget-object v4, LX/2Fr;->A00:Ljava/lang/Object;

    move-object/from16 v8, v22

    if-ne v8, v4, :cond_24

    const/16 v4, 0x5a1

    invoke-static {v0, v4}, LX/B7f;->A0u(LX/iAM;I)LX/C84;

    move-result-object v22

    :cond_24
    check-cast v22, Lkotlin/jvm/functions/Function0;

    :cond_25
    move/from16 v4, v32

    invoke-static {v7, v4}, LX/AtD;->A1U(IZ)Z

    move-result v32

    move/from16 v4, v31

    invoke-static {v5, v4}, LX/AtD;->A1U(IZ)Z

    move-result v31

    if-eqz v36, :cond_27

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v25

    sget-object v4, LX/2Fr;->A00:Ljava/lang/Object;

    move-object/from16 v5, v25

    if-ne v5, v4, :cond_26

    const/16 v4, 0x5a2

    invoke-static {v0, v4}, LX/B7f;->A0u(LX/iAM;I)LX/C84;

    move-result-object v25

    :cond_26
    check-cast v25, Lkotlin/jvm/functions/Function0;

    :cond_27
    if-eqz v35, :cond_28

    const/16 v33, 0x0

    :cond_28
    if-eqz v34, :cond_2a

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v21

    sget-object v4, LX/2Fr;->A00:Ljava/lang/Object;

    move-object/from16 v5, v21

    if-ne v5, v4, :cond_29

    const/16 v4, 0x4c

    new-instance v21, LX/Cwf;

    move-object/from16 v5, v21

    invoke-direct {v5, v4}, LX/Cwf;-><init>(I)V

    invoke-interface {v0, v5}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_29
    check-cast v21, Lkotlin/jvm/functions/Function1;

    :cond_2a
    if-eqz v16, :cond_2c

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v20

    sget-object v4, LX/2Fr;->A00:Ljava/lang/Object;

    move-object/from16 v5, v20

    if-ne v5, v4, :cond_2b

    const/16 v4, 0x5a3

    invoke-static {v0, v4}, LX/Ata;->A18(LX/iAM;I)LX/C84;

    move-result-object v20

    :cond_2b
    check-cast v20, Lkotlin/jvm/functions/Function0;

    :cond_2c
    invoke-static {}, LX/2GI;->A02()Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v5, "com.instagram.quicksnap.camera.ui.QuickSnapCameraBottomControls (QuickSnapCameraScreen.kt:1779)"

    const v4, 0x4d4f4c70    # 2.1736832E8f

    invoke-static {v5, v4}, LX/2GI;->A01(Ljava/lang/String;I)V

    :cond_2d
    sget-object v8, LX/3Yb;->A00:LX/2hw;

    sget-object v54, LX/2KM;->A02:LX/2KN;

    sget-object v46, LX/2KY;->A0E:Landroidx/compose/ui/Alignment;

    const/4 v5, 0x0

    move-object/from16 v4, v46

    invoke-static {v4, v5}, LX/2Kq;->A01(Landroidx/compose/ui/Alignment;Z)LX/lpy;

    move-result-object v13

    invoke-static {v0}, LX/2Ku;->A01(LX/iAM;)J

    move-result-wide v9

    const/16 v37, 0x20

    invoke-static {v9, v10}, LX/AsD;->A0P(J)I

    move-result v11

    move-object v7, v0

    check-cast v7, LX/2EJ;

    invoke-static {v7}, LX/2EJ;->A04(LX/2EJ;)LX/IaH;

    move-result-object v10

    move-object/from16 v4, v54

    invoke-static {v0, v4}, LX/2Kv;->A01(LX/iAM;LX/3Yb;)LX/3Yb;

    move-result-object v9

    sget-object v45, LX/2LB;->A00:Lkotlin/jvm/functions/Function0;

    iget-object v4, v7, LX/2EJ;->A0W:LX/FdL;

    if-nez v4, :cond_3c

    invoke-static {}, LX/2Ku;->A03()V

    invoke-static {}, LX/002;->createAndThrow()LX/002;

    move-result-object v0

    throw v0

    :cond_2e
    and-int v4, p20, v14

    if-nez v4, :cond_1a

    move-object/from16 v4, v20

    invoke-static {v0, v4}, LX/BPg;->A0b(LX/iAM;Ljava/lang/Object;)I

    move-result v4

    or-int/2addr v3, v4

    goto/16 :goto_c

    :cond_2f
    move/from16 v4, v19

    and-int/lit16 v4, v4, 0x6000

    if-nez v4, :cond_19

    move-object/from16 v4, v21

    invoke-static {v0, v4}, LX/BO9;->A0I(LX/iAM;Ljava/lang/Object;)I

    move-result v4

    or-int/2addr v3, v4

    goto/16 :goto_b

    :cond_30
    move/from16 v4, v19

    and-int/lit16 v4, v4, 0xc00

    if-nez v4, :cond_18

    move-object/from16 v4, v33

    invoke-static {v0, v4}, LX/BO9;->A0H(LX/iAM;Ljava/lang/Object;)I

    move-result v4

    or-int/2addr v3, v4

    goto/16 :goto_a

    :cond_31
    move/from16 v4, v19

    and-int/lit16 v4, v4, 0x180

    if-nez v4, :cond_17

    move-object/from16 v4, v25

    invoke-static {v0, v4}, LX/BPg;->A0Y(LX/iAM;Ljava/lang/Object;)I

    move-result v4

    or-int/2addr v3, v4

    goto/16 :goto_9

    :cond_32
    and-int/lit8 v4, p20, 0x30

    if-nez v4, :cond_16

    move/from16 v4, v31

    invoke-static {v0, v4}, LX/BPg;->A0r(LX/iAM;Z)I

    move-result v4

    or-int/2addr v3, v4

    goto/16 :goto_8

    :cond_33
    and-int/lit8 v3, p20, 0x6

    if-nez v3, :cond_34

    move/from16 v3, v32

    invoke-static {v0, v3}, LX/BPg;->A0q(LX/iAM;Z)I

    move-result v3

    or-int v3, p20, v3

    goto/16 :goto_7

    :cond_34
    move/from16 v3, v19

    goto/16 :goto_7

    :cond_35
    and-int v3, p19, v14

    if-nez v3, :cond_d

    move-object/from16 v3, v24

    invoke-static {v0, v3}, LX/BPg;->A0b(LX/iAM;Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    goto/16 :goto_6

    :cond_36
    move/from16 v3, v17

    and-int/lit16 v3, v3, 0x6000

    if-nez v3, :cond_c

    move/from16 v3, v52

    invoke-static {v0, v3}, LX/BPg;->A0u(LX/iAM;Z)I

    move-result v3

    or-int/2addr v2, v3

    goto/16 :goto_5

    :cond_37
    move/from16 v3, v17

    and-int/lit16 v3, v3, 0xc00

    if-nez v3, :cond_b

    move-object/from16 v3, v26

    invoke-static {v0, v3}, LX/BPg;->A0Z(LX/iAM;Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    goto/16 :goto_4

    :cond_38
    move/from16 v3, v17

    and-int/lit16 v3, v3, 0x180

    if-nez v3, :cond_a

    move/from16 v3, v29

    invoke-static {v0, v3}, LX/BPg;->A0s(LX/iAM;Z)I

    move-result v3

    or-int/2addr v2, v3

    goto/16 :goto_3

    :cond_39
    and-int/lit8 v3, p19, 0x30

    if-nez v3, :cond_9

    move/from16 v3, v30

    invoke-static {v0, v3}, LX/BPg;->A0r(LX/iAM;Z)I

    move-result v3

    or-int/2addr v2, v3

    goto/16 :goto_2

    :cond_3a
    move/from16 v2, v17

    goto/16 :goto_1

    :cond_3b
    move/from16 v1, v18

    goto/16 :goto_0

    :cond_3c
    move-object/from16 v4, v45

    invoke-static {v0, v7, v4}, LX/BQD;->A0g(LX/iAM;LX/2EJ;Lkotlin/jvm/functions/Function0;)V

    sget-object v42, LX/2LB;->A04:LX/snk;

    move-object/from16 v4, v42

    invoke-static {v0, v13, v4}, LX/AsD;->A1A(LX/iAM;Ljava/lang/Object;LX/snk;)LX/snk;

    move-result-object v41

    move-object/from16 v4, v41

    invoke-static {v0, v10, v4, v11}, LX/BQD;->A0d(LX/iAM;Ljava/lang/Object;LX/snk;I)LX/snk;

    move-result-object v40

    sget-object v38, LX/2LB;->A02:Lkotlin/jvm/functions/Function1;

    move-object/from16 v4, v38

    invoke-static {v0, v9, v4}, LX/AxE;->A0U(LX/iAM;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)LX/snk;

    move-result-object v39

    sget-object v35, LX/2LG;->A00:LX/2LG;

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v9

    sget-object v4, LX/2Fr;->A00:Ljava/lang/Object;

    invoke-static {v0, v9, v4, v5}, LX/BPF;->A0m(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v0, v4, v5}, LX/BQE;->A0a(LX/iAM;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v36

    invoke-static {v0, v4, v5}, LX/BQE;->A0a(LX/iAM;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v55

    invoke-static {v0}, LX/AtF;->A0i(LX/iAM;)LX/LjO;

    move-result-object v10

    const/high16 v9, 0x41000000    # 8.0f

    invoke-interface {v10, v9}, LX/LjO;->Gfk(F)I

    move-result v14

    sget v9, LX/Zn1;->A00:F

    invoke-interface {v10, v9}, LX/LjO;->Gfk(F)I

    move-result v13

    if-eqz v27, :cond_3d

    iget-boolean v9, v6, LX/DSA;->A0N:Z

    const/16 v62, 0x1

    if-eqz v9, :cond_3e

    :cond_3d
    const/16 v62, 0x0

    :cond_3e
    const/16 v43, 0x0

    invoke-static {}, LX/HEO;->A03()LX/HEj;

    move-result-object v57

    invoke-static {}, LX/HEO;->A0H()LX/HEz;

    move-result-object v58

    sget-object v34, LX/2KY;->A09:Landroidx/compose/ui/Alignment;

    move-object/from16 v10, v35

    move-object/from16 v9, v34

    invoke-virtual {v10, v9, v8}, LX/2LG;->ARL(Landroidx/compose/ui/Alignment;LX/3Yb;)LX/3Yb;

    move-result-object v11

    invoke-static {v0, v13, v14}, LX/BO9;->A1N(LX/iAM;II)Z

    move-result v10

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v9

    if-nez v10, :cond_3f

    if-ne v9, v4, :cond_40

    :cond_3f
    const/4 v10, 0x7

    new-instance v9, LX/EWU;

    invoke-direct {v9, v15, v14, v13, v10}, LX/EWU;-><init>(Ljava/lang/Object;III)V

    invoke-interface {v0, v9}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_40
    invoke-static {v11, v9}, LX/AsI;->A0m(LX/3Yb;Ljava/lang/Object;)LX/3Yb;

    move-result-object v60

    const/16 v56, 0x9

    new-instance v11, LX/fA8;

    move/from16 v10, v56

    move-object/from16 v9, v22

    invoke-direct {v11, v10, v15, v9}, LX/fA8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v9, -0x7429a285

    invoke-static {v0, v11, v9}, LX/2DF;->A00(LX/iAM;Ljava/lang/Object;I)LX/2DG;

    move-result-object v61

    const/16 v47, 0x0

    move-object/from16 v59, v0

    invoke-static/range {v57 .. v62}, LX/HFM;->A09(LX/HEP;LX/HEy;LX/iAM;LX/3Yb;Lkotlin/jvm/functions/Function3;Z)V

    if-eqz v32, :cond_41

    iget-boolean v9, v6, LX/DSA;->A0N:Z

    const/16 v62, 0x1

    if-nez v9, :cond_42

    :cond_41
    const/16 v62, 0x0

    :cond_42
    invoke-static {}, LX/HEO;->A03()LX/HEj;

    move-result-object v57

    invoke-static {}, LX/HEO;->A0H()LX/HEz;

    move-result-object v58

    move-object/from16 v10, v35

    move-object/from16 v9, v34

    invoke-virtual {v10, v9, v8}, LX/2LG;->ARL(Landroidx/compose/ui/Alignment;LX/3Yb;)LX/3Yb;

    move-result-object v15

    invoke-static {v0, v13, v14}, LX/BO9;->A1N(LX/iAM;II)Z

    move-result v9

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_43

    if-ne v10, v4, :cond_44

    :cond_43
    const/16 v11, 0x8

    new-instance v10, LX/EWU;

    move-object/from16 v9, v36

    invoke-direct {v10, v9, v14, v13, v11}, LX/EWU;-><init>(Ljava/lang/Object;III)V

    invoke-interface {v0, v10}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_44
    invoke-static {v15, v10}, LX/AsI;->A0m(LX/3Yb;Ljava/lang/Object;)LX/3Yb;

    move-result-object v60

    const/16 v16, 0xa

    new-instance v11, LX/eyn;

    move-object/from16 v10, v36

    move/from16 v9, v16

    invoke-direct {v11, v10, v9}, LX/eyn;-><init>(Ljava/lang/Object;I)V

    const v9, 0x7be109b2

    const/16 v36, 0x1

    invoke-static {v0, v11, v9}, LX/2DF;->A00(LX/iAM;Ljava/lang/Object;I)LX/2DG;

    move-result-object v61

    invoke-static/range {v57 .. v62}, LX/HFM;->A09(LX/HEP;LX/HEy;LX/iAM;LX/3Yb;Lkotlin/jvm/functions/Function3;Z)V

    if-eqz v31, :cond_45

    iget-boolean v9, v6, LX/DSA;->A0N:Z

    const/16 v62, 0x1

    if-eqz v9, :cond_46

    :cond_45
    const/16 v62, 0x0

    :cond_46
    invoke-static {}, LX/HEO;->A03()LX/HEj;

    move-result-object v57

    invoke-static {}, LX/HEO;->A0H()LX/HEz;

    move-result-object v58

    move-object/from16 v10, v35

    move-object/from16 v9, v34

    invoke-virtual {v10, v9, v8}, LX/2LG;->ARL(Landroidx/compose/ui/Alignment;LX/3Yb;)LX/3Yb;

    move-result-object v15

    invoke-static {v0, v13, v14}, LX/BO9;->A1N(LX/iAM;II)Z

    move-result v9

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v11

    if-nez v9, :cond_47

    if-ne v11, v4, :cond_48

    :cond_47
    new-instance v11, LX/EWU;

    move-object/from16 v10, v55

    move/from16 v9, v56

    invoke-direct {v11, v10, v14, v13, v9}, LX/EWU;-><init>(Ljava/lang/Object;III)V

    invoke-interface {v0, v11}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_48
    invoke-static {v15, v11}, LX/AsI;->A0m(LX/3Yb;Ljava/lang/Object;)LX/3Yb;

    move-result-object v60

    new-instance v13, LX/fA8;

    move-object/from16 v11, v55

    move-object/from16 v10, v25

    move/from16 v9, v16

    invoke-direct {v13, v9, v11, v10}, LX/fA8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v9, 0x71ed8cf3

    invoke-static {v0, v13, v9}, LX/2DF;->A00(LX/iAM;Ljava/lang/Object;I)LX/2DG;

    move-result-object v61

    invoke-static/range {v57 .. v62}, LX/HFM;->A09(LX/HEP;LX/HEy;LX/iAM;LX/3Yb;Lkotlin/jvm/functions/Function3;Z)V

    iget-boolean v9, v6, LX/DSA;->A0V:Z

    if-eqz v9, :cond_6e

    const v9, -0x72e57bd6    # -4.7614E-31f

    invoke-interface {v0, v9}, LX/iAM;->HO8(I)V

    const v9, 0x7f13660e

    invoke-static {v0, v9}, LX/5OW;->A02(LX/iAM;I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v10, v35

    move-object/from16 v9, v34

    invoke-virtual {v10, v9, v8}, LX/2LG;->ARL(Landroidx/compose/ui/Alignment;LX/3Yb;)LX/3Yb;

    move-result-object v10

    invoke-interface {v0, v11}, LX/iAM;->AZc(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v9

    if-nez v13, :cond_49

    if-ne v9, v4, :cond_4a

    :cond_49
    const/16 v9, 0x66

    invoke-static {v0, v11, v9}, LX/B7f;->A1B(LX/iAM;Ljava/lang/String;I)LX/F56;

    move-result-object v9

    :cond_4a
    invoke-static {v10, v9}, LX/AtD;->A0q(LX/3Yb;Ljava/lang/Object;)LX/3Yb;

    move-result-object v9

    move-object/from16 v10, v46

    invoke-static {v10, v5}, LX/2Kq;->A01(Landroidx/compose/ui/Alignment;Z)LX/lpy;

    move-result-object v14

    invoke-static {v0}, LX/AxE;->A03(LX/iAM;)I

    move-result v13

    invoke-static {v7}, LX/2EJ;->A04(LX/2EJ;)LX/IaH;

    move-result-object v10

    invoke-static {v0, v9}, LX/2Kv;->A01(LX/iAM;LX/3Yb;)LX/3Yb;

    move-result-object v11

    move-object/from16 v9, v45

    invoke-static {v0, v7, v9}, LX/BQD;->A0g(LX/iAM;LX/2EJ;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v9, v42

    invoke-static {v0, v14, v9}, LX/2LE;->A01(LX/iAM;Ljava/lang/Object;LX/snk;)V

    move-object/from16 v9, v41

    invoke-static {v0, v10, v9}, LX/2LE;->A01(LX/iAM;Ljava/lang/Object;LX/snk;)V

    move-object/from16 v10, v38

    move-object/from16 v9, v40

    invoke-static {v0, v10, v9, v13}, LX/BO9;->A13(LX/iAM;Lkotlin/jvm/functions/Function1;LX/snk;I)V

    move-object/from16 v9, v39

    invoke-static {v0, v11, v9}, LX/2LE;->A01(LX/iAM;Ljava/lang/Object;LX/snk;)V

    if-eqz v27, :cond_4b

    iget-boolean v9, v6, LX/DSA;->A0N:Z

    const/16 v62, 0x1

    if-eqz v9, :cond_4c

    :cond_4b
    const/16 v62, 0x0

    :cond_4c
    invoke-static {}, LX/HEO;->A03()LX/HEj;

    move-result-object v57

    invoke-static {}, LX/HEO;->A0H()LX/HEz;

    move-result-object v58

    move-object/from16 v9, v35

    invoke-virtual {v9, v8}, LX/2LG;->Eig(LX/3Yb;)LX/3Yb;

    move-result-object v60

    sget-object v61, LX/UBD;->A00:Lkotlin/jvm/functions/Function3;

    invoke-static/range {v57 .. v62}, LX/HFM;->A09(LX/HEP;LX/HEy;LX/iAM;LX/3Yb;Lkotlin/jvm/functions/Function3;Z)V

    invoke-static {v0}, LX/Ata;->A0s(LX/iAM;)Lcom/instagram/common/session/UserSession;

    move-result-object v13

    invoke-static {v0, v6}, LX/2OI;->A00(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v15

    move-object/from16 v9, v51

    invoke-static {v0, v9}, LX/2OI;->A00(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-static {v0}, LX/AsI;->A1K(LX/iAM;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v9}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v10, p14

    invoke-static {v0, v15, v10, v11, v14}, LX/BQE;->A1U(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v10

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v14

    if-nez v10, :cond_4d

    if-ne v14, v4, :cond_4e

    :cond_4d
    const/16 v14, 0x23

    move-object/from16 v10, p14

    invoke-static {v10, v15, v11, v9, v14}, LX/AsD;->A1I(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)LX/Q6w;

    move-result-object v14

    invoke-interface {v0, v14}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_4e
    check-cast v14, Lkotlin/jvm/functions/Function0;

    iget-boolean v10, v6, LX/DSA;->A0N:Z

    if-eqz v10, :cond_6d

    sget-object v55, LX/0gU;->A01:LX/0gU;

    invoke-static {v13}, LX/4oU;->A01(Lcom/instagram/common/session/UserSession;)J

    move-result-wide v15

    long-to-int v10, v15

    move/from16 v57, v10

    const/high16 v16, 0x3f800000    # 1.0f

    new-instance v15, LX/aMg;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    move-object/from16 v10, v55

    iput-object v10, v15, LX/aMg;->A02:LX/0gS;

    move/from16 v10, v57

    iput v10, v15, LX/aMg;->A01:I

    move/from16 v10, v16

    iput v10, v15, LX/aMg;->A00:F

    sput v5, Lredex/$StoreFenceHelper;->DUMMY_VOLATILE:I

    :goto_d
    check-cast v15, LX/lcs;

    new-instance v16, LX/WFz;

    move-object/from16 v10, v16

    invoke-direct {v10, v15}, LX/WFz;-><init>(LX/lcs;)V

    const/high16 v10, 0x42b80000    # 92.0f

    invoke-static {v8, v10}, LX/2KM;->A0d(LX/3Yb;F)LX/3Yb;

    move-result-object v60

    if-eqz p5, :cond_6a

    move-object/from16 v10, v51

    iget-object v10, v10, LX/kyb;->A04:Landroidx/compose/runtime/MutableState;

    if-eqz v10, :cond_6a

    invoke-static {v10}, Landroidx/compose/runtime/MutableState;->A01(Landroidx/compose/runtime/MutableState;)Z

    move-result v15

    move/from16 v10, v36

    if-ne v15, v10, :cond_6a

    :cond_4f
    const v10, 0x65085f74

    invoke-interface {v0, v10}, LX/iAM;->HO8(I)V

    invoke-static {v7, v5}, LX/2EJ;->A0Q(LX/2EJ;Z)V

    const/16 v61, 0x0

    :goto_e
    invoke-static {v0, v13, v9, v11}, LX/BQE;->A1S(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v10

    if-nez v14, :cond_50

    if-ne v10, v4, :cond_51

    :cond_50
    const/16 v10, 0x2c

    invoke-static {v0, v11, v9, v13, v10}, LX/AxE;->A12(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)LX/RVU;

    move-result-object v10

    :cond_51
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v13, v11}, LX/21T;->A1W(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v9

    if-nez v14, :cond_52

    if-ne v9, v4, :cond_53

    :cond_52
    const/16 v9, 0x22

    invoke-static {v0, v13, v11, v9}, LX/AxE;->A0t(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;I)LX/QT1;

    move-result-object v9

    :cond_53
    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/16 p2, 0x38

    const/16 p3, 0x24

    move-object/from16 v57, v47

    move-object/from16 v58, v16

    move-object/from16 v62, v10

    move-object/from16 p0, v9

    move-object/from16 p1, v47

    invoke-static/range {v57 .. v66}, LX/aFr;->A00(LX/YjX;LX/WFz;LX/iAM;LX/3Yb;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V

    move/from16 v9, v36

    invoke-static {v7, v9}, LX/2EJ;->A0Q(LX/2EJ;Z)V

    :goto_f
    invoke-static {v7, v5}, LX/2EJ;->A0Q(LX/2EJ;Z)V

    iget-boolean v14, v6, LX/DSA;->A0M:Z

    if-nez v14, :cond_69

    const v9, -0x72b92a33

    invoke-interface {v0, v9}, LX/iAM;->HO8(I)V

    invoke-static {v0}, LX/AsI;->A1K(LX/iAM;)Ljava/lang/Object;

    move-result-object v13

    iget-boolean v9, v6, LX/DSA;->A0H:Z

    if-eqz v9, :cond_54

    iget-boolean v9, v6, LX/DSA;->A0F:Z

    const v61, 0x7f0823d0

    if-eqz v9, :cond_55

    :cond_54
    const v61, 0x7f0823cf

    :cond_55
    const v9, 0x7f136636

    invoke-static {v0, v9}, LX/5OW;->A02(LX/iAM;I)Ljava/lang/String;

    move-result-object v59

    move-object/from16 v9, p14

    invoke-static {v0, v13, v9}, LX/BO9;->A1V(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_56

    if-ne v10, v4, :cond_57

    :cond_56
    const/16 v11, 0xb

    new-instance v10, LX/F1C;

    move-object/from16 v9, p14

    invoke-direct {v10, v11, v9, v13}, LX/F1C;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v10}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_57
    check-cast v10, Lkotlin/jvm/functions/Function0;

    move-object/from16 v11, v35

    move-object/from16 v9, v34

    invoke-virtual {v11, v9, v8}, LX/2LG;->ARL(Landroidx/compose/ui/Alignment;LX/3Yb;)LX/3Yb;

    move-result-object v13

    const/high16 v11, -0x3d2c0000    # -106.0f

    move/from16 v9, v43

    invoke-static {v13, v11, v9}, LX/2NK;->A01(LX/3Yb;FF)LX/3Yb;

    move-result-object v11

    iget-boolean v9, v6, LX/DSA;->A0E:Z

    invoke-static {v9}, LX/B7f;->A00(I)F

    move-result v9

    invoke-static {v11, v9}, LX/HNk;->A01(LX/3Yb;F)LX/3Yb;

    move-result-object v58

    move-object/from16 v57, v0

    move-object/from16 v60, v10

    move/from16 v62, v5

    move/from16 p0, v5

    invoke-static/range {v57 .. v63}, LX/XcZ;->A08(LX/iAM;LX/3Yb;Ljava/lang/String;Lkotlin/jvm/functions/Function0;III)V

    iget-boolean v13, v6, LX/DSA;->A0I:Z

    if-eqz p23, :cond_58

    const/16 v62, 0x1

    if-eqz p24, :cond_59

    :cond_58
    const/16 v62, 0x0

    :cond_59
    iget-boolean v10, v6, LX/DSA;->A0F:Z

    const v9, 0x7f13669d

    if-eqz v10, :cond_5a

    const v9, 0x7f13661f

    :cond_5a
    invoke-static {v0, v9}, LX/5OW;->A02(LX/iAM;I)Ljava/lang/String;

    move-result-object v57

    invoke-static {v1}, LX/BQD;->A14(I)Z

    move-result v10

    move-object/from16 v9, p14

    invoke-static {v0, v9, v10}, LX/AtD;->A1b(LX/iAM;Ljava/lang/Object;Z)Z

    move-result v10

    const/high16 v11, 0x380000

    move/from16 v9, v44

    invoke-static {v11, v1, v9}, LX/BO9;->A1J(III)Z

    move-result v11

    move-object/from16 v9, p15

    invoke-static {v0, v9, v10, v11}, LX/AtF;->A1Y(LX/iAM;Ljava/lang/Object;ZZ)Z

    move-result v11

    const/high16 v10, 0x1c00000

    move/from16 v9, v28

    invoke-static {v1, v10, v9}, LX/BO9;->A1J(III)Z

    move-result v1

    or-int/2addr v1, v11

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v10

    if-nez v1, :cond_5b

    if-ne v10, v4, :cond_5c

    :cond_5b
    new-instance v10, LX/luJ;

    move-object/from16 p0, v10

    move/from16 p1, v56

    move-object/from16 p2, p15

    move-object/from16 p3, p12

    move-object/from16 p5, p13

    move/from16 p6, v48

    invoke-direct/range {p0 .. p6}, LX/luJ;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    invoke-interface {v0, v10}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_5c
    check-cast v10, Lkotlin/jvm/functions/Function0;

    move-object/from16 v9, v35

    move-object/from16 v1, v34

    invoke-virtual {v9, v1, v8}, LX/2LG;->ARL(Landroidx/compose/ui/Alignment;LX/3Yb;)LX/3Yb;

    move-result-object v11

    const/high16 v9, 0x42d40000    # 106.0f

    move/from16 v1, v43

    invoke-static {v11, v9, v1}, LX/2NK;->A01(LX/3Yb;FF)LX/3Yb;

    move-result-object v56

    move-object/from16 v55, v0

    move-object/from16 v58, v10

    move/from16 v59, v5

    move/from16 v60, v5

    move/from16 v61, v13

    invoke-static/range {v55 .. v62}, LX/XcZ;->A09(LX/iAM;LX/3Yb;Ljava/lang/String;Lkotlin/jvm/functions/Function0;IIZZ)V

    :goto_10
    invoke-static {v7, v5}, LX/2EJ;->A0Q(LX/2EJ;Z)V

    move/from16 v1, v36

    invoke-static {v7, v1}, LX/2EJ;->A0Q(LX/2EJ;Z)V

    invoke-static {v0}, LX/Ata;->A0s(LX/iAM;)Lcom/instagram/common/session/UserSession;

    move-result-object v9

    invoke-interface {v0, v9}, LX/iAM;->AZc(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v10, :cond_5d

    if-ne v1, v4, :cond_60

    :cond_5d
    invoke-static {v9}, LX/Iu8;->A00(Lcom/instagram/common/session/UserSession;)Z

    move-result v1

    if-nez v1, :cond_5e

    invoke-static {v9, v5}, LX/1na;->A02(LX/4Nb;Z)LX/say;

    move-result-object v1

    const-wide v9, 0x81163a00016ee9L

    invoke-static {v1, v9, v10}, LX/011;->A0y(Ljava/lang/Object;J)Z

    move-result v9

    const/4 v1, 0x1

    if-nez v9, :cond_5f

    :cond_5e
    const/4 v1, 0x0

    :cond_5f
    invoke-static {v0, v1}, LX/AtE;->A0n(LX/iAM;Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_60
    invoke-static {v1}, LX/011;->A0x(Ljava/lang/Object;)Z

    move-result p1

    iget-boolean v1, v6, LX/DSA;->A0W:Z

    move/from16 v44, v1

    iget v15, v6, LX/DSA;->A03:I

    iget-boolean v1, v6, LX/DSA;->A0P:Z

    const/high16 v13, 0x42000000    # 32.0f

    const/high16 v11, 0x41800000    # 16.0f

    move/from16 v10, v43

    invoke-static {v8, v10, v13, v10, v11}, LX/2La;->A0k(LX/3Yb;FFFF)LX/3Yb;

    move-result-object v56

    const/16 v11, 0x11

    new-instance v10, LX/fon;

    move-object/from16 v9, p14

    invoke-direct {v10, v9, v11}, LX/fon;-><init>(Ljava/lang/Object;I)V

    const v9, -0x4c617330

    invoke-static {v0, v10, v9}, LX/2DF;->A00(LX/iAM;Ljava/lang/Object;I)LX/2DG;

    move-result-object v57

    new-instance v10, LX/fym;

    move-object/from16 p2, v10

    move-object/from16 p3, v6

    move-object/from16 p4, p10

    move-object/from16 p5, v23

    move-object/from16 p6, v24

    move-object/from16 p7, p11

    move/from16 p8, v36

    move/from16 p9, v52

    invoke-direct/range {p2 .. p9}, LX/fym;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    const v9, -0x6f7be0af

    const/16 v16, 0x1

    invoke-static {v0, v10, v9}, LX/2DF;->A00(LX/iAM;Ljava/lang/Object;I)LX/2DG;

    move-result-object v58

    const v60, 0x1b6000

    move-object/from16 v55, v0

    move/from16 v59, v15

    move/from16 v61, v5

    move/from16 v62, v44

    move/from16 p0, v1

    invoke-static/range {v55 .. v64}, LX/XcZ;->A0B(LX/iAM;LX/3Yb;LX/1nk;LX/1nk;IIIZZZ)V

    iget-boolean v1, v6, LX/DSA;->A0D:Z

    if-eqz v1, :cond_68

    if-nez v14, :cond_68

    if-nez v30, :cond_68

    const v1, 0x7691922d

    invoke-interface {v0, v1}, LX/iAM;->HO8(I)V

    move-object/from16 v1, v46

    invoke-static {v1, v5}, LX/2Kq;->A01(Landroidx/compose/ui/Alignment;Z)LX/lpy;

    move-result-object v13

    invoke-static {v0}, LX/AxE;->A03(LX/iAM;)I

    move-result v10

    invoke-static {v7}, LX/2EJ;->A04(LX/2EJ;)LX/IaH;

    move-result-object v9

    move-object/from16 v1, v54

    invoke-static {v0, v1}, LX/2Kv;->A01(LX/iAM;LX/3Yb;)LX/3Yb;

    move-result-object v11

    move-object/from16 v1, v45

    invoke-static {v0, v7, v1}, LX/BQD;->A0g(LX/iAM;LX/2EJ;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v1, v42

    invoke-static {v0, v13, v1}, LX/2LE;->A01(LX/iAM;Ljava/lang/Object;LX/snk;)V

    move-object/from16 v1, v41

    invoke-static {v0, v9, v1}, LX/2LE;->A01(LX/iAM;Ljava/lang/Object;LX/snk;)V

    move-object/from16 v9, v38

    move-object/from16 v1, v40

    invoke-static {v0, v9, v1, v10}, LX/BO9;->A13(LX/iAM;Lkotlin/jvm/functions/Function1;LX/snk;I)V

    move-object/from16 v1, v39

    invoke-static {v0, v11, v1}, LX/2LE;->A01(LX/iAM;Ljava/lang/Object;LX/snk;)V

    move-object/from16 v1, v35

    invoke-static {v1, v8}, LX/AtD;->A0d(LX/2LG;LX/3Yb;)LX/3Yb;

    move-result-object v10

    move/from16 v9, v43

    invoke-static {v10, v9, v9}, LX/2La;->A0e(LX/3Yb;FF)LX/3Yb;

    move-result-object v1

    move-object/from16 v9, v46

    invoke-static {v9, v5}, LX/2Kq;->A01(Landroidx/compose/ui/Alignment;Z)LX/lpy;

    move-result-object v13

    invoke-static {v0}, LX/AxE;->A03(LX/iAM;)I

    move-result v11

    invoke-static {v7}, LX/2EJ;->A04(LX/2EJ;)LX/IaH;

    move-result-object v9

    invoke-static {v0, v1}, LX/2Kv;->A01(LX/iAM;LX/3Yb;)LX/3Yb;

    move-result-object v10

    move-object/from16 v1, v45

    invoke-static {v0, v7, v1}, LX/BQD;->A0g(LX/iAM;LX/2EJ;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v1, v42

    invoke-static {v0, v13, v1}, LX/2LE;->A01(LX/iAM;Ljava/lang/Object;LX/snk;)V

    move-object/from16 v1, v41

    invoke-static {v0, v9, v1}, LX/2LE;->A01(LX/iAM;Ljava/lang/Object;LX/snk;)V

    move-object/from16 v9, v38

    move-object/from16 v1, v40

    invoke-static {v0, v9, v1, v11}, LX/BO9;->A13(LX/iAM;Lkotlin/jvm/functions/Function1;LX/snk;I)V

    move-object/from16 v1, v39

    invoke-static {v0, v10, v1}, LX/2LE;->A01(LX/iAM;Ljava/lang/Object;LX/snk;)V

    const v1, 0x7f082442

    invoke-static {v0, v1, v5}, LX/4IU;->A02(LX/iAM;II)LX/Ahr;

    move-result-object v14

    const v1, 0x7f136638

    invoke-static {v0, v1}, LX/5OW;->A02(LX/iAM;I)Ljava/lang/String;

    move-result-object v13

    const/high16 v1, 0x1c00000

    and-int v9, v2, v1

    move/from16 v1, v28

    if-eq v9, v1, :cond_61

    const/16 v16, 0x0

    :cond_61
    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v10

    if-nez v16, :cond_62

    if-ne v10, v4, :cond_63

    :cond_62
    new-instance v10, LX/CYI;

    move/from16 v9, v37

    move/from16 v1, v53

    invoke-direct {v10, v1, v9}, LX/CYI;-><init>(FI)V

    invoke-interface {v0, v10}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_63
    invoke-static {v8, v10}, LX/AsI;->A0j(LX/3Yb;Ljava/lang/Object;)LX/3Yb;

    move-result-object v11

    move-object/from16 v1, p14

    invoke-interface {v0, v1}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v10

    if-nez v1, :cond_64

    if-ne v10, v4, :cond_65

    :cond_64
    const/16 v4, 0xd

    new-instance v10, LX/G36;

    move-object/from16 v1, p14

    invoke-direct {v10, v1, v4}, LX/G36;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v10}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_65
    check-cast v10, Lkotlin/jvm/functions/Function0;

    move-object/from16 v9, v47

    move/from16 v1, v36

    invoke-static {v11, v9, v9, v10, v1}, LX/2NB;->A0E(LX/3Yb;LX/2Tt;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)LX/3Yb;

    move-result-object v1

    invoke-static {v0, v1, v14, v13}, LX/AxE;->A1K(LX/iAM;LX/3Yb;LX/Ahr;Ljava/lang/String;)V

    if-eqz v33, :cond_67

    const v4, -0x7c7651bb

    move-object/from16 v1, v35

    invoke-static {v1, v0, v8, v4}, LX/AtF;->A0F(LX/2LG;LX/iAM;LX/3Yb;I)LX/3Yb;

    move-result-object v1

    move-object/from16 v4, v34

    invoke-static {v4, v5}, LX/2Kq;->A01(Landroidx/compose/ui/Alignment;Z)LX/lpy;

    move-result-object v11

    invoke-static {v0}, LX/AxE;->A03(LX/iAM;)I

    move-result v10

    invoke-static {v7}, LX/2EJ;->A04(LX/2EJ;)LX/IaH;

    move-result-object v9

    invoke-static {v0, v1}, LX/2Kv;->A01(LX/iAM;LX/3Yb;)LX/3Yb;

    move-result-object v4

    move-object/from16 v1, v45

    invoke-static {v0, v7, v1}, LX/BQD;->A0g(LX/iAM;LX/2EJ;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v1, v42

    invoke-static {v0, v11, v1}, LX/2LE;->A01(LX/iAM;Ljava/lang/Object;LX/snk;)V

    move-object/from16 v1, v41

    invoke-static {v0, v9, v1}, LX/2LE;->A01(LX/iAM;Ljava/lang/Object;LX/snk;)V

    move-object/from16 v9, v38

    move-object/from16 v1, v40

    invoke-static {v0, v9, v1, v10}, LX/BO9;->A13(LX/iAM;Lkotlin/jvm/functions/Function1;LX/snk;I)V

    move-object/from16 v1, v39

    invoke-static {v0, v4, v1}, LX/2LE;->A01(LX/iAM;Ljava/lang/Object;LX/snk;)V

    shr-int/lit8 v1, v3, 0x9

    invoke-static {v1}, LX/B7f;->A02(I)I

    move-result v4

    move-object/from16 v3, v33

    move-object/from16 v9, v20

    move-object/from16 v1, v21

    invoke-static {v3, v0, v9, v1, v4}, LX/XcZ;->A02(Landroid/graphics/Bitmap;LX/iAM;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    move/from16 v1, v36

    invoke-static {v7, v1}, LX/2EJ;->A0Q(LX/2EJ;Z)V

    :goto_11
    invoke-static {v7, v5}, LX/2EJ;->A0Q(LX/2EJ;Z)V

    if-eqz v29, :cond_66

    const v1, -0x7c708d1d

    invoke-interface {v0, v1}, LX/iAM;->HO8(I)V

    const v1, 0x7f1365fe

    invoke-static {v0, v1}, LX/5OW;->A02(LX/iAM;I)Ljava/lang/String;

    move-result-object v59

    sget-object v57, LX/Fur;->A03:LX/Fur;

    move/from16 v1, v43

    invoke-static {v8, v1}, LX/AtE;->A0d(LX/3Yb;F)LX/3Yb;

    move-result-object v55

    invoke-static {}, LX/CSG;->A00()LX/CS9;

    move-result-object v56

    and-int/lit16 v1, v2, 0x1c00

    const v2, 0x1861b0

    or-int/2addr v1, v2

    const/16 p2, 0xf80

    const-wide/16 p3, 0x0

    move-object/from16 v54, v0

    move-object/from16 v58, v47

    move-object/from16 v60, v26

    move-object/from16 v61, v47

    move/from16 v62, v5

    move/from16 p0, v1

    move/from16 p1, v5

    move-wide/from16 p5, p3

    move/from16 p7, v36

    move/from16 p8, v5

    invoke-static/range {v54 .. v71}, LX/CS7;->A04(LX/iAM;LX/3Yb;LX/CS9;LX/Fur;LX/CSH;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IIIIJJZZ)V

    :goto_12
    move/from16 v1, v36

    invoke-static {v7, v5, v1}, LX/AwG;->A1T(LX/2EJ;ZZ)V

    :goto_13
    invoke-static {v7, v5}, LX/AtE;->A1a(LX/2EJ;Z)Z

    move-result v1

    if-eqz v1, :cond_70

    const v1, 0x3292c6ff

    invoke-static {v1}, LX/2GI;->A00(I)V

    goto :goto_14

    :cond_66
    const v1, 0x7dee0abe

    invoke-interface {v0, v1}, LX/iAM;->HO8(I)V

    goto :goto_12

    :cond_67
    const v1, 0x7dee0abe

    invoke-interface {v0, v1}, LX/iAM;->HO8(I)V

    goto :goto_11

    :cond_68
    const v1, 0x710135a5

    invoke-interface {v0, v1}, LX/iAM;->HO8(I)V

    goto :goto_13

    :cond_69
    const v1, -0x78084ca1

    invoke-interface {v0, v1}, LX/iAM;->HO8(I)V

    goto/16 :goto_10

    :cond_6a
    if-eqz p22, :cond_4f

    const v10, 0x65091b26

    invoke-static {v0, v14, v10}, LX/AtF;->A1W(LX/iAM;Ljava/lang/Object;I)Z

    move-result v15

    invoke-interface {v0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v10

    if-nez v15, :cond_6b

    if-ne v10, v4, :cond_6c

    :cond_6b
    const/16 v10, 0x2fa

    invoke-static {v0, v14, v10}, LX/B7f;->A12(LX/iAM;Lkotlin/jvm/functions/Function0;I)LX/C3W;

    move-result-object v10

    :cond_6c
    invoke-static {v7, v10, v5}, LX/AsD;->A18(LX/2EJ;Ljava/lang/Object;Z)Lkotlin/jvm/functions/Function0;

    move-result-object v61

    goto/16 :goto_e

    :cond_6d
    sget-object v15, LX/XdJ;->A00:LX/XdJ;

    goto/16 :goto_d

    :cond_6e
    const v9, -0x78084ca1

    invoke-interface {v0, v9}, LX/iAM;->HO8(I)V

    goto/16 :goto_f

    :cond_6f
    invoke-interface {v0}, LX/iAM;->HM3()V

    :cond_70
    :goto_14
    invoke-interface {v0}, LX/iAM;->BB4()LX/2GH;

    move-result-object v1

    if-eqz v1, :cond_71

    new-instance v0, LX/eaA;

    move-object/from16 v54, v0

    move-object/from16 v55, v33

    move-object/from16 v56, p15

    move-object/from16 v57, v6

    move-object/from16 v58, p14

    move-object/from16 v59, v51

    move-object/from16 v60, p13

    move-object/from16 v61, p12

    move-object/from16 v62, p11

    move-object/from16 p0, v26

    move-object/from16 p1, v24

    move-object/from16 p2, v23

    move-object/from16 p3, v22

    move-object/from16 p4, v25

    move-object/from16 p5, v20

    move-object/from16 p6, v21

    move-object/from16 p7, p10

    move/from16 p8, v53

    move/from16 p9, v18

    move/from16 p10, v17

    move/from16 p11, v19

    move/from16 p12, v12

    move/from16 p13, v50

    move/from16 p14, v49

    move/from16 p15, v48

    move/from16 p16, v30

    move/from16 p17, v29

    move/from16 p18, v52

    move/from16 p19, v27

    move/from16 p20, v32

    move/from16 p21, v31

    invoke-direct/range {v54 .. v84}, LX/eaA;-><init>(Landroid/graphics/Bitmap;LX/k4m;LX/DSA;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/kyb;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;LX/1nm;FIIIIZZZZZZZZZ)V

    iput-object v0, v1, LX/2GH;->A06:LX/snk;

    :cond_71
    return-void
.end method

.method public static final A02(Landroid/graphics/Bitmap;LX/iAM;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V
    .locals 14

    move-object/from16 v3, p3

    invoke-static {v3}, LX/5B5;->A0R(Ljava/lang/Object;)V

    move-object/from16 v4, p2

    invoke-static {v4}, LX/5B5;->A0I(Ljava/lang/Object;)V

    const v0, -0x4f089ecb

    move-object v1, p1

    invoke-interface {p1, v0}, LX/iAM;->HOA(I)V

    move/from16 v2, p4

    and-int/lit8 v0, p4, 0x6

    move-object v5, p0

    if-nez v0, :cond_14

    invoke-static {p1, p0}, LX/BPg;->A0W(LX/iAM;Ljava/lang/Object;)I

    move-result v6

    or-int v6, v6, p4

    :goto_0
    and-int/lit8 v0, p4, 0x30

    if-nez v0, :cond_0

    invoke-static {p1, v3}, LX/BPg;->A0X(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v6, v0

    :cond_0
    and-int/lit16 v0, v2, 0x180

    if-nez v0, :cond_1

    invoke-static {p1, v4}, LX/BPg;->A0Y(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v6, v0

    :cond_1
    invoke-static {v6}, LX/BQD;->A13(I)Z

    move-result v0

    invoke-static {p1, v6, v0}, LX/20W;->A1Y(LX/iAM;IZ)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v6, "com.instagram.quicksnap.camera.ui.PeekAndHideSentPhotoAnimation (QuickSnapCameraScreen.kt:2730)"

    const v0, 0xf3a16f1

    invoke-static {v6, v0}, LX/2GI;->A01(Ljava/lang/String;I)V

    :cond_2
    invoke-interface {p1, p0}, LX/iAM;->AZc(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v10

    if-nez v0, :cond_3

    sget-object v0, LX/2Fr;->A00:Ljava/lang/Object;

    if-ne v10, v0, :cond_4

    :cond_3
    invoke-static {}, LX/2Sn;->A01()LX/2Sw;

    move-result-object v10

    invoke-interface {p1, v10}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_4
    check-cast v10, LX/2Sw;

    invoke-interface {p1, p0}, LX/iAM;->AZc(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v11

    if-nez v0, :cond_5

    sget-object v0, LX/2Fr;->A00:Ljava/lang/Object;

    if-ne v11, v0, :cond_6

    :cond_5
    invoke-static {}, LX/2Sn;->A00()LX/2Sw;

    move-result-object v11

    invoke-interface {p1, v11}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_6
    check-cast v11, LX/2Sw;

    invoke-interface {p1}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v12

    sget-object v0, LX/2Fr;->A00:Ljava/lang/Object;

    if-ne v12, v0, :cond_7

    const v7, 0x3fcccccd    # 1.6f

    new-instance v6, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v6, v7}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    new-instance v12, LX/XhV;

    invoke-direct {v12, v6}, LX/XhV;-><init>(Landroid/view/animation/OvershootInterpolator;)V

    move-object v6, v1

    check-cast v6, LX/2EJ;

    invoke-virtual {v6, v12}, LX/2EJ;->A0a(Ljava/lang/Object;)V

    :cond_7
    invoke-static {p1, v3}, LX/2OI;->A00(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-static {p1, v4}, LX/2OI;->A00(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    sget-object v8, LX/4z7;->A00:LX/4z7;

    invoke-interface {p1, v13}, LX/iAM;->AZc(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {p1}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v6

    if-nez v7, :cond_8

    if-ne v6, v0, :cond_9

    :cond_8
    const/16 v6, 0x2b

    invoke-static {p1, v13, v6}, LX/B7f;->A11(LX/iAM;Ljava/lang/Object;I)LX/E3W;

    move-result-object v6

    :cond_9
    invoke-static {p1, v6, v8}, LX/AsD;->A1P(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_a

    const-wide/16 v6, 0x92e

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p1, v6}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_a
    invoke-static {v6}, LX/020;->A05(Ljava/lang/Object;)J

    move-result-wide p3

    invoke-interface {p1, v10}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {p1, v13, v11, p0, v6}, LX/BQE;->A1U(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v6

    invoke-interface {p1}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_b

    if-ne v9, v0, :cond_c

    :cond_b
    const/4 p1, 0x0

    const/16 p2, 0x3

    new-instance v9, LX/hyO;

    invoke-direct/range {v9 .. v18}, LX/hyO;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;LX/HAU;IJ)V

    invoke-interface {v1, v9}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_c
    invoke-static {v1, v9, v5}, LX/AsD;->A1Q(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, LX/iAM;->AZc(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v1}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_d

    if-ne v8, v0, :cond_e

    :cond_d
    invoke-static {v5, v1}, LX/B55;->A0T(Landroid/graphics/Bitmap;LX/iAM;)LX/3Cs;

    move-result-object v8

    :cond_e
    check-cast v8, LX/lsj;

    sget-object v7, LX/3Yb;->A00:LX/2hw;

    const/high16 v6, 0x42100000    # 36.0f

    invoke-static {v7, v6}, LX/2KM;->A0b(LX/3Yb;F)LX/3Yb;

    move-result-object v9

    invoke-static {v1, v10, v11}, LX/BO9;->A1V(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v1}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v6

    if-nez v7, :cond_f

    if-ne v6, v0, :cond_10

    :cond_f
    const/16 v0, 0x32

    new-instance v6, LX/E9R;

    invoke-direct {v6, v10, v11, v0}, LX/E9R;-><init>(LX/2Sw;LX/2Sw;I)V

    invoke-interface {v1, v6}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_10
    invoke-static {v9, v6}, LX/AsI;->A0j(LX/3Yb;Ljava/lang/Object;)LX/3Yb;

    move-result-object v6

    sget-object v0, LX/air;->A00:LX/air;

    invoke-static {v6, v0}, LX/2MZ;->A01(LX/3Yb;LX/lka;)LX/3Yb;

    move-result-object v6

    sget-object v0, LX/2ME;->A00:LX/lsl;

    invoke-static {v1, v6, v8, v0}, LX/2NE;->A0A(LX/iAM;LX/3Yb;LX/lsj;LX/lsl;)V

    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, -0x5fe6e47f

    invoke-static {v0}, LX/2GI;->A00(I)V

    :cond_11
    :goto_1
    invoke-interface {v1}, LX/iAM;->BB4()LX/2GH;

    move-result-object v1

    if-eqz v1, :cond_12

    const/16 v0, 0x2f

    invoke-static {v5, v3, v4, v2, v0}, LX/emp;->A01(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)LX/emp;

    move-result-object v0

    iput-object v0, v1, LX/2GH;->A06:LX/snk;

    :cond_12
    return-void

    :cond_13
    invoke-interface {p1}, LX/iAM;->HM3()V

    goto :goto_1

    :cond_14
    move v6, v2

    goto/16 :goto_0
.end method

.method public static final A03(LX/iAM;LX/3Yb;I)V
    .locals 9

    const v0, -0x2d0074c6

    move-object v4, p0

    invoke-interface {p0, v0}, LX/iAM;->HOA(I)V

    and-int/lit8 v0, p2, 0x6

    const/4 v2, 0x2

    if-nez v0, :cond_4

    invoke-static {p0, p1}, LX/BPg;->A0g(LX/iAM;Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v1, p2

    :goto_0
    and-int/lit8 v0, v1, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v2}, LX/21R;->A1W(II)Z

    move-result v0

    invoke-static {p0, v1, v0}, LX/20W;->A1Y(LX/iAM;IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "com.instagram.quicksnap.camera.ui.PracticeCaptureCompleted (QuickSnapCameraScreen.kt:2656)"

    const v0, 0x4c9855cc    # 7.986749E7f

    invoke-static {v1, v0}, LX/2GI;->A01(Ljava/lang/String;I)V

    :cond_0
    const v0, 0x7f135148

    invoke-static {p0, v0}, LX/5OW;->A02(LX/iAM;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    sget-object v0, LX/air;->A00:LX/air;

    invoke-static {p1, v0}, LX/2MZ;->A01(LX/3Yb;LX/lka;)LX/3Yb;

    move-result-object v2

    invoke-static {p0}, LX/AsI;->A0I(LX/iAM;)J

    move-result-wide v0

    const/4 v6, 0x0

    invoke-static {v2, v0, v1}, LX/AsI;->A0b(LX/3Yb;J)LX/3Yb;

    move-result-object v0

    invoke-static {v0, v3}, LX/AtD;->A0u(LX/3Yb;Z)LX/3Yb;

    move-result-object v5

    const p0, 0xff7c

    invoke-static/range {v4 .. v9}, LX/2Jt;->A0j(LX/iAM;LX/3Yb;LX/2Is;Ljava/lang/String;II)V

    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0x454e2b8d

    invoke-static {v0}, LX/2GI;->A00(I)V

    :cond_1
    :goto_1
    invoke-interface {v4}, LX/iAM;->BB4()LX/2GH;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v0, 0x5a

    invoke-static {v1, p1, p2, v0}, LX/D8w;->A03(LX/2GH;Ljava/lang/Object;II)V

    :cond_2
    return-void

    :cond_3
    invoke-interface {p0}, LX/iAM;->HM3()V

    goto :goto_1

    :cond_4
    move v1, p2

    goto :goto_0
.end method

.method public static final A04(LX/iAM;LX/3Yb;II)V
    .locals 6

    const v0, -0x7032323c

    invoke-interface {p0, v0}, LX/iAM;->HOA(I)V

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_a

    or-int/lit8 v0, p2, 0x6

    :goto_0
    invoke-static {v0}, LX/BO9;->A19(I)Z

    move-result v1

    invoke-static {p0, v0, v1}, LX/20W;->A1Y(LX/iAM;IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v2, :cond_0

    sget-object p1, LX/3Yb;->A00:LX/2hw;

    :cond_0
    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "com.instagram.quicksnap.camera.ui.QuickSnapShutterBlinkOverlay (QuickSnapCameraScreen.kt:2672)"

    const v0, -0x11b30c81

    invoke-static {v1, v0}, LX/2GI;->A01(Ljava/lang/String;I)V

    :cond_1
    invoke-interface {p0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v5

    sget-object v4, LX/2Fr;->A00:Ljava/lang/Object;

    const/4 v3, 0x0

    if-ne v5, v4, :cond_2

    const v0, 0x3f19999a    # 0.6f

    invoke-static {p0, v0}, LX/Ata;->A0C(LX/iAM;F)LX/2Sw;

    move-result-object v5

    :cond_2
    sget-object v2, LX/4z7;->A00:LX/4z7;

    invoke-interface {p0, v5}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_3

    if-ne v0, v4, :cond_4

    :cond_3
    const/16 v1, 0x26

    new-instance v0, LX/EUG;

    invoke-direct {v0, v5, v3, v1}, LX/EUG;-><init>(Ljava/lang/Object;LX/HAU;I)V

    invoke-interface {p0, v0}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_4
    invoke-static {p0, v0, v2}, LX/AsD;->A1Q(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LX/air;->A00:LX/air;

    invoke-static {p1, v0}, LX/2MZ;->A01(LX/3Yb;LX/lka;)LX/3Yb;

    move-result-object v2

    invoke-interface {p0, v5}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_5

    if-ne v0, v4, :cond_6

    :cond_5
    const/16 v0, 0x6d

    invoke-static {p0, v5, v0}, LX/B7f;->A0x(LX/iAM;Ljava/lang/Object;I)LX/C1W;

    move-result-object v0

    :cond_6
    invoke-static {v2, v0}, LX/AsI;->A0j(LX/3Yb;Ljava/lang/Object;)LX/3Yb;

    move-result-object v2

    sget-wide v0, LX/1xR;->A01:J

    invoke-static {p0, v2, v0, v1}, LX/BQD;->A1J(LX/iAM;LX/3Yb;J)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x3488d406

    invoke-static {v0}, LX/2GI;->A00(I)V

    :cond_7
    :goto_1
    invoke-interface {p0}, LX/iAM;->BB4()LX/2GH;

    move-result-object v1

    if-eqz v1, :cond_8

    const/16 v0, 0x92

    invoke-static {v1, p1, p2, p3, v0}, LX/eul;->A02(LX/2GH;LX/3Yb;III)V

    :cond_8
    return-void

    :cond_9
    invoke-interface {p0}, LX/iAM;->HM3()V

    goto :goto_1

    :cond_a
    and-int/lit8 v0, p2, 0x6

    if-nez v0, :cond_b

    invoke-static {p0, p1}, LX/BPg;->A0g(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v0, p2

    goto/16 :goto_0

    :cond_b
    move v0, p2

    goto/16 :goto_0
.end method

.method public static final A05(LX/iAM;LX/3Yb;LX/DSA;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/0kU;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;LX/snk;FFIIIIZZZ)V
    .locals 58

    move-object/from16 v31, p1

    const v0, -0x27e1dab9

    move-object/from16 v6, p0

    invoke-interface {v6, v0}, LX/iAM;->HOA(I)V

    move/from16 v3, p11

    and-int/lit8 v0, p11, 0x6

    move/from16 v42, p10

    if-nez v0, :cond_19

    move/from16 v0, v42

    invoke-static {v6, v0}, LX/BPg;->A0D(LX/iAM;I)I

    move-result v8

    or-int v8, v8, p11

    :goto_0
    and-int/lit8 v0, p11, 0x30

    move/from16 p0, p8

    if-nez v0, :cond_0

    move/from16 v0, p0

    invoke-static {v6, v0}, LX/BPg;->A04(LX/iAM;F)I

    move-result v0

    or-int/2addr v8, v0

    :cond_0
    and-int/lit16 v0, v3, 0x180

    move/from16 v57, p9

    if-nez v0, :cond_1

    move/from16 v0, v57

    invoke-static {v6, v0}, LX/BPg;->A05(LX/iAM;F)I

    move-result v0

    or-int/2addr v8, v0

    :cond_1
    and-int/lit16 v0, v3, 0xc00

    move-object/from16 v4, p3

    if-nez v0, :cond_2

    invoke-static {v6, v4}, LX/BPg;->A0Z(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v8, v0

    :cond_2
    and-int/lit16 v0, v3, 0x6000

    move-object/from16 v5, p2

    if-nez v0, :cond_3

    invoke-static {v6, v5}, LX/BPg;->A0a(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v8, v0

    :cond_3
    const/high16 v0, 0x30000

    and-int v0, v0, p11

    if-nez v0, :cond_4

    move-object/from16 v0, p4

    invoke-static {v6, v0}, LX/BPg;->A0b(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v8, v0

    :cond_4
    const/high16 v0, 0x180000

    and-int v0, p11, v0

    move/from16 v55, p14

    if-nez v0, :cond_5

    move/from16 v0, v55

    invoke-static {v6, v0}, LX/BPg;->A0w(LX/iAM;Z)I

    move-result v0

    or-int/2addr v8, v0

    :cond_5
    const/high16 v0, 0xc00000

    and-int v0, p11, v0

    move-object/from16 p3, p5

    if-nez v0, :cond_6

    move-object/from16 v0, p3

    invoke-static {v6, v0}, LX/BPg;->A0d(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v8, v0

    :cond_6
    const/high16 v0, 0x6000000

    and-int v0, p11, v0

    move/from16 v52, p15

    if-nez v0, :cond_7

    move/from16 v0, v52

    invoke-static {v6, v0}, LX/BPg;->A0y(LX/iAM;Z)I

    move-result v0

    or-int/2addr v8, v0

    :cond_7
    const/high16 v0, 0x30000000

    and-int v0, p11, v0

    move/from16 v54, p16

    if-nez v0, :cond_8

    move/from16 v0, v54

    invoke-static {v6, v0}, LX/BPg;->A0z(LX/iAM;Z)I

    move-result v0

    or-int/2addr v8, v0

    :cond_8
    move/from16 v30, p12

    and-int/lit8 v0, p12, 0x6

    move-object/from16 p1, p7

    if-nez v0, :cond_18

    move-object/from16 v0, p1

    invoke-static {v6, v0}, LX/BPg;->A0W(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int v11, p12, v0

    :goto_1
    and-int/lit8 v0, p12, 0x30

    move-object/from16 p2, p6

    if-nez v0, :cond_9

    move-object/from16 v0, p2

    invoke-static {v6, v0}, LX/BPg;->A0X(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v11, v0

    :cond_9
    move/from16 v56, p13

    move/from16 v0, v56

    and-int/lit16 v7, v0, 0x1000

    if-eqz v7, :cond_17

    or-int/lit16 v11, v11, 0x180

    :cond_a
    :goto_2
    const v0, 0x12492493

    and-int v1, v8, v0

    const v0, 0x12492492

    const/16 v29, 0x1

    if-ne v1, v0, :cond_b

    and-int/lit16 v2, v11, 0x93

    const/16 v1, 0x92

    const/4 v0, 0x0

    if-eq v2, v1, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    invoke-static {v6, v8, v0}, LX/20W;->A1Y(LX/iAM;IZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz v7, :cond_d

    sget-object v31, LX/3Yb;->A00:LX/2hw;

    :cond_d
    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v1, "com.instagram.quicksnap.camera.ui.QuickSnapCameraWithOverlay (QuickSnapCameraScreen.kt:1581)"

    const v0, -0x54fa055

    invoke-static {v1, v0}, LX/2GI;->A01(Ljava/lang/String;I)V

    :cond_e
    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    sget-object v7, LX/2Fr;->A00:Ljava/lang/Object;

    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-static {v6, v1, v7, v0}, LX/BQE;->A0c(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroidx/compose/runtime/MutableState;

    invoke-static {v6, v7, v0}, LX/BQF;->A0o(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroidx/compose/runtime/MutableState;

    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v25

    const/16 v16, 0x0

    move-object/from16 v0, v25

    if-ne v0, v7, :cond_f

    move/from16 v0, v16

    invoke-static {v6, v0}, LX/B55;->A0N(LX/iAM;F)Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-result-object v25

    :cond_f
    invoke-static {v6, v7}, LX/BQE;->A0W(LX/iAM;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-static {v6, v7, v0}, LX/BQF;->A0o(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v5, LX/DSA;->A09:Ljava/lang/String;

    move-object/from16 v53, v1

    const/4 v10, 0x0

    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget-boolean v1, v5, LX/DSA;->A0N:Z

    move/from16 v18, v1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v1, v53

    filled-new-array {v1, v9, v13}, [Ljava/lang/Object;

    move-result-object v12

    and-int/lit8 v24, v8, 0xe

    const/4 v9, 0x4

    move/from16 v1, v24

    if-ne v1, v9, :cond_10

    const/4 v10, 0x1

    :cond_10
    and-int/lit8 v23, v8, 0x70

    const/16 v22, 0x20

    move/from16 v9, v23

    move/from16 v1, v22

    invoke-static {v9, v1}, LX/011;->A0t(II)Z

    move-result v1

    invoke-static {v6, v5, v10, v1}, LX/AtF;->A1Y(LX/iAM;Ljava/lang/Object;ZZ)Z

    move-result v1

    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v14

    if-nez v1, :cond_11

    if-ne v14, v7, :cond_12

    :cond_11
    new-instance v14, LX/akP;

    move-object/from16 v10, v27

    move/from16 v9, p0

    move/from16 v1, v42

    invoke-direct {v14, v10, v5, v9, v1}, LX/akP;-><init>(Landroidx/compose/runtime/MutableState;LX/DSA;FI)V

    invoke-interface {v6, v14}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_12
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    move-object/from16 v1, v31

    invoke-static {v1, v14, v12}, LX/2ON;->A02(LX/3Yb;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;[Ljava/lang/Object;)LX/3Yb;

    move-result-object v12

    iget-object v9, v5, LX/DSA;->A08:Ljava/lang/Integer;

    sget-object v1, LX/008;->A01:Ljava/lang/Integer;

    invoke-static {v9, v1}, LX/011;->A0z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v50

    move/from16 v1, v42

    int-to-float v1, v1

    move/from16 v17, v1

    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v7, :cond_13

    const/16 v1, 0x117

    invoke-static {v6, v0, v1}, LX/AtF;->A17(LX/iAM;Ljava/lang/Object;I)LX/C8t;

    move-result-object v10

    :cond_13
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_14

    const/16 v9, 0x6c

    move-object/from16 v1, v25

    invoke-static {v6, v1, v9}, LX/AtF;->A15(LX/iAM;Ljava/lang/Object;I)LX/C1W;

    move-result-object v9

    :cond_14
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v2, v4}, LX/BO9;->A1V(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v14, :cond_15

    if-ne v1, v7, :cond_16

    :cond_15
    const/16 v33, 0xe

    new-instance v1, LX/la3;

    move-object/from16 v32, v1

    move-object/from16 v34, v25

    move-object/from16 v35, v0

    move-object/from16 v36, v2

    move-object/from16 v37, v4

    invoke-direct/range {v32 .. v37}, LX/la3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v1}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_16
    check-cast v1, LX/snk;

    const/4 v2, 0x0

    invoke-static {v12, v2}, LX/5B5;->A0U(Ljava/lang/Object;I)V

    invoke-static {v10, v9, v1}, LX/254;->A1O(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v21, 0x4

    invoke-static/range {v50 .. v50}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v15, v13, v14, v0}, [Ljava/lang/Object;

    move-result-object v13

    new-instance v0, LX/aks;

    move-object/from16 v47, v9

    move-object/from16 v48, v1

    move/from16 v49, v17

    move/from16 v51, v18

    move-object/from16 v45, v0

    move-object/from16 v46, v10

    invoke-direct/range {v45 .. v52}, LX/aks;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;LX/snk;FZZZ)V

    invoke-static {v12, v0, v13}, LX/2ON;->A02(LX/3Yb;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;[Ljava/lang/Object;)LX/3Yb;

    move-result-object v0

    invoke-static {v2}, LX/AtD;->A0y(Z)LX/lpy;

    move-result-object v13

    invoke-static {v6}, LX/AxE;->A03(LX/iAM;)I

    move-result v12

    move-object/from16 v20, v6

    check-cast v20, LX/2EJ;

    invoke-static/range {v20 .. v20}, LX/2EJ;->A04(LX/2EJ;)LX/IaH;

    move-result-object v10

    invoke-static {v6, v0}, LX/2Kv;->A01(LX/iAM;LX/3Yb;)LX/3Yb;

    move-result-object v9

    sget-object v1, LX/2LB;->A00:Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, v20

    iget-object v0, v0, LX/2EJ;->A0W:LX/FdL;

    if-nez v0, :cond_1b

    invoke-static {}, LX/2Ku;->A03()V

    invoke-static {}, LX/002;->createAndThrow()LX/002;

    move-result-object v0

    throw v0

    :cond_17
    move/from16 v0, v30

    and-int/lit16 v0, v0, 0x180

    if-nez v0, :cond_a

    move-object/from16 v0, v31

    invoke-static {v6, v0}, LX/B7f;->A06(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v11, v0

    goto/16 :goto_2

    :cond_18
    move/from16 v11, v30

    goto/16 :goto_1

    :cond_19
    move v8, v3

    goto/16 :goto_0

    :cond_1a
    invoke-interface {v6}, LX/iAM;->HM3()V

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, v20

    invoke-static {v6, v0, v1}, LX/BQD;->A0g(LX/iAM;LX/2EJ;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v6, v13, v10, v9, v12}, LX/BQF;->A1N(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v10, LX/2LG;->A00:LX/2LG;

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, LX/snk;

    iget-boolean v14, v5, LX/DSA;->A0G:Z

    iget-boolean v0, v5, LX/DSA;->A0I:Z

    sget-object v9, LX/3Yb;->A00:LX/2hw;

    invoke-virtual {v10, v9}, LX/2LG;->Eig(LX/3Yb;)LX/3Yb;

    move-result-object v13

    invoke-static {v8}, LX/BQD;->A19(I)Z

    move-result v12

    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v12, :cond_1c

    if-ne v1, v7, :cond_1d

    :cond_1c
    const/16 v12, 0x21

    move/from16 v1, v57

    invoke-static {v6, v1, v12}, LX/AxE;->A0W(LX/iAM;FI)LX/CYI;

    move-result-object v1

    :cond_1d
    invoke-static {v13, v1}, LX/AsI;->A0j(LX/3Yb;Ljava/lang/Object;)LX/3Yb;

    move-result-object v33

    shr-int/lit8 v1, v8, 0x9

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v19, v8, 0xc

    and-int/lit8 v12, v19, 0x70

    or-int/2addr v1, v12

    shl-int/lit8 v11, v11, 0x6

    invoke-static {v11, v1}, LX/AwG;->A04(II)I

    move-result v11

    shl-int/lit8 v1, v8, 0xc

    const v12, 0xe000

    and-int v18, v1, v12

    or-int v11, v11, v18

    const/high16 v17, 0x70000

    and-int v12, v1, v17

    or-int/2addr v11, v12

    invoke-static {v1, v11}, LX/AtD;->A09(II)I

    move-result v1

    invoke-static {v8, v1}, LX/AtE;->A02(II)I

    move-result v43

    shr-int/lit8 v1, v8, 0x12

    and-int/lit8 v44, v1, 0xe

    shr-int/lit8 v1, v8, 0xf

    and-int/lit16 v1, v1, 0x380

    or-int v44, v44, v1

    move-object/from16 v32, v6

    move-object/from16 v34, v4

    move-object/from16 v35, p4

    move-object/from16 v36, p2

    move-object/from16 v37, p3

    move-object/from16 v38, p1

    move/from16 v40, p0

    move/from16 v41, v57

    move/from16 v45, v2

    move/from16 v46, v52

    move/from16 v47, v14

    move/from16 v48, v55

    move/from16 v49, v0

    invoke-static/range {v32 .. v49}, LX/XcZ;->A06(LX/iAM;LX/3Yb;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/0kU;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;LX/snk;LX/snk;FFIIIIZZZZ)V

    iget-object v1, v5, LX/DSA;->A05:LX/b4V;

    sget-object v0, LX/b4V;->A06:LX/b4V;

    if-ne v1, v0, :cond_35

    const v0, -0x60c1375f    # -4.040002E-20f

    invoke-interface {v6, v0}, LX/iAM;->HO8(I)V

    sget-object v12, LX/2HD;->A03:LX/Ahi;

    invoke-static {v6, v12}, LX/AsI;->A16(LX/iAM;LX/AhQ;)LX/LjO;

    move-result-object v1

    move/from16 v0, v42

    invoke-interface {v1, v0}, LX/LjO;->HRF(I)F

    move-result v11

    invoke-static {v6, v12}, LX/AsI;->A16(LX/iAM;LX/AhQ;)LX/LjO;

    move-result-object v1

    move/from16 v0, p0

    invoke-interface {v1, v0}, LX/LjO;->HRE(F)F

    move-result v12

    invoke-static {v9, v11}, LX/2KM;->A0d(LX/3Yb;F)LX/3Yb;

    move-result-object v11

    invoke-interface {v6, v12}, LX/iAM;->AZZ(F)Z

    move-result v1

    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_1e

    if-ne v0, v7, :cond_1f

    :cond_1e
    const/16 v0, 0x22

    invoke-static {v6, v12, v0}, LX/AxE;->A0W(LX/iAM;FI)LX/CYI;

    move-result-object v0

    :cond_1f
    invoke-static {v11, v0}, LX/AsI;->A0m(LX/3Yb;Ljava/lang/Object;)LX/3Yb;

    move-result-object v0

    invoke-static {v6, v0, v2, v2}, LX/Vpj;->A00(LX/iAM;LX/3Yb;II)V

    :goto_3
    move-object/from16 v0, v20

    invoke-static {v0, v2}, LX/2EJ;->A0Q(LX/2EJ;Z)V

    sget-wide v12, LX/1xR;->A01:J

    move/from16 v1, v21

    move/from16 v0, v24

    invoke-static {v0, v1}, LX/011;->A0t(II)Z

    move-result v11

    move/from16 v1, v23

    move/from16 v0, v22

    invoke-static {v1, v0}, LX/011;->A0t(II)Z

    move-result v0

    or-int/2addr v0, v11

    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v11

    if-nez v0, :cond_20

    if-ne v11, v7, :cond_21

    :cond_20
    sget-object v1, LX/air;->A00:LX/air;

    move/from16 v0, v42

    invoke-virtual {v1, v0}, LX/air;->A00(I)LX/BjZ;

    move-result-object v11

    move/from16 v1, v16

    move/from16 v0, p0

    invoke-static {v0, v1}, LX/BQF;->A0I(FF)J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, LX/BjZ;->HSl(J)V

    invoke-interface {v6, v11}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {v10, v9}, LX/2LG;->Eig(LX/3Yb;)LX/3Yb;

    move-result-object v14

    invoke-interface {v6, v11}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_22

    if-ne v0, v7, :cond_23

    :cond_22
    const/16 v1, 0x12

    new-instance v0, LX/COe;

    invoke-direct {v0, v12, v13, v11, v1}, LX/COe;-><init>(JLjava/lang/Object;I)V

    invoke-interface {v6, v0}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_23
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v14, v0, v2}, LX/Ah1;->A01(LX/iAM;LX/3Yb;Lkotlin/jvm/functions/Function1;I)V

    if-eqz v50, :cond_34

    const v0, -0x60a58194

    invoke-interface {v6, v0}, LX/iAM;->HO8(I)V

    const/16 v16, 0x0

    invoke-static {v6}, LX/2Jw;->A00(LX/iAM;)LX/2Im;

    move-result-object v0

    iget-wide v14, v0, LX/2Im;->A19:J

    invoke-static {v6}, LX/AtD;->A0U(LX/iAM;)J

    move-result-wide v12

    invoke-virtual {v10, v9}, LX/2LG;->Eig(LX/3Yb;)LX/3Yb;

    move-result-object v9

    invoke-interface {v6, v11}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v10

    move/from16 v1, v21

    move/from16 v0, v24

    if-ne v0, v1, :cond_24

    const/16 v16, 0x1

    :cond_24
    or-int v10, v10, v16

    move/from16 v1, v23

    move/from16 v0, v22

    if-eq v1, v0, :cond_25

    const/16 v29, 0x0

    :cond_25
    move/from16 v0, v29

    invoke-static {v6, v12, v13, v10, v0}, LX/Ata;->A1W(LX/iAM;JZZ)Z

    move-result v10

    invoke-static {v6, v14, v15, v10}, LX/AsI;->A1a(LX/iAM;JZ)Z

    move-result v1

    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_26

    if-ne v0, v7, :cond_27

    :cond_26
    const/16 v37, 0x1

    new-instance v0, LX/jyo;

    move-object/from16 v32, v0

    move-object/from16 v33, v25

    move-object/from16 v34, v11

    move/from16 v35, p0

    move/from16 v36, v42

    move-wide/from16 v38, v12

    move-wide/from16 v40, v14

    invoke-direct/range {v32 .. v41}, LX/jyo;-><init>(Ljava/lang/Object;Ljava/lang/Object;FIIJJ)V

    invoke-interface {v6, v0}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_27
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v9, v0, v2}, LX/Ah1;->A01(LX/iAM;LX/3Yb;Lkotlin/jvm/functions/Function1;I)V

    :goto_4
    move-object/from16 v0, v20

    invoke-static {v0, v2}, LX/2EJ;->A0Q(LX/2EJ;Z)V

    invoke-interface {v6, v4}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v12

    if-nez v0, :cond_28

    if-ne v12, v7, :cond_29

    :cond_28
    const/16 v0, 0x3e

    invoke-static {v6, v4, v0}, LX/B7f;->A1D(LX/iAM;Ljava/lang/Object;I)LX/CVe;

    move-result-object v12

    :cond_29
    check-cast v12, LX/Lmt;

    invoke-interface {v6, v4}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v11

    if-nez v0, :cond_2a

    if-ne v11, v7, :cond_2b

    :cond_2a
    const/16 v0, 0xb

    invoke-static {v6, v4, v0}, LX/AxE;->A1C(LX/iAM;Ljava/lang/Object;I)LX/E2w;

    move-result-object v11

    :cond_2b
    check-cast v11, LX/Lmt;

    invoke-interface {v6, v4}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v10

    if-nez v0, :cond_2c

    if-ne v10, v7, :cond_2d

    :cond_2c
    const/16 v0, 0xc

    invoke-static {v6, v4, v0}, LX/AxE;->A1C(LX/iAM;Ljava/lang/Object;I)LX/E2w;

    move-result-object v10

    :cond_2d
    check-cast v10, LX/Lmt;

    iget-boolean v0, v5, LX/DSA;->A0J:Z

    move/from16 v16, v0

    invoke-interface {v6, v4}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v13

    if-nez v0, :cond_2e

    if-ne v13, v7, :cond_2f

    :cond_2e
    const/16 v0, 0x3f

    invoke-static {v6, v4, v0}, LX/B7f;->A1D(LX/iAM;Ljava/lang/Object;I)LX/CVe;

    move-result-object v13

    :cond_2f
    check-cast v13, LX/Lmt;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_30

    const/16 v1, 0xda

    move-object/from16 v0, v27

    invoke-static {v6, v0, v1}, LX/Ata;->A1E(LX/iAM;Ljava/lang/Object;I)LX/DRG;

    move-result-object v9

    :cond_30
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v6}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_31

    const/16 v1, 0xd9

    move-object/from16 v0, v26

    invoke-static {v6, v0, v1}, LX/Ata;->A1E(LX/iAM;Ljava/lang/Object;I)LX/DRG;

    move-result-object v1

    :cond_31
    check-cast v1, Lkotlin/jvm/functions/Function1;

    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/high16 v0, 0x36000000

    move/from16 v15, v19

    move/from16 v14, v18

    move/from16 v7, v17

    invoke-static {v14, v0, v15, v7}, LX/AsI;->A06(IIII)I

    move-result v7

    shl-int/lit8 v0, v8, 0xf

    invoke-static {v0, v7}, LX/AtD;->A09(II)I

    move-result v43

    const/16 v45, 0x80

    move-object/from16 v32, v6

    move-object/from16 v33, v28

    move-object/from16 v34, v53

    move-object/from16 v35, v11

    move-object/from16 v36, v10

    move-object/from16 v37, v12

    move-object/from16 v38, v9

    move-object/from16 v39, v1

    move-object/from16 v40, v13

    move/from16 v41, p0

    move/from16 v44, v2

    move/from16 v46, v54

    move/from16 v47, v16

    move/from16 v48, v16

    invoke-static/range {v32 .. v48}, LX/WzO;->A03(LX/iAM;LX/3Yb;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FIIIIZZZ)V

    invoke-static/range {v20 .. v20}, LX/BO9;->A1Z(LX/2EJ;)Z

    move-result v0

    if-eqz v0, :cond_32

    const v0, -0x48d9e4a9

    invoke-static {v0}, LX/2GI;->A00(I)V

    :cond_32
    :goto_5
    invoke-interface {v6}, LX/iAM;->BB4()LX/2GH;

    move-result-object v1

    if-eqz v1, :cond_33

    new-instance v0, LX/das;

    move-object v6, v0

    move-object/from16 v7, v31

    move-object v8, v5

    move-object v9, v4

    move-object/from16 v10, p4

    move-object/from16 v11, p3

    move-object/from16 v12, p2

    move-object/from16 v13, p1

    move/from16 v14, p0

    move/from16 v15, v57

    move/from16 v16, v42

    move/from16 v17, v3

    move/from16 v18, v30

    move/from16 v19, v56

    move/from16 v20, v55

    move/from16 v21, v52

    move/from16 v22, v54

    invoke-direct/range {v6 .. v22}, LX/das;-><init>(LX/3Yb;LX/DSA;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/0kU;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;LX/snk;FFIIIIZZZ)V

    iput-object v0, v1, LX/2GH;->A06:LX/snk;

    :cond_33
    return-void

    :cond_34
    const v0, -0x655bab9f

    invoke-interface {v6, v0}, LX/iAM;->HO8(I)V

    goto/16 :goto_4

    :cond_35
    const v0, -0x655bab9f

    invoke-interface {v6, v0}, LX/iAM;->HO8(I)V

    goto/16 :goto_3
.end method

.method public static final A06(LX/iAM;LX/3Yb;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/0kU;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;LX/snk;LX/snk;FFIIIIZZZZ)V
    .locals 31

    move-object/from16 v1, p1

    const v0, -0xf53e887

    move-object/from16 v5, p0

    invoke-interface {v5, v0}, LX/iAM;->HOA(I)V

    move/from16 v2, p11

    and-int/lit8 v0, p11, 0x6

    move-object/from16 v4, p2

    if-nez v0, :cond_1d

    invoke-static {v5, v4}, LX/BPg;->A0W(LX/iAM;Ljava/lang/Object;)I

    move-result v6

    or-int v6, v6, p11

    :goto_0
    and-int/lit8 v0, p11, 0x30

    move-object/from16 v3, p3

    if-nez v0, :cond_0

    invoke-static {v5, v3}, LX/BPg;->A0X(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v6, v0

    :cond_0
    and-int/lit16 v0, v2, 0x180

    move-object/from16 v28, p6

    if-nez v0, :cond_1

    move-object/from16 v0, v28

    invoke-static {v5, v0}, LX/BPg;->A0Y(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v6, v0

    :cond_1
    and-int/lit16 v0, v2, 0xc00

    move-object/from16 v26, p4

    if-nez v0, :cond_2

    move-object/from16 v0, v26

    invoke-static {v5, v0}, LX/BPg;->A0Z(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v6, v0

    :cond_2
    and-int/lit16 v0, v2, 0x6000

    move/from16 p0, p10

    if-nez v0, :cond_3

    move/from16 v0, p0

    invoke-static {v5, v0}, LX/BPg;->A0H(LX/iAM;I)I

    move-result v0

    or-int/2addr v6, v0

    :cond_3
    const/high16 v0, 0x30000

    and-int v0, p11, v0

    move/from16 v29, p8

    if-nez v0, :cond_4

    move/from16 v0, v29

    invoke-static {v5, v0}, LX/BPg;->A08(LX/iAM;F)I

    move-result v0

    or-int/2addr v6, v0

    :cond_4
    const/high16 v0, 0x180000

    and-int v0, p11, v0

    move/from16 v30, p9

    if-nez v0, :cond_5

    move/from16 v0, v30

    invoke-static {v5, v0}, LX/BPg;->A09(LX/iAM;F)I

    move-result v0

    or-int/2addr v6, v0

    :cond_5
    const/high16 v0, 0xc00000

    and-int v0, p11, v0

    move-object/from16 v27, p7

    if-nez v0, :cond_6

    move-object/from16 v0, v27

    invoke-static {v5, v0}, LX/BPg;->A0d(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v6, v0

    :cond_6
    const/high16 v0, 0x6000000

    and-int v0, p11, v0

    move/from16 p1, p14

    if-nez v0, :cond_7

    move/from16 v0, p1

    invoke-static {v5, v0}, LX/BPg;->A0y(LX/iAM;Z)I

    move-result v0

    or-int/2addr v6, v0

    :cond_7
    const/high16 v0, 0x30000000

    and-int v0, p11, v0

    move/from16 p2, p15

    if-nez v0, :cond_8

    move/from16 v0, p2

    invoke-static {v5, v0}, LX/BPg;->A0z(LX/iAM;Z)I

    move-result v0

    or-int/2addr v6, v0

    :cond_8
    move/from16 v7, p12

    and-int/lit8 v0, p12, 0x6

    move/from16 p3, p16

    if-nez v0, :cond_1c

    move/from16 v0, p3

    invoke-static {v5, v0}, LX/BPg;->A0q(LX/iAM;Z)I

    move-result v0

    or-int v9, p12, v0

    :goto_1
    and-int/lit8 v0, p12, 0x30

    move/from16 p4, p17

    if-nez v0, :cond_9

    move/from16 v0, p4

    invoke-static {v5, v0}, LX/BPg;->A0r(LX/iAM;Z)I

    move-result v0

    or-int/2addr v9, v0

    :cond_9
    and-int/lit16 v0, v7, 0x180

    move-object/from16 v25, p5

    if-nez v0, :cond_a

    move-object/from16 v0, v25

    invoke-static {v5, v0}, LX/BPg;->A0Y(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v9, v0

    :cond_a
    move/from16 p5, p13

    move/from16 v0, p5

    and-int/lit16 v11, v0, 0x2000

    if-eqz v11, :cond_1b

    or-int/lit16 v9, v9, 0xc00

    :cond_b
    :goto_2
    const v0, 0x12492493

    and-int v8, v6, v0

    const v0, 0x12492492

    if-ne v8, v0, :cond_c

    and-int/lit16 v10, v9, 0x493

    const/16 v8, 0x492

    const/4 v0, 0x0

    if-eq v10, v8, :cond_d

    :cond_c
    const/4 v0, 0x1

    :cond_d
    invoke-static {v5, v6, v0}, LX/20W;->A1Y(LX/iAM;IZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz v11, :cond_e

    sget-object v1, LX/3Yb;->A00:LX/2hw;

    :cond_e
    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v8, "com.instagram.quicksnap.camera.ui.QuickSnapCameraComponent (QuickSnapCameraScreen.kt:2235)"

    const v0, 0xe9b5324

    invoke-static {v8, v0}, LX/2GI;->A01(Ljava/lang/String;I)V

    :cond_f
    invoke-static {v5}, LX/Ata;->A0s(LX/iAM;)Lcom/instagram/common/session/UserSession;

    move-result-object v8

    invoke-interface {v5, v3}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v5}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v10, :cond_10

    sget-object v10, LX/2Fr;->A00:Ljava/lang/Object;

    if-ne v0, v10, :cond_11

    :cond_10
    const/16 v10, 0xc

    new-instance v0, LX/J4W;

    invoke-direct {v0, v3, v10}, LX/J4W;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v5, v0}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_11
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v0}, LX/2GJ;->A07(LX/iAM;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v5}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    sget-object v11, LX/2Fr;->A00:Ljava/lang/Object;

    if-ne v0, v11, :cond_12

    const/4 v0, 0x0

    invoke-static {v5, v0}, LX/BQD;->A0B(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    :cond_12
    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-static {v5, v4, v8, v3}, LX/BQE;->A1Q(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    const/high16 v10, 0x70000000

    and-int v12, v6, v10

    const/high16 v10, 0x20000000

    invoke-static {v12, v10}, LX/011;->A0t(II)Z

    move-result v10

    or-int v20, v20, v10

    invoke-static {v9}, LX/BQD;->A0x(I)Z

    move-result v10

    or-int v20, v20, v10

    invoke-static {v6}, LX/BQD;->A1B(I)Z

    move-result v10

    or-int v20, v20, v10

    invoke-static {v9}, LX/BQD;->A19(I)Z

    move-result v10

    or-int v20, v20, v10

    and-int/lit8 v19, v9, 0x70

    invoke-static/range {v19 .. v19}, LX/BPF;->A17(I)Z

    move-result v10

    or-int v20, v20, v10

    const v18, 0xe000

    and-int v18, v18, v6

    invoke-static/range {v18 .. v18}, LX/BPF;->A19(I)Z

    move-result v10

    or-int v20, v20, v10

    const/high16 v17, 0x70000

    and-int v17, v17, v6

    invoke-static/range {v17 .. v17}, LX/BPF;->A14(I)Z

    move-result v10

    or-int v20, v20, v10

    const/high16 v15, 0x380000

    and-int/2addr v15, v6

    const/high16 v12, 0x100000

    invoke-static {v15, v12}, LX/011;->A0t(II)Z

    move-result v10

    or-int v20, v20, v10

    invoke-static {v6}, LX/BQD;->A19(I)Z

    move-result v10

    or-int v20, v20, v10

    const/high16 v14, 0x1c00000

    and-int/2addr v14, v6

    const/high16 v13, 0x800000

    invoke-static {v14, v13}, LX/011;->A0t(II)Z

    move-result v10

    or-int v20, v20, v10

    const/high16 v16, 0xe000000

    and-int v16, v16, v6

    invoke-static/range {v16 .. v16}, LX/BPF;->A18(I)Z

    move-result v6

    or-int v20, v20, v6

    invoke-interface {v5}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v10

    if-nez v20, :cond_13

    if-ne v10, v11, :cond_14

    :cond_13
    new-instance v10, LX/adr;

    move-object/from16 v20, v10

    move-object/from16 v21, v0

    move-object/from16 v22, v8

    move-object/from16 v23, v4

    move-object/from16 v24, v3

    invoke-direct/range {v20 .. v35}, LX/adr;-><init>(Landroidx/compose/runtime/MutableState;Lcom/instagram/common/session/UserSession;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/0kU;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;LX/snk;LX/snk;FFIZZZZ)V

    invoke-interface {v5, v10}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_14
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v11, :cond_15

    const/16 v6, 0x11

    new-instance v8, LX/jap;

    invoke-direct {v8, v0, v6}, LX/jap;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v5, v8}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_15
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static/range {v17 .. v17}, LX/BPF;->A14(I)Z

    move-result v0

    invoke-static {v15, v12}, LX/011;->A0t(II)Z

    move-result v12

    or-int/2addr v12, v0

    invoke-static {v14, v13}, LX/011;->A0t(II)Z

    move-result v0

    or-int/2addr v12, v0

    invoke-static/range {v16 .. v16}, LX/BPF;->A18(I)Z

    move-result v0

    or-int/2addr v12, v0

    invoke-static/range {v18 .. v18}, LX/BPF;->A19(I)Z

    move-result v0

    or-int/2addr v12, v0

    invoke-static/range {v19 .. v19}, LX/BPF;->A17(I)Z

    move-result v0

    or-int/2addr v12, v0

    invoke-interface {v5}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v6

    if-nez v12, :cond_16

    if-ne v6, v11, :cond_17

    :cond_16
    new-instance v6, LX/aaU;

    move-object v11, v6

    move-object/from16 v12, v27

    move/from16 v13, v29

    move/from16 v14, v30

    move/from16 v15, p0

    move/from16 v16, p1

    move/from16 v17, p4

    invoke-direct/range {v11 .. v17}, LX/aaU;-><init>(LX/snk;FFIZZ)V

    invoke-interface {v5, v6}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_17
    check-cast v6, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v0, v9, 0x6

    and-int/lit8 v0, v0, 0x70

    or-int/lit16 v0, v0, 0xc00

    const/16 v18, 0x4

    const/4 v14, 0x0

    move-object v11, v5

    move-object v12, v1

    move-object v13, v10

    move-object v15, v8

    move-object/from16 v16, v6

    move/from16 v17, v0

    invoke-static/range {v11 .. v18}, LX/GZx;->A08(LX/iAM;LX/3Yb;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_18

    const v0, 0x35e2a3af

    invoke-static {v0}, LX/2GI;->A00(I)V

    :cond_18
    :goto_3
    invoke-interface {v5}, LX/iAM;->BB4()LX/2GH;

    move-result-object v5

    if-eqz v5, :cond_19

    new-instance v0, LX/dep;

    move-object/from16 v11, v25

    move-object/from16 v12, v28

    move-object/from16 v13, v27

    move/from16 v14, v29

    move/from16 v15, v30

    move/from16 v16, p0

    move/from16 v17, v2

    move/from16 v18, v7

    move/from16 v19, p5

    move/from16 v20, p1

    move/from16 v21, p2

    move/from16 v22, p3

    move/from16 v23, p4

    move-object v6, v0

    move-object v7, v1

    move-object v8, v4

    move-object v9, v3

    move-object/from16 v10, v26

    invoke-direct/range {v6 .. v23}, LX/dep;-><init>(LX/3Yb;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/0kU;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;LX/snk;LX/snk;FFIIIIZZZZ)V

    iput-object v0, v5, LX/2GH;->A06:LX/snk;

    :cond_19
    return-void

    :cond_1a
    invoke-interface {v5}, LX/iAM;->HM3()V

    goto :goto_3

    :cond_1b
    and-int/lit16 v0, v7, 0xc00

    if-nez v0, :cond_b

    invoke-static {v5, v1}, LX/BPg;->A0j(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v9, v0

    goto/16 :goto_2

    :cond_1c
    move v9, v7

    goto/16 :goto_1

    :cond_1d
    move v6, v2

    goto/16 :goto_0
.end method

.method public static final A07(LX/iAM;LX/3Yb;LX/kyt;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;LX/1nm;IIZZ)V
    .locals 23

    move-object/from16 v8, p1

    const v0, -0x5cf47a5e

    move-object/from16 v9, p0

    invoke-interface {v9, v0}, LX/iAM;->HOA(I)V

    move/from16 v7, p7

    and-int/lit8 v0, p7, 0x6

    move/from16 v19, p9

    if-nez v0, :cond_a

    move/from16 v0, v19

    invoke-static {v9, v0}, LX/BPg;->A0q(LX/iAM;Z)I

    move-result v11

    or-int v11, v11, p7

    :goto_0
    and-int/lit8 v0, p7, 0x30

    move-object/from16 v20, p2

    if-nez v0, :cond_0

    move-object/from16 v0, v20

    invoke-static {v9, v0}, LX/BPg;->A0X(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v11, v0

    :cond_0
    and-int/lit16 v0, v7, 0x180

    move/from16 v18, p10

    if-nez v0, :cond_1

    move/from16 v0, v18

    invoke-static {v9, v0}, LX/BPg;->A0s(LX/iAM;Z)I

    move-result v0

    or-int/2addr v11, v0

    :cond_1
    and-int/lit16 v0, v7, 0xc00

    move-object/from16 p7, p3

    if-nez v0, :cond_2

    move-object/from16 v0, p7

    invoke-static {v9, v0}, LX/BPg;->A0Z(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v11, v0

    :cond_2
    and-int/lit16 v0, v7, 0x6000

    move-object/from16 v22, p4

    if-nez v0, :cond_3

    move-object/from16 v0, v22

    invoke-static {v9, v0}, LX/BPg;->A0a(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v11, v0

    :cond_3
    const/high16 v0, 0x30000

    and-int/2addr v0, v7

    move-object/from16 v21, p5

    if-nez v0, :cond_4

    move-object/from16 v0, v21

    invoke-static {v9, v0}, LX/BPg;->A0b(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v11, v0

    :cond_4
    move/from16 p2, p8

    and-int/lit8 v2, p8, 0x40

    const/high16 v0, 0x180000

    if-nez v2, :cond_5

    and-int/2addr v0, v7

    if-nez v0, :cond_6

    invoke-static {v9, v8}, LX/BPg;->A0m(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    :cond_5
    or-int/2addr v11, v0

    :cond_6
    const/high16 v0, 0xc00000

    and-int/2addr v0, v7

    move-object/from16 p0, p6

    if-nez v0, :cond_7

    move-object/from16 v0, p0

    invoke-static {v9, v0}, LX/BPg;->A0d(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v11, v0

    :cond_7
    const v1, 0x492493

    and-int/2addr v1, v11

    const v0, 0x492492

    const/4 v10, 0x0

    invoke-static {v1, v0}, LX/21R;->A1W(II)Z

    move-result v0

    invoke-static {v9, v11, v0}, LX/20W;->A1Y(LX/iAM;IZ)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v2, :cond_8

    sget-object v8, LX/3Yb;->A00:LX/2hw;

    :cond_8
    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v1, "com.instagram.quicksnap.camera.ui.AudienceIndicatorWithNux (QuickSnapCameraScreen.kt:2090)"

    const v0, -0x788ab49b

    invoke-static {v1, v0}, LX/2GI;->A01(Ljava/lang/String;I)V

    :cond_9
    invoke-static {v9}, LX/AsD;->A16(LX/iAM;)Ljava/lang/Object;

    move-result-object v12

    sget-object v0, LX/2KY;->A0E:Landroidx/compose/ui/Alignment;

    invoke-static {v0, v10}, LX/2Kq;->A01(Landroidx/compose/ui/Alignment;Z)LX/lpy;

    move-result-object v5

    invoke-static {v9}, LX/2Ku;->A01(LX/iAM;)J

    move-result-wide v1

    invoke-static {v1, v2}, LX/AsD;->A0P(J)I

    move-result v4

    move-object v6, v9

    check-cast v6, LX/2EJ;

    invoke-static {v6}, LX/2EJ;->A04(LX/2EJ;)LX/IaH;

    move-result-object v3

    invoke-static {v9, v8}, LX/2Kv;->A01(LX/iAM;LX/3Yb;)LX/3Yb;

    move-result-object v2

    sget-object v14, LX/2LB;->A00:Lkotlin/jvm/functions/Function0;

    iget-object v1, v6, LX/2EJ;->A0W:LX/FdL;

    if-nez v1, :cond_b

    invoke-static {}, LX/2Ku;->A03()V

    invoke-static {}, LX/002;->createAndThrow()LX/002;

    move-result-object v0

    throw v0

    :cond_a
    move v11, v7

    goto/16 :goto_0

    :cond_b
    invoke-static {v9, v6, v14}, LX/BQD;->A0g(LX/iAM;LX/2EJ;Lkotlin/jvm/functions/Function0;)V

    sget-object v13, LX/2LB;->A04:LX/snk;

    invoke-static {v9, v5, v13}, LX/AsD;->A1A(LX/iAM;Ljava/lang/Object;LX/snk;)LX/snk;

    move-result-object v5

    invoke-static {v9, v3, v5, v4}, LX/BQD;->A0d(LX/iAM;Ljava/lang/Object;LX/snk;I)LX/snk;

    move-result-object v17

    sget-object v4, LX/2LB;->A02:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v2, v4}, LX/AxE;->A0U(LX/iAM;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)LX/snk;

    move-result-object v16

    sget-object v3, LX/3Yb;->A00:LX/2hw;

    invoke-static {v0, v10}, LX/2Kq;->A01(Landroidx/compose/ui/Alignment;Z)LX/lpy;

    move-result-object v15

    invoke-static {v9}, LX/AxE;->A03(LX/iAM;)I

    move-result v2

    invoke-static {v6}, LX/2EJ;->A04(LX/2EJ;)LX/IaH;

    move-result-object v1

    invoke-static {v9, v3}, LX/2Kv;->A01(LX/iAM;LX/3Yb;)LX/3Yb;

    move-result-object v0

    invoke-static {v9, v6, v14}, LX/BQD;->A0g(LX/iAM;LX/2EJ;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v9, v15, v13}, LX/2LE;->A01(LX/iAM;Ljava/lang/Object;LX/snk;)V

    invoke-static {v9, v1, v5}, LX/2LE;->A01(LX/iAM;Ljava/lang/Object;LX/snk;)V

    move-object/from16 v1, v17

    invoke-static {v9, v4, v1, v2}, LX/BO9;->A13(LX/iAM;Lkotlin/jvm/functions/Function1;LX/snk;I)V

    move-object/from16 v1, v16

    invoke-static {v9, v0, v1}, LX/AsD;->A0b(LX/iAM;Ljava/lang/Object;LX/snk;)LX/2LG;

    move-result-object v1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {v11}, LX/Ata;->A00(I)I

    move-result v2

    and-int/lit16 v0, v11, 0x1c00

    or-int/2addr v2, v0

    shr-int/lit8 v0, v11, 0x9

    invoke-static {v0, v2}, LX/AtE;->A05(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    move-object/from16 p3, p0

    move-object/from16 p5, v20

    move-object/from16 p6, v3

    move-object/from16 p8, v9

    invoke-interface/range {p3 .. p9}, LX/1nm;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p10, :cond_e

    if-eqz v19, :cond_e

    const v0, -0x291cf02f

    invoke-static {v1, v9, v3, v0}, LX/AtF;->A0F(LX/2LG;LX/iAM;LX/3Yb;I)LX/3Yb;

    move-result-object v2

    invoke-interface {v9, v12}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v9}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_c

    sget-object v1, LX/2Fr;->A00:Ljava/lang/Object;

    if-ne v0, v1, :cond_d

    :cond_c
    const/16 v1, 0x16

    new-instance v0, LX/lwE;

    invoke-direct {v0, v12, v1}, LX/lwE;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v9, v0}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_d
    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-static {v2, v0}, LX/2Oq;->A01(LX/3Yb;Lkotlin/jvm/functions/Function1;)LX/3Yb;

    move-result-object v0

    invoke-static {v9, v0, v10}, LX/2Kq;->A03(LX/iAM;LX/3Yb;I)V

    shr-int/lit8 v0, v11, 0xc

    invoke-static {v0}, LX/AsD;->A02(I)I

    move-result v4

    const/4 v5, 0x4

    move-object v0, v9

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-static/range {v0 .. v5}, LX/W1z;->A00(LX/iAM;LX/3Yb;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    :goto_1
    invoke-static {v6}, LX/BQE;->A1X(LX/2EJ;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x11e89113

    invoke-static {v0}, LX/2GI;->A00(I)V

    goto :goto_2

    :cond_e
    const v0, -0x2ed8f874

    invoke-interface {v9, v0}, LX/iAM;->HO8(I)V

    goto :goto_1

    :cond_f
    invoke-interface {v9}, LX/iAM;->HM3()V

    :cond_10
    :goto_2
    invoke-interface {v9}, LX/iAM;->BB4()LX/2GH;

    move-result-object v1

    if-eqz v1, :cond_11

    const/16 p3, 0x8

    new-instance v0, LX/cck;

    move/from16 p1, v7

    move/from16 p4, v19

    move/from16 p5, v18

    move-object/from16 v18, v8

    move-object/from16 v19, p7

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v28}, LX/cck;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIIZZ)V

    iput-object v0, v1, LX/2GH;->A06:LX/snk;

    :cond_11
    return-void
.end method

.method public static final A08(LX/iAM;LX/3Yb;Ljava/lang/String;Lkotlin/jvm/functions/Function0;III)V
    .locals 15

    move-object/from16 v8, p1

    const v0, -0x261c30f2

    move-object v14, p0

    invoke-interface {p0, v0}, LX/iAM;->HOA(I)V

    move/from16 v12, p5

    and-int/lit8 v0, p5, 0x6

    move/from16 v11, p4

    if-nez v0, :cond_6

    invoke-static {p0, v11}, LX/BPg;->A0D(LX/iAM;I)I

    move-result v2

    or-int v2, v2, p5

    :goto_0
    and-int/lit8 v0, p5, 0x30

    move-object/from16 v9, p2

    if-nez v0, :cond_0

    invoke-static {p0, v9}, LX/BPg;->A0h(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v2, v0

    :cond_0
    and-int/lit16 v0, v12, 0x180

    move-object/from16 v10, p3

    if-nez v0, :cond_1

    invoke-static {p0, v10}, LX/BPg;->A0Y(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v2, v0

    :cond_1
    move/from16 v13, p6

    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_5

    or-int/lit16 v2, v2, 0xc00

    :cond_2
    :goto_1
    invoke-static {v2}, LX/BQD;->A1A(I)Z

    move-result v0

    invoke-static {p0, v2, v0}, LX/20W;->A1Y(LX/iAM;IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_3

    sget-object v8, LX/3Yb;->A00:LX/2hw;

    :cond_3
    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "com.instagram.quicksnap.camera.ui.CameraControlButton (QuickSnapCameraScreen.kt:2567)"

    const v0, -0x3140fd3f

    invoke-static {v1, v0}, LX/2GI;->A01(Ljava/lang/String;I)V

    :cond_4
    invoke-static {v8}, LX/2KM;->A0K(LX/3Yb;)LX/3Yb;

    move-result-object v0

    sget-object v4, LX/2Ja;->A00:LX/2Jg;

    invoke-static {v0, v4}, LX/2MZ;->A01(LX/3Yb;LX/lka;)LX/3Yb;

    move-result-object v3

    sget-wide v0, Lcom/instagram/compose/core/theme/BasePrismColors;->WHITE_10_TRANSPARENT:J

    invoke-static {v3, v4, v0, v1}, LX/2MN;->A02(LX/3Yb;LX/lka;J)LX/3Yb;

    move-result-object v0

    const/4 p0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v10}, LX/2NB;->A0I(LX/3Yb;Lkotlin/jvm/functions/Function0;)LX/3Yb;

    move-result-object v0

    invoke-static {v1}, LX/AsI;->A0v(Z)LX/lpy;

    move-result-object v7

    invoke-static {v14}, LX/BPF;->A0A(LX/iAM;)I

    move-result v6

    move-object v1, v14

    check-cast v1, LX/2EJ;

    invoke-static {v1}, LX/2EJ;->A04(LX/2EJ;)LX/IaH;

    move-result-object v5

    invoke-static {v14, v0}, LX/2Kv;->A01(LX/iAM;LX/3Yb;)LX/3Yb;

    move-result-object v4

    sget-object v3, LX/2LB;->A00:Lkotlin/jvm/functions/Function0;

    iget-object v0, v1, LX/2EJ;->A0W:LX/FdL;

    if-nez v0, :cond_7

    invoke-static {}, LX/2Ku;->A03()V

    invoke-static {}, LX/002;->createAndThrow()LX/002;

    move-result-object v0

    throw v0

    :cond_5
    and-int/lit16 v0, v12, 0xc00

    if-nez v0, :cond_2

    invoke-static {p0, v8}, LX/BPg;->A0j(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v2, v0

    goto :goto_1

    :cond_6
    move v2, v12

    goto :goto_0

    :cond_7
    invoke-static {v14, v1, v3}, LX/BQD;->A0g(LX/iAM;LX/2EJ;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v14, v7, v5, v4, v6}, LX/BQF;->A1N(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v14, v2, v11}, LX/AsI;->A0o(LX/iAM;II)LX/Ahr;

    move-result-object p1

    invoke-static {v14}, LX/AtD;->A0P(LX/iAM;)J

    move-result-wide p5

    and-int/lit8 v0, v2, 0x70

    or-int/lit8 p3, v0, 0x8

    const/16 p4, 0x34

    invoke-static/range {v14 .. v21}, LX/4IW;->A0A(LX/iAM;LX/3Yb;LX/Ahr;Ljava/lang/String;IIJ)V

    invoke-static {v1}, LX/BO9;->A1Z(LX/2EJ;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7fdbd338

    invoke-static {v0}, LX/2GI;->A00(I)V

    goto :goto_2

    :cond_8
    invoke-interface {p0}, LX/iAM;->HM3()V

    :cond_9
    :goto_2
    invoke-interface {v14}, LX/iAM;->BB4()LX/2GH;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v14, 0x8

    new-instance v7, LX/egl;

    invoke-direct/range {v7 .. v14}, LX/egl;-><init>(LX/3Yb;Ljava/lang/String;Lkotlin/jvm/functions/Function0;IIII)V

    iput-object v7, v0, LX/2GH;->A06:LX/snk;

    :cond_a
    return-void
.end method

.method public static final A09(LX/iAM;LX/3Yb;Ljava/lang/String;Lkotlin/jvm/functions/Function0;IIZZ)V
    .locals 19

    move-object/from16 v8, p1

    const v0, -0x6cb484bd

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, LX/iAM;->HOA(I)V

    move/from16 v11, p4

    and-int/lit8 v0, p4, 0x6

    move/from16 v14, p6

    if-nez v0, :cond_e

    invoke-static {v1, v14}, LX/BPg;->A0q(LX/iAM;Z)I

    move-result v3

    or-int v3, v3, p4

    :goto_0
    and-int/lit8 v0, p4, 0x30

    move/from16 v15, p7

    if-nez v0, :cond_0

    invoke-static {v1, v15}, LX/BPg;->A0r(LX/iAM;Z)I

    move-result v0

    or-int/2addr v3, v0

    :cond_0
    and-int/lit16 v0, v11, 0x180

    move-object/from16 v9, p2

    if-nez v0, :cond_1

    invoke-static {v1, v9}, LX/BPg;->A0i(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v3, v0

    :cond_1
    and-int/lit16 v0, v11, 0xc00

    move-object/from16 v10, p3

    if-nez v0, :cond_2

    invoke-static {v1, v10}, LX/BPg;->A0Z(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v3, v0

    :cond_2
    move/from16 v12, p5

    and-int/lit8 v4, p5, 0x10

    if-eqz v4, :cond_d

    or-int/lit16 v3, v3, 0x6000

    :cond_3
    :goto_1
    and-int/lit16 v2, v3, 0x2493

    const/16 v0, 0x2492

    invoke-static {v2, v0}, LX/21R;->A1W(II)Z

    move-result v0

    invoke-static {v1, v3, v0}, LX/20W;->A1Y(LX/iAM;IZ)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v4, :cond_4

    sget-object v8, LX/3Yb;->A00:LX/2hw;

    :cond_4
    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v2, "com.instagram.quicksnap.camera.ui.CameraFlipButton (QuickSnapCameraScreen.kt:2509)"

    const v0, 0x1720ff08

    invoke-static {v2, v0}, LX/2GI;->A01(Ljava/lang/String;I)V

    :cond_5
    invoke-interface {v1}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, LX/2Fr;->A00:Ljava/lang/Object;

    invoke-static {v1, v0, v4}, LX/BPg;->A1H(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2, v4}, LX/BPF;->A0j(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LX/2Sw;

    invoke-static {v1, v4}, LX/BQE;->A0Z(LX/iAM;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LX/2Sw;

    const p5, 0x7f0826dc

    invoke-static {v3}, LX/BQD;->A10(I)Z

    move-result v7

    invoke-static {v3}, LX/BQD;->A0x(I)Z

    move-result v2

    or-int/2addr v7, v2

    invoke-static {v1, v0, v6, v5, v7}, LX/BQE;->A1V(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v7

    invoke-static {v3}, LX/BPF;->A1E(I)Z

    move-result v2

    or-int/2addr v7, v2

    invoke-interface {v1}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v2

    if-nez v7, :cond_6

    if-ne v2, v4, :cond_7

    :cond_6
    const/16 p2, 0x0

    new-instance v2, LX/izo;

    move-object/from16 v17, v10

    move-object/from16 p1, v5

    move/from16 p3, v15

    move/from16 p4, v14

    move-object/from16 v18, v0

    move-object/from16 p0, v6

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v23}, LX/izo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZZ)V

    invoke-interface {v1, v2}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_7
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v6, v5}, LX/BO9;->A1V(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v1}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v7, :cond_8

    if-ne v0, v4, :cond_9

    :cond_8
    const/16 v4, 0x31

    new-instance v0, LX/E9R;

    invoke-direct {v0, v6, v5, v4}, LX/E9R;-><init>(LX/2Sw;LX/2Sw;I)V

    invoke-interface {v1, v0}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_9
    invoke-static {v8, v0}, LX/AsI;->A0j(LX/3Yb;Ljava/lang/Object;)LX/3Yb;

    move-result-object p2

    shr-int/lit8 v0, v3, 0x3

    and-int/lit8 p6, v0, 0x70

    const/16 p7, 0x0

    move-object/from16 p1, v1

    move-object/from16 p3, v9

    move-object/from16 p4, v2

    invoke-static/range {p1 .. p7}, LX/XcZ;->A08(LX/iAM;LX/3Yb;Ljava/lang/String;Lkotlin/jvm/functions/Function0;III)V

    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x2528c789

    invoke-static {v0}, LX/2GI;->A00(I)V

    :cond_a
    :goto_2
    invoke-interface {v1}, LX/iAM;->BB4()LX/2GH;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v13, 0x7

    new-instance v7, LX/eok;

    invoke-direct/range {v7 .. v15}, LX/eok;-><init>(LX/3Yb;Ljava/lang/String;Lkotlin/jvm/functions/Function0;IIIZZ)V

    iput-object v7, v0, LX/2GH;->A06:LX/snk;

    :cond_b
    return-void

    :cond_c
    invoke-interface {v1}, LX/iAM;->HM3()V

    goto :goto_2

    :cond_d
    and-int/lit16 v0, v11, 0x6000

    if-nez v0, :cond_3

    invoke-static {v1, v8}, LX/BPg;->A0k(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v3, v0

    goto/16 :goto_1

    :cond_e
    move v3, v11

    goto/16 :goto_0
.end method

.method public static final A0A(LX/iAM;LX/3Yb;Lkotlin/jvm/functions/Function0;IIZ)V
    .locals 13

    move-object v9, p1

    const v0, -0x51878500

    invoke-interface {p0, v0}, LX/iAM;->HOA(I)V

    move/from16 v11, p3

    and-int/lit8 v0, p3, 0x6

    move/from16 p1, p5

    if-nez v0, :cond_b

    invoke-static {p0, p1}, LX/BPg;->A0q(LX/iAM;Z)I

    move-result v5

    or-int v5, v5, p3

    :goto_0
    and-int/lit8 v0, p3, 0x30

    move-object v10, p2

    if-nez v0, :cond_0

    invoke-static {p0, p2}, LX/BPg;->A0X(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v5, v0

    :cond_0
    move/from16 v12, p4

    and-int/lit8 v2, p4, 0x4

    if-eqz v2, :cond_a

    or-int/lit16 v5, v5, 0x180

    :cond_1
    :goto_1
    and-int/lit16 v1, v5, 0x93

    const/16 v0, 0x92

    invoke-static {v1, v0}, LX/21R;->A1W(II)Z

    move-result v0

    invoke-static {p0, v5, v0}, LX/20W;->A1Y(LX/iAM;IZ)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v2, :cond_2

    sget-object v9, LX/3Yb;->A00:LX/2hw;

    :cond_2
    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "com.instagram.quicksnap.camera.ui.UndoSendButton (QuickSnapCameraScreen.kt:2594)"

    const v0, -0x12b5f08d

    invoke-static {v1, v0}, LX/2GI;->A01(Ljava/lang/String;I)V

    :cond_3
    invoke-static {p0}, LX/AtF;->A0A(LX/iAM;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p0}, LX/AsI;->A1K(LX/iAM;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v3}, LX/iAM;->AZc(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    if-nez v0, :cond_4

    sget-object v0, LX/2Fr;->A00:Ljava/lang/Object;

    if-ne v4, v0, :cond_5

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt v1, v0, :cond_8

    const/16 v0, 0x85

    invoke-static {v0}, LX/01C;->A00(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Landroid/os/VibratorManager;

    if-eqz v0, :cond_9

    check-cast v1, Landroid/os/VibratorManager;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object v4

    :goto_2
    invoke-interface {p0, v4}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_5
    const/4 v3, 0x3

    invoke-static {v9}, LX/AR8;->A01(LX/3Yb;)LX/3Yb;

    move-result-object v0

    sget-object v7, LX/2Ja;->A00:LX/2Jg;

    invoke-static {v0, v7}, LX/2MZ;->A01(LX/3Yb;LX/lka;)LX/3Yb;

    move-result-object v6

    sget-wide v0, Lcom/instagram/compose/core/theme/BasePrismColors;->WHITE_10_TRANSPARENT:J

    invoke-static {v6, v7, v0, v1}, LX/2MN;->A02(LX/3Yb;LX/lka;J)LX/3Yb;

    move-result-object v7

    xor-int/lit8 v6, p5, 0x1

    invoke-static {p0, v4, v2}, LX/BO9;->A1V(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v5}, LX/AtF;->A1N(I)Z

    move-result v0

    or-int/2addr v8, v0

    invoke-interface {p0}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v8, :cond_6

    sget-object v0, LX/2Fr;->A00:Ljava/lang/Object;

    if-ne v1, v0, :cond_7

    :cond_6
    const/16 v0, 0x2d

    invoke-static {p0, v2, p2, v4, v0}, LX/AxE;->A12(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)LX/RVU;

    move-result-object v1

    :cond_7
    invoke-static {v7, v1, v6}, LX/AwG;->A0b(LX/3Yb;Ljava/lang/Object;Z)LX/3Yb;

    move-result-object v1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v1, v0}, LX/AtF;->A0R(LX/3Yb;F)LX/3Yb;

    move-result-object v7

    sget-object v2, LX/2KY;->A04:LX/ljz;

    invoke-static {}, LX/2LJ;->A04()LX/2NN;

    move-result-object v1

    const/16 v0, 0x1b0

    invoke-static {v1, p0, v2, v0, v3}, LX/BO9;->A0j(LX/lmt;LX/iAM;LX/ljz;II)LX/lpy;

    move-result-object v6

    invoke-static {p0}, LX/AxE;->A03(LX/iAM;)I

    move-result v5

    move-object v4, p0

    check-cast v4, LX/2EJ;

    invoke-static {v4}, LX/2EJ;->A04(LX/2EJ;)LX/IaH;

    move-result-object v3

    invoke-static {p0, v7}, LX/2Kv;->A01(LX/iAM;LX/3Yb;)LX/3Yb;

    move-result-object v2

    sget-object v1, LX/2LB;->A00:Lkotlin/jvm/functions/Function0;

    iget-object v0, v4, LX/2EJ;->A0W:LX/FdL;

    if-nez v0, :cond_c

    invoke-static {}, LX/2Ku;->A03()V

    invoke-static {}, LX/002;->createAndThrow()LX/002;

    move-result-object v0

    throw v0

    :cond_8
    const-string v0, "vibrator"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v0, v4, Landroid/os/Vibrator;

    if-eqz v0, :cond_9

    check-cast v4, Landroid/os/Vibrator;

    goto :goto_2

    :cond_9
    move-object v4, v6

    goto :goto_2

    :cond_a
    and-int/lit16 v0, v11, 0x180

    if-nez v0, :cond_1

    invoke-static {p0, v9}, LX/BPg;->A0i(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v5, v0

    goto/16 :goto_1

    :cond_b
    move v5, v11

    goto/16 :goto_0

    :cond_c
    invoke-static {p0, v4, v1}, LX/BQD;->A0g(LX/iAM;LX/2EJ;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p0, v6, v3, v2, v5}, LX/BQF;->A1N(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v0, 0x7f08282c

    if-eqz p5, :cond_d

    const v0, 0x7f082207

    :cond_d
    invoke-static {p0, v0}, LX/4IU;->A01(LX/iAM;I)LX/Ahr;

    move-result-object v3

    invoke-static {}, LX/AsI;->A0M()LX/3Yb;

    move-result-object v2

    invoke-static {p0}, LX/AsI;->A0E(LX/iAM;)J

    move-result-wide v0

    invoke-static {p0, v2, v3, v0, v1}, LX/4IW;->A03(LX/iAM;LX/3Yb;LX/Ahr;J)V

    const v0, 0x7f1383ba

    if-eqz p5, :cond_e

    const v0, 0x7f13845c

    :cond_e
    invoke-static {p0, v0}, LX/5OW;->A02(LX/iAM;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, LX/AsD;->A0x(LX/iAM;)LX/2Is;

    move-result-object v0

    invoke-static {p0, v0, v1}, LX/AxE;->A1O(LX/iAM;LX/2Is;Ljava/lang/String;)V

    invoke-static {v4}, LX/BO9;->A1Z(LX/2EJ;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, -0x4bedffa1

    invoke-static {v0}, LX/2GI;->A00(I)V

    goto :goto_3

    :cond_f
    invoke-interface {p0}, LX/iAM;->HM3()V

    :cond_10
    :goto_3
    invoke-interface {p0}, LX/iAM;->BB4()LX/2GH;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 p0, 0x32

    new-instance v8, LX/EDf;

    invoke-direct/range {v8 .. v14}, LX/EDf;-><init>(LX/3Yb;Lkotlin/jvm/functions/Function0;IIIZ)V

    iput-object v8, v0, LX/2GH;->A06:LX/snk;

    :cond_11
    return-void
.end method

.method public static final A0B(LX/iAM;LX/3Yb;LX/1nk;LX/1nk;IIIZZZ)V
    .locals 16

    move-object/from16 v14, p1

    const v0, 0x7f31f243

    move-object/from16 v12, p0

    invoke-interface {v12, v0}, LX/iAM;->HOA(I)V

    move/from16 v4, p5

    and-int/lit8 v0, p5, 0x6

    move/from16 v3, p7

    if-nez v0, :cond_12

    invoke-static {v12, v3}, LX/BPg;->A0q(LX/iAM;Z)I

    move-result v9

    or-int v9, v9, p5

    :goto_0
    and-int/lit8 v0, p5, 0x30

    move/from16 v11, p4

    if-nez v0, :cond_0

    invoke-static {v12, v11}, LX/BPg;->A0E(LX/iAM;I)I

    move-result v0

    or-int/2addr v9, v0

    :cond_0
    and-int/lit16 v0, v4, 0x180

    move/from16 v7, p8

    if-nez v0, :cond_1

    invoke-static {v12, v7}, LX/BPg;->A0s(LX/iAM;Z)I

    move-result v0

    or-int/2addr v9, v0

    :cond_1
    and-int/lit16 v0, v4, 0xc00

    move/from16 v2, p9

    if-nez v0, :cond_2

    invoke-static {v12, v2}, LX/BPg;->A0t(LX/iAM;Z)I

    move-result v0

    or-int/2addr v9, v0

    :cond_2
    and-int/lit8 v10, p6, 0x10

    if-eqz v10, :cond_11

    or-int/lit16 v9, v9, 0x6000

    :cond_3
    :goto_1
    const/high16 v0, 0x30000

    and-int v0, v0, p5

    move-object/from16 v6, p2

    if-nez v0, :cond_4

    invoke-static {v12, v6}, LX/BPg;->A0b(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v9, v0

    :cond_4
    const/high16 v0, 0x180000

    and-int v0, v0, p5

    move-object/from16 v5, p3

    if-nez v0, :cond_5

    invoke-static {v12, v5}, LX/BPg;->A0c(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v9, v0

    :cond_5
    const v1, 0x92493

    and-int/2addr v1, v9

    const v0, 0x92492

    const/4 v8, 0x1

    invoke-static {v1, v0}, LX/21R;->A1W(II)Z

    move-result v0

    invoke-static {v12, v9, v0}, LX/20W;->A1Y(LX/iAM;IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v10, :cond_6

    sget-object v14, LX/3Yb;->A00:LX/2hw;

    :cond_6
    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v1, "com.instagram.quicksnap.camera.ui.UndoButtonSlot (QuickSnapCameraScreen.kt:2150)"

    const v0, 0x329b89df

    invoke-static {v1, v0}, LX/2GI;->A01(Ljava/lang/String;I)V

    :cond_7
    if-nez p9, :cond_c

    const v0, -0x2aaab4f1

    invoke-interface {v12, v0}, LX/iAM;->HO8(I)V

    if-eqz p7, :cond_a

    const v0, 0x7a7ea248

    invoke-interface {v12, v0}, LX/iAM;->HO8(I)V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    shr-int/lit8 v0, v9, 0xc

    and-int/lit8 v0, v0, 0xe

    invoke-static {v9, v0}, LX/AsD;->A0C(II)I

    move-result v1

    shr-int/lit8 v0, v9, 0x9

    and-int/lit16 v0, v0, 0x380

    or-int/2addr v0, v1

    invoke-static {v14, v2, v12, v6, v0}, LX/AtF;->A1M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;LX/1nk;I)V

    :goto_2
    move-object v0, v12

    check-cast v0, LX/2EJ;

    invoke-static {v0}, LX/2EJ;->A0I(LX/2EJ;)V

    invoke-static {v0}, LX/2EJ;->A0I(LX/2EJ;)V

    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x6fe557b7

    invoke-static {v0}, LX/2GI;->A00(I)V

    :cond_8
    invoke-interface {v12}, LX/iAM;->BB4()LX/2GH;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v0, LX/eik;

    move-object/from16 p1, v14

    move-object/from16 p0, v0

    invoke-direct/range {p0 .. p8}, LX/eik;-><init>(LX/3Yb;LX/1nk;LX/1nk;IIIZZ)V

    :goto_3
    iput-object v0, v1, LX/2GH;->A06:LX/snk;

    :cond_9
    return-void

    :cond_a
    const v0, 0x7a7ea79f

    invoke-interface {v12, v0}, LX/iAM;->HO8(I)V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    shr-int/lit8 v2, v9, 0xc

    and-int/lit8 v0, v2, 0xe

    or-int/lit8 v1, v0, 0x30

    and-int/lit16 v0, v2, 0x380

    or-int/2addr v0, v1

    invoke-static {v14, v8, v12, v5, v0}, LX/AtF;->A1M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;LX/1nk;I)V

    goto :goto_2

    :cond_b
    invoke-interface {v12}, LX/iAM;->HM3()V

    goto :goto_4

    :cond_c
    const v0, -0x308b9f41    # -4.099981E9f

    invoke-static {v12, v0}, LX/B7f;->A1F(LX/iAM;I)V

    invoke-static {v12}, LX/AtF;->A0i(LX/iAM;)LX/LjO;

    move-result-object v1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-interface {v1, v0}, LX/LjO;->Gfk(F)I

    move-result v8

    new-instance v15, LX/K3B;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, v15, LX/K3B;->A02:Z

    iput v11, v15, LX/K3B;->A00:I

    iput-boolean v7, v15, LX/K3B;->A01:Z

    const/4 v0, 0x0

    sput v0, Lredex/$StoreFenceHelper;->DUMMY_VOLATILE:I

    invoke-interface {v12, v8}, LX/iAM;->AZa(I)Z

    move-result v0

    invoke-interface {v12}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_d

    sget-object v0, LX/2Fr;->A00:Ljava/lang/Object;

    if-ne v1, v0, :cond_e

    :cond_d
    const/16 v0, 0x2b

    invoke-static {v12, v8, v0}, LX/B55;->A0e(LX/iAM;II)LX/D8r;

    move-result-object v1

    :cond_e
    check-cast v1, Lkotlin/jvm/functions/Function1;

    sget-object v13, LX/2KY;->A09:Landroidx/compose/ui/Alignment;

    invoke-interface {v12}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    sget-object v8, LX/2Fr;->A00:Ljava/lang/Object;

    if-ne v0, v8, :cond_f

    const/16 v8, 0x53

    new-instance v0, LX/D2v;

    invoke-direct {v0, v8}, LX/D2v;-><init>(I)V

    invoke-interface {v12, v0}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_f
    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x12

    new-instance v10, LX/gAI;

    invoke-direct {v10, v8, v6, v5}, LX/gAI;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v8, -0x56e91147

    invoke-static {v12, v10, v8}, LX/2DF;->A00(LX/iAM;Ljava/lang/Object;I)LX/2DG;

    move-result-object p3

    shr-int/lit8 v8, v9, 0x9

    and-int/lit8 p4, v8, 0x70

    const v8, 0x1b6c00

    or-int p4, p4, v8

    const/16 p5, 0x0

    const-string p0, "undoButtonSlot"

    move-object/from16 p1, v1

    move-object/from16 p2, v0

    invoke-static/range {v12 .. v21}, LX/DRI;->A02(LX/iAM;Landroidx/compose/ui/Alignment;LX/3Yb;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;LX/1nk;II)V

    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x3ddf92cf

    invoke-static {v0}, LX/2GI;->A00(I)V

    :cond_10
    :goto_4
    invoke-interface {v12}, LX/iAM;->BB4()LX/2GH;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v0, LX/bkl;

    move-object/from16 p1, v14

    move-object/from16 p2, v6

    move-object/from16 p3, v5

    move/from16 p4, v11

    move/from16 p5, v4

    move-object/from16 p0, v0

    invoke-direct/range {p0 .. p9}, LX/bkl;-><init>(LX/3Yb;LX/1nk;LX/1nk;IIIZZZ)V

    goto/16 :goto_3

    :cond_11
    and-int/lit16 v0, v4, 0x6000

    if-nez v0, :cond_3

    invoke-static {v12, v14}, LX/BPg;->A0k(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v9, v0

    goto/16 :goto_1

    :cond_12
    move v9, v4

    goto/16 :goto_0
.end method

.method public static final A0C(LX/iAM;LX/Ul7;LX/PF1;Lcom/instagram/quicksnap/creation/IgQuickSnapCameraPreferences;LX/W7M;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;LX/snk;LX/1nm;IIIZZZ)V
    .locals 102

    move-object/from16 v8, p1

    move-object/from16 v46, p4

    move-object/from16 v50, p5

    move-object/from16 v49, p6

    move-object/from16 v32, p7

    move/from16 v31, p12

    move/from16 v48, p13

    move/from16 v47, p14

    const/4 v7, 0x0

    const/16 v45, 0x1

    const/4 v9, 0x2

    const v0, 0x3f6c7f1a

    move-object/from16 v3, p0

    invoke-interface {v3, v0}, LX/iAM;->HOA(I)V

    move/from16 v16, p9

    and-int/lit8 v0, p9, 0x6

    move-object/from16 p14, p2

    if-nez v0, :cond_70

    move-object/from16 v0, p14

    invoke-static {v3, v0}, LX/BPg;->A0W(LX/iAM;Ljava/lang/Object;)I

    move-result v5

    or-int v5, v5, p9

    :goto_0
    and-int/lit8 v0, p9, 0x30

    move-object/from16 p13, p3

    if-nez v0, :cond_0

    move-object/from16 v0, p13

    invoke-static {v3, v0}, LX/BPg;->A0X(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v5, v0

    :cond_0
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x180

    move-object/from16 p12, p8

    if-nez v0, :cond_1

    move-object/from16 v0, p12

    invoke-static {v3, v0}, LX/BPg;->A0Y(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v5, v0

    :cond_1
    move/from16 v24, p11

    and-int/lit8 v14, p11, 0x8

    if-eqz v14, :cond_6f

    or-int/lit16 v5, v5, 0xc00

    :cond_2
    :goto_1
    and-int/lit8 v13, p11, 0x10

    if-eqz v13, :cond_6e

    or-int/lit16 v5, v5, 0x6000

    :cond_3
    :goto_2
    and-int/lit8 v12, p11, 0x20

    const/high16 v0, 0x30000

    if-nez v12, :cond_4

    and-int v0, v0, p9

    if-nez v0, :cond_5

    move-object/from16 v0, v32

    invoke-static {v3, v0}, LX/BPg;->A0b(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    :cond_4
    or-int/2addr v5, v0

    :cond_5
    and-int/lit8 v11, p11, 0x40

    const/high16 v0, 0x180000

    if-nez v11, :cond_6

    and-int v0, v0, p9

    if-nez v0, :cond_7

    move/from16 v0, v48

    invoke-static {v3, v0}, LX/BPg;->A0w(LX/iAM;Z)I

    move-result v0

    :cond_6
    or-int/2addr v5, v0

    :cond_7
    const/high16 v0, 0xc00000

    and-int v0, p9, v0

    if-nez v0, :cond_a

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_8

    move/from16 v0, v47

    invoke-interface {v3, v0}, LX/iAM;->AZd(Z)Z

    move-result v1

    const/high16 v0, 0x800000

    if-nez v1, :cond_9

    :cond_8
    const/high16 v0, 0x400000

    :cond_9
    or-int/2addr v5, v0

    :cond_a
    move/from16 v0, v24

    and-int/lit16 v6, v0, 0x100

    const/high16 v1, 0x6000000

    if-nez v6, :cond_b

    and-int v1, v1, p9

    if-nez v1, :cond_c

    const/high16 v1, 0x8000000

    move-object/from16 v2, v46

    move/from16 v0, v16

    invoke-static {v3, v2, v1, v0}, LX/BQD;->A1R(LX/iAM;Ljava/lang/Object;II)Z

    move-result v0

    const/high16 v1, 0x2000000

    if-eqz v0, :cond_b

    const/high16 v1, 0x4000000

    :cond_b
    or-int/2addr v5, v1

    :cond_c
    move/from16 v0, v24

    and-int/lit16 v4, v0, 0x200

    const/high16 v0, 0x30000000

    if-nez v4, :cond_d

    and-int v0, v0, p9

    if-nez v0, :cond_e

    move-object/from16 v0, v49

    invoke-static {v3, v0}, LX/BPg;->A0f(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    :cond_d
    or-int/2addr v5, v0

    :cond_e
    move/from16 v0, v24

    and-int/lit16 v2, v0, 0x400

    move/from16 p5, p10

    if-eqz v2, :cond_6c

    or-int/lit8 v10, p10, 0x6

    :goto_3
    const v0, 0x12492493

    and-int v1, v5, v0

    const v0, 0x12492492

    if-ne v1, v0, :cond_f

    and-int/lit8 v1, v10, 0x3

    const/4 v0, 0x0

    if-eq v1, v9, :cond_10

    :cond_f
    const/4 v0, 0x1

    :cond_10
    invoke-static {v3, v5, v0}, LX/20W;->A1Y(LX/iAM;IZ)Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-interface {v3}, LX/iAM;->HNK()V

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_64

    invoke-interface {v3}, LX/iAM;->Bt2()Z

    move-result v0

    if-nez v0, :cond_64

    move/from16 v0, v24

    invoke-static {v3, v0, v5}, LX/BQD;->A07(LX/iAM;II)I

    move-result v5

    :goto_4
    move-object/from16 v101, v8

    :cond_11
    invoke-static {v3}, LX/AtF;->A1V(LX/iAM;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v1, "com.instagram.quicksnap.camera.ui.QuickSnapCameraScreen (QuickSnapCameraScreen.kt:309)"

    const v0, -0x7eadb118

    invoke-static {v1, v0}, LX/2GI;->A01(Ljava/lang/String;I)V

    :cond_12
    invoke-static {v3}, LX/AtF;->A0A(LX/iAM;)Landroid/content/Context;

    move-result-object v40

    invoke-static {v3}, LX/AxE;->A0Q(LX/iAM;)Lcom/instagram/common/session/UserSession;

    move-result-object v42

    move-object/from16 v1, v40

    move-object/from16 v0, v42

    invoke-static {v3, v1, v0}, LX/B7f;->A1V(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_13

    sget-object v0, LX/2Fr;->A00:Ljava/lang/Object;

    if-ne v2, v0, :cond_14

    :cond_13
    sget-object v1, Lcom/instagram/pendingmedia/service/impl/PendingMediaManager;->A0E:LX/4gw;

    move-object/from16 v2, v40

    move-object/from16 v0, v42

    invoke-virtual {v1, v2, v0}, LX/4gw;->A00(Landroid/content/Context;Lcom/instagram/common/session/UserSession;)Lcom/instagram/pendingmedia/service/impl/PendingMediaManager;

    move-result-object v2

    invoke-interface {v3, v2}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_14
    check-cast v2, Lcom/instagram/pendingmedia/service/impl/PendingMediaManager;

    const/16 v44, 0x0

    sget-object v1, LX/6fd;->ADL:LX/6fd;

    move-object/from16 v0, v42

    invoke-static {v7, v0, v2}, LX/AxE;->A01(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v41

    new-instance v6, LX/PRQ;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v0, v6, LX/PRQ;->A01:Lcom/instagram/common/session/UserSession;

    move-object/from16 v0, p14

    iput-object v0, v6, LX/PRQ;->A03:LX/PF1;

    move-object/from16 v0, p13

    iput-object v0, v6, LX/PRQ;->A04:Lcom/instagram/quicksnap/creation/IgQuickSnapCameraPreferences;

    iput-object v2, v6, LX/PRQ;->A02:Lcom/instagram/pendingmedia/service/impl/PendingMediaManager;

    move-object/from16 v0, v46

    iput-object v0, v6, LX/PRQ;->A05:LX/W7M;

    iput-object v1, v6, LX/PRQ;->A00:LX/6fd;

    invoke-static {v3}, LX/AtF;->A0j(LX/iAM;)LX/00V;

    move-result-object v4

    if-eqz v4, :cond_c1

    invoke-static {v4}, LX/BQD;->A0O(Ljava/lang/Object;)LX/0ml;

    move-result-object v2

    const-class v1, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;

    move-object/from16 v0, v44

    invoke-static {v6, v4, v2, v1, v0}, LX/B7f;->A0j(LX/0dp;LX/00V;LX/0ml;Ljava/lang/Class;Ljava/lang/String;)LX/0dq;

    move-result-object v6

    check-cast v6, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;

    move-object/from16 v0, v40

    invoke-static {v0, v6}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->install(Landroid/content/Context;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V

    const/high16 v1, 0xe000000

    and-int/2addr v1, v5

    const/high16 v0, 0x4000000

    if-eq v1, v0, :cond_15

    const/high16 v0, 0x8000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_63

    move-object/from16 v0, v46

    invoke-interface {v3, v0}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    :cond_15
    const/4 v0, 0x1

    :goto_5
    invoke-static {v3, v6, v0}, LX/AtD;->A1b(LX/iAM;Ljava/lang/Object;Z)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_16

    sget-object v0, LX/2Fr;->A00:Ljava/lang/Object;

    if-ne v1, v0, :cond_17

    :cond_16
    const/16 v1, 0x18

    move-object/from16 v0, v46

    invoke-static {v3, v6, v0, v1}, LX/B55;->A0r(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;I)LX/QDQ;

    move-result-object v1

    :cond_17
    move-object/from16 v0, v46

    invoke-static {v3, v1, v0}, LX/AsD;->A1P(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->A0I:LX/GhC;

    invoke-static {v3, v0}, LX/0ks;->A02(LX/iAM;LX/GhC;)LX/mqj;

    move-result-object v10

    move-object/from16 v0, v42

    invoke-interface {v3, v0}, LX/iAM;->AZc(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_18

    sget-object v0, LX/2Fr;->A00:Ljava/lang/Object;

    if-ne v1, v0, :cond_1b

    :cond_18
    invoke-static/range {v42 .. v42}, LX/Iu8;->A00(Lcom/instagram/common/session/UserSession;)Z

    move-result v0

    if-nez v0, :cond_19

    move-object/from16 v0, v42

    invoke-static {v0, v7}, LX/1na;->A02(LX/4Nb;Z)LX/say;

    move-result-object v2

    const-wide v0, 0x81116d00435d67L

    invoke-static {v2, v0, v1}, LX/011;->A0y(Ljava/lang/Object;J)Z

    move-result v1

    const/4 v0, 0x1

    if-nez v1, :cond_1a

    :cond_19
    const/4 v0, 0x0

    :cond_1a
    invoke-static {v3, v0}, LX/AtE;->A0n(LX/iAM;Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_1b
    invoke-static {v1}, LX/011;->A0x(Ljava/lang/Object;)Z

    move-result v87

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v35

    sget-object v4, LX/2Fr;->A00:Ljava/lang/Object;

    move-object/from16 v0, v35

    if-ne v0, v4, :cond_1c

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-int v2, v0

    new-instance v35, LX/0kU;

    move-object/from16 v0, v35

    invoke-direct {v0, v2}, LX/0kU;-><init>(I)V

    invoke-interface {v3, v0}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_1c
    check-cast v35, LX/0kU;

    invoke-static {v3}, LX/AsI;->A1J(LX/iAM;)Ljava/lang/Object;

    move-result-object v39

    if-eqz v32, :cond_62

    if-eqz v31, :cond_62

    const v0, -0x4ceb5eee

    invoke-static {v3, v10, v0}, LX/AtE;->A0w(LX/iAM;LX/mqj;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/DSA;

    iget-boolean v0, v0, LX/DSA;->A0R:Z

    if-eqz v0, :cond_61

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-object v1, v0, LX/DSA;->A04:Landroid/graphics/Bitmap;

    :goto_6
    invoke-static {v5}, LX/BQE;->A16(I)Z

    move-result v0

    invoke-static {v3, v1, v6, v0}, LX/BPg;->A1X(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v2

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v2, :cond_1d

    if-ne v0, v4, :cond_1e

    :cond_1d
    const/16 v0, 0x11

    move-object/from16 v2, v32

    invoke-static {v3, v1, v6, v2, v0}, LX/AxE;->A15(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)LX/mAU;

    move-result-object v0

    :cond_1e
    invoke-static {v3, v0, v1}, LX/AsD;->A1P(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v7}, LX/AsD;->A0i(Ljava/lang/Object;Z)LX/2EJ;

    move-result-object v30

    :goto_7
    move-object/from16 v0, v44

    invoke-static {v3, v4, v0}, LX/BQF;->A0o(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    if-ne v0, v4, :cond_1f

    move-object/from16 v0, v44

    invoke-static {v3, v0}, LX/BQD;->A0C(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v17

    :cond_1f
    check-cast v17, Landroidx/compose/runtime/MutableState;

    invoke-static {v3, v4, v7}, LX/BQF;->A0s(LX/iAM;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_20

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3, v0}, LX/BQD;->A0B(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v22

    :cond_20
    check-cast v22, Landroidx/compose/runtime/MutableState;

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_21

    const/16 v2, 0x25

    new-instance v1, LX/EUG;

    move-object/from16 v9, v22

    move-object/from16 v0, v44

    invoke-direct {v1, v9, v0, v2}, LX/EUG;-><init>(Ljava/lang/Object;LX/HAU;I)V

    invoke-interface {v3, v1}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_21
    invoke-static {v3, v1, v8}, LX/AsD;->A1Q(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v4, v7}, LX/BQF;->A0s(LX/iAM;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-static {v3}, LX/AsI;->A1Q(LX/iAM;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/00T;

    invoke-interface {v3, v0}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_22

    if-ne v8, v4, :cond_23

    :cond_22
    const/16 v1, 0xb

    new-instance v8, LX/R8a;

    invoke-direct {v8, v1, v2, v0}, LX/R8a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v8}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_23
    invoke-static {v3, v8, v0}, LX/AsD;->A1P(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v43, LX/4z7;->A00:LX/4z7;

    invoke-interface {v3, v6}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v8, :cond_24

    if-ne v1, v4, :cond_25

    :cond_24
    const/16 v52, 0xa

    new-instance v1, LX/mAH;

    move-object/from16 v51, v1

    move-object/from16 v53, v26

    move-object/from16 v54, v17

    move-object/from16 v55, v27

    move-object/from16 v56, v6

    invoke-direct/range {v51 .. v56}, LX/mAH;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v1}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_25
    move-object/from16 v8, v43

    invoke-static {v3, v1, v8}, LX/AsD;->A1P(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Landroidx/compose/runtime/MutableState;->A01(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 v52, 0x1

    if-nez v47, :cond_27

    :cond_26
    const/16 v52, 0x0

    :cond_27
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    move/from16 v1, v52

    invoke-interface {v3, v1}, LX/iAM;->AZd(Z)Z

    move-result v9

    move-object/from16 v1, v35

    invoke-static {v3, v1, v10, v9}, LX/BPF;->A1Q(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v9

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v9, :cond_28

    if-ne v1, v4, :cond_29

    :cond_28
    const/16 v59, 0x8

    new-instance v1, LX/I2W;

    move-object/from16 v53, v1

    move-object/from16 v54, v27

    move-object/from16 v55, v26

    move-object/from16 v56, v35

    move-object/from16 v57, v10

    move-object/from16 v58, v17

    move/from16 v60, v52

    invoke-direct/range {v53 .. v60}, LX/I2W;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-interface {v3, v1}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_29
    invoke-static {v3, v1, v2, v8}, LX/AsD;->A1R(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v6}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_2a

    if-ne v8, v4, :cond_2b

    :cond_2a
    const/16 v1, 0x33

    invoke-static {v3, v6, v1}, LX/EVf;->A01(LX/iAM;Ljava/lang/Object;I)LX/EVf;

    move-result-object v8

    :cond_2b
    move-object/from16 v1, v43

    invoke-static {v3, v8, v1}, LX/AsD;->A1Q(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v4, v7}, LX/BQF;->A0s(LX/iAM;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v55

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v5}, LX/BQE;->A0y(I)Z

    move-result v1

    invoke-static {v3, v6, v1}, LX/AtD;->A1b(LX/iAM;Ljava/lang/Object;Z)Z

    move-result v9

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v9, :cond_2c

    if-ne v1, v4, :cond_2d

    :cond_2c
    const/16 v57, 0x4

    new-instance v1, LX/aGq;

    move-object/from16 v53, v1

    move-object/from16 v54, v6

    move-object/from16 v56, v44

    move/from16 v58, v48

    invoke-direct/range {v53 .. v58}, LX/aGq;-><init>(Ljava/lang/Object;Ljava/lang/Object;LX/HAU;IZ)V

    invoke-interface {v3, v1}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_2d
    invoke-static {v3, v1, v8}, LX/AsD;->A1Q(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v1, v18

    if-ne v1, v4, :cond_2e

    new-instance v18, Lcom/instagram/compose/ui/snackbar/SnackbarHostState;

    invoke-direct/range {v18 .. v18}, Lcom/instagram/compose/ui/snackbar/SnackbarHostState;-><init>()V

    move-object v8, v3

    check-cast v8, LX/2EJ;

    move-object/from16 v1, v18

    invoke-virtual {v8, v1}, LX/2EJ;->A0a(Ljava/lang/Object;)V

    :cond_2e
    check-cast v18, Lcom/instagram/compose/ui/snackbar/SnackbarHostState;

    invoke-static {v3, v4, v7}, LX/BQF;->A0s(LX/iAM;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroidx/compose/runtime/MutableState;

    invoke-static {v3, v4, v7}, LX/BQF;->A0s(LX/iAM;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v1, v21

    if-ne v1, v4, :cond_2f

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, LX/BQD;->A0B(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v21

    :cond_2f
    check-cast v21, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v1, v19

    if-ne v1, v4, :cond_30

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, LX/BQD;->A0B(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v19

    :cond_30
    check-cast v19, Landroidx/compose/runtime/MutableState;

    invoke-static {v3, v4, v7}, LX/BQF;->A0s(LX/iAM;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v55

    move-object/from16 v1, v55

    if-ne v1, v4, :cond_31

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, LX/BQD;->A0B(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v55

    :cond_31
    check-cast v55, Landroidx/compose/runtime/MutableState;

    invoke-static {v3, v4, v7}, LX/BQF;->A0s(LX/iAM;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v36

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v54

    move-object/from16 v1, v54

    if-ne v1, v4, :cond_32

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, LX/BQD;->A0B(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v54

    :cond_32
    check-cast v54, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v1, v28

    if-ne v1, v4, :cond_33

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, LX/BQD;->A0B(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v28

    :cond_33
    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v57

    move-object/from16 v1, v57

    if-ne v1, v4, :cond_34

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, LX/BQD;->A0B(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v57

    :cond_34
    check-cast v57, Landroidx/compose/runtime/MutableState;

    invoke-static {v3, v4, v7}, LX/BQF;->A0s(LX/iAM;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v1, v20

    if-ne v1, v4, :cond_35

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, LX/B55;->A0N(LX/iAM;F)Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    move-result-object v20

    :cond_35
    check-cast v20, LX/iAz;

    invoke-static {v3, v0, v6}, LX/BO9;->A1V(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v5}, LX/BQE;->A1H(I)Z

    move-result v11

    or-int/2addr v11, v1

    move-object/from16 v9, v40

    move-object/from16 v8, v42

    move-object/from16 v1, v18

    invoke-static {v3, v9, v8, v1, v11}, LX/BQE;->A1V(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v9

    const/high16 v1, 0x70000000

    and-int v8, v5, v1

    const/high16 v1, 0x20000000

    invoke-static {v8, v1}, LX/011;->A0t(II)Z

    move-result v1

    or-int/2addr v1, v9

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_36

    if-ne v8, v4, :cond_37

    :cond_36
    new-instance v8, Lcom/instagram/quicksnap/camera/ui/QuickSnapCameraScreenKt$QuickSnapCameraScreen$9$1;

    move-object/from16 v65, v8

    move-object/from16 v66, v40

    move-object/from16 v67, v55

    move-object/from16 v68, v54

    move-object/from16 v69, v25

    move-object/from16 v70, v23

    move-object/from16 v71, v19

    move-object/from16 v72, v21

    move-object/from16 v73, v29

    move-object/from16 v74, v0

    move-object/from16 v75, v42

    move-object/from16 v76, v18

    move-object/from16 v77, v6

    move-object/from16 v78, v44

    move-object/from16 v79, v50

    move-object/from16 v80, v49

    invoke-direct/range {v65 .. v80}, Lcom/instagram/quicksnap/camera/ui/QuickSnapCameraScreenKt$QuickSnapCameraScreen$9$1;-><init>(Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;LX/00T;Lcom/instagram/common/session/UserSession;Lcom/instagram/compose/ui/snackbar/SnackbarHostState;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/HAU;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    move-object v1, v3

    check-cast v1, LX/2EJ;

    invoke-virtual {v1, v8}, LX/2EJ;->A0a(Ljava/lang/Object;)V

    :cond_37
    invoke-static {v3, v8, v6, v0}, LX/AsD;->A1S(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface/range {v55 .. v55}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-boolean v0, v0, LX/DSA;->A0N:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v3, v10}, LX/iAM;->AZc(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v9

    if-nez v0, :cond_38

    if-ne v9, v4, :cond_39

    :cond_38
    const/16 v8, 0x2b

    new-instance v9, LX/CsG;

    move-object/from16 v1, v55

    move-object/from16 v0, v44

    invoke-direct {v9, v1, v10, v0, v8}, LX/CsG;-><init>(Ljava/lang/Object;Ljava/lang/Object;LX/HAU;I)V

    invoke-interface {v3, v9}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_39
    invoke-static {v3, v9, v12, v11}, LX/AsD;->A1S(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface/range {v54 .. v54}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-boolean v0, v0, LX/DSA;->A0N:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v3, v10}, LX/iAM;->AZc(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3a

    if-ne v1, v4, :cond_3b

    :cond_3a
    const/16 v8, 0x5d

    new-instance v1, LX/D7D;

    move-object/from16 v0, v54

    invoke-direct {v1, v0, v10, v8}, LX/D7D;-><init>(Landroidx/compose/runtime/MutableState;LX/mqj;I)V

    invoke-interface {v3, v1}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_3b
    invoke-static {v3, v1, v11, v9}, LX/AsD;->A1R(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-boolean v0, v0, LX/DSA;->A0N:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p14

    invoke-static {v3, v10, v0}, LX/B7f;->A1U(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_3c

    if-ne v0, v4, :cond_3d

    :cond_3c
    const/16 v9, 0x40

    move-object/from16 v8, p14

    move-object/from16 v1, v57

    move-object/from16 v0, v44

    invoke-static {v8, v1, v10, v0, v9}, LX/DSe;->A00(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;LX/HAU;I)LX/DSe;

    move-result-object v0

    invoke-interface {v3, v0}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_3d
    invoke-static {v3, v0, v11}, LX/AsD;->A1Q(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p11, 0x4

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v1

    iget-boolean v0, v1, LX/DSA;->A0H:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, v1, LX/DSA;->A0F:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3f

    :cond_3e
    const/4 v1, 0x0

    :cond_3f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-boolean v0, v0, LX/DSA;->A0I:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v8, v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v1

    move/from16 v0, v52

    invoke-static {v3, v10, v0}, LX/B7f;->A1Z(LX/iAM;Ljava/lang/Object;Z)Z

    move-result v2

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v2, :cond_40

    if-ne v0, v4, :cond_41

    :cond_40
    new-instance v0, LX/aGq;

    move-object v8, v0

    move-object/from16 v9, v27

    move-object/from16 v11, v44

    move/from16 v12, v41

    move/from16 v13, v52

    invoke-direct/range {v8 .. v13}, LX/aGq;-><init>(Ljava/lang/Object;Ljava/lang/Object;LX/HAU;IZ)V

    invoke-interface {v3, v0}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_41
    check-cast v0, LX/snk;

    invoke-static {v3, v0, v1}, LX/2GJ;->A09(LX/iAM;LX/snk;[Ljava/lang/Object;)V

    invoke-static {v3, v4, v7}, LX/BQF;->A0s(LX/iAM;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-object v9, v0, LX/DSA;->A05:LX/b4V;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_42

    const/16 v8, 0x2c

    new-instance v2, LX/CsG;

    move-object/from16 v1, v64

    move-object/from16 v0, v44

    invoke-direct {v2, v1, v11, v0, v8}, LX/CsG;-><init>(Ljava/lang/Object;Ljava/lang/Object;LX/HAU;I)V

    invoke-interface {v3, v2}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_42
    invoke-static {v3, v10, v2, v9}, LX/AxE;->A0R(LX/iAM;LX/mqj;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/DSA;

    iget-object v9, v0, LX/DSA;->A05:LX/b4V;

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v10}, LX/iAM;->AZc(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_43

    if-ne v2, v4, :cond_44

    :cond_43
    new-instance v2, LX/peB;

    move-object/from16 v1, v27

    move-object/from16 v0, v26

    invoke-direct {v2, v7, v1, v10, v0}, LX/peB;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v2}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_44
    invoke-static {v3, v2, v9, v8}, LX/AsD;->A1R(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-boolean v0, v0, LX/DSA;->A0F:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v10, v6}, LX/B7f;->A1U(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v8, :cond_45

    if-ne v0, v4, :cond_46

    :cond_45
    const/16 v59, 0x9

    new-instance v0, LX/mAH;

    move-object/from16 v58, v0

    move-object/from16 v60, v26

    move-object/from16 v61, v10

    move-object/from16 v62, v27

    move-object/from16 v63, v6

    invoke-direct/range {v58 .. v63}, LX/mAH;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v0}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_46
    invoke-static {v3, v0, v2, v1}, LX/AsD;->A1R(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, LX/C5g;->A02(LX/iAM;)LX/ZKa;

    move-result-object v0

    invoke-static {v3, v4, v7}, LX/BQF;->A0s(LX/iAM;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_47

    move-object/from16 v1, v44

    invoke-static {v3, v1}, LX/BQD;->A0C(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    :cond_47
    check-cast v1, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v4, :cond_48

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3, v8}, LX/BQD;->A0B(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v13

    :cond_48
    check-cast v13, Landroidx/compose/runtime/MutableState;

    invoke-static {v3, v4, v7}, LX/BQF;->A0s(LX/iAM;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3, v8, v4, v7}, LX/BQF;->A0p(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3, v6}, LX/iAM;->AZc(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v15

    if-nez v9, :cond_49

    if-ne v15, v4, :cond_4a

    :cond_49
    const/16 v9, 0x13

    new-instance v15, LX/GVE;

    invoke-direct {v15, v2, v8, v6, v9}, LX/GVE;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;I)V

    invoke-interface {v3, v15}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_4a
    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, LX/020;->A1X(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v8}, LX/BO9;->A0P(Landroidx/compose/runtime/MutableState;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v0}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v14

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v8

    if-nez v14, :cond_4b

    if-ne v8, v4, :cond_4c

    :cond_4b
    const/16 v74, 0x1f

    new-instance v8, LX/DSa;

    move-object/from16 v68, v8

    move-object/from16 v70, v1

    move-object/from16 v71, v2

    move-object/from16 v72, v0

    move-object/from16 v73, v44

    invoke-direct/range {v68 .. v74}, LX/DSa;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;LX/HAU;I)V

    invoke-interface {v3, v8}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_4c
    invoke-static {v3, v8, v12, v11, v9}, LX/AsD;->A1T(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v13}, LX/BO9;->A0P(Landroidx/compose/runtime/MutableState;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v0}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v8

    if-nez v11, :cond_4d

    if-ne v8, v4, :cond_4e

    :cond_4d
    const/16 v63, 0x41

    new-instance v8, LX/DSe;

    move-object/from16 v58, v8

    move-object/from16 v59, v2

    move-object/from16 v60, v1

    move-object/from16 v61, v0

    move-object/from16 v62, v44

    invoke-direct/range {v58 .. v63}, LX/DSe;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;LX/ZKa;LX/HAU;I)V

    invoke-interface {v3, v8}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_4e
    invoke-static {v3, v8, v9, v0}, LX/AxE;->A1Y(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v8

    if-nez v9, :cond_4f

    if-ne v8, v4, :cond_50

    :cond_4f
    const/16 v63, 0x42

    new-instance v8, LX/DSe;

    move-object/from16 v58, v8

    move-object/from16 v59, v1

    move-object/from16 v60, v2

    move-object/from16 v61, v0

    move-object/from16 v62, v44

    invoke-direct/range {v58 .. v63}, LX/DSe;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;LX/ZKa;LX/HAU;I)V

    invoke-interface {v3, v8}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_50
    check-cast v8, LX/snk;

    const/16 v33, 0x8

    invoke-static {v3, v0, v8}, LX/2GJ;->A06(LX/iAM;Ljava/lang/Object;LX/snk;)V

    invoke-interface {v3, v0}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v8

    if-nez v9, :cond_51

    if-ne v8, v4, :cond_52

    :cond_51
    const/16 v74, 0x20

    new-instance v8, LX/DSa;

    move-object/from16 v68, v8

    move-object/from16 v70, v1

    move-object/from16 v71, v2

    move-object/from16 v72, v0

    move-object/from16 v73, v44

    invoke-direct/range {v68 .. v74}, LX/DSa;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;LX/HAU;I)V

    invoke-interface {v3, v8}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_52
    invoke-static {v3, v8, v0}, LX/AsD;->A1Q(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v9, v40

    move-object/from16 v8, v42

    invoke-static {v3, v0, v9, v8}, LX/BQE;->A1Q(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v8

    if-nez v9, :cond_53

    if-ne v8, v4, :cond_54

    :cond_53
    new-instance v8, LX/hxp;

    move-object/from16 v65, v8

    move-object/from16 v66, v40

    move-object/from16 v67, v1

    move-object/from16 v68, v2

    move-object/from16 v70, v42

    move-object/from16 v71, v0

    move-object/from16 v72, v44

    invoke-direct/range {v65 .. v72}, LX/hxp;-><init>(Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/instagram/common/session/UserSession;LX/ZKa;LX/HAU;)V

    move-object v9, v3

    check-cast v9, LX/2EJ;

    invoke-virtual {v9, v8}, LX/2EJ;->A0a(Ljava/lang/Object;)V

    :cond_54
    invoke-static {v3, v10, v8, v11}, LX/AxE;->A0R(LX/iAM;LX/mqj;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LX/DSA;

    iget-object v14, v8, LX/DSA;->A06:LX/kyt;

    invoke-interface {v3, v6}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v8

    if-nez v9, :cond_55

    if-ne v8, v4, :cond_56

    :cond_55
    const/16 v9, 0x10

    new-instance v8, LX/GVE;

    invoke-direct {v8, v1, v2, v6, v9}, LX/GVE;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;I)V

    invoke-interface {v3, v8}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_56
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3, v6}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v12

    if-nez v9, :cond_57

    if-ne v12, v4, :cond_58

    :cond_57
    const/16 v9, 0x19

    invoke-static {v3, v2, v6, v9}, LX/AxE;->A0u(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;I)LX/RE0;

    move-result-object v12

    :cond_58
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v6}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v9

    if-nez v2, :cond_59

    if-ne v9, v4, :cond_5a

    :cond_59
    const/16 v2, 0xf

    new-instance v9, LX/FHB;

    invoke-direct {v9, v6, v2}, LX/FHB;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v9}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_5a
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_5b

    const/16 v2, 0x3d

    invoke-static {v1, v2}, LX/AsD;->A1H(Ljava/lang/Object;I)LX/F89;

    move-result-object v2

    invoke-interface {v3, v2}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_5b
    check-cast v2, LX/snk;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_5c

    const/16 v11, 0x10d

    invoke-static {v3, v1, v11}, LX/AtF;->A17(LX/iAM;Ljava/lang/Object;I)LX/C8t;

    move-result-object v11

    :cond_5c
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_5d

    const/16 v1, 0x10e

    invoke-static {v3, v13, v1}, LX/AtF;->A17(LX/iAM;Ljava/lang/Object;I)LX/C8t;

    move-result-object v1

    :cond_5d
    check-cast v1, Lkotlin/jvm/functions/Function0;

    const v75, 0x36d80040

    const/16 p3, 0x1

    move-object/from16 v65, v3

    move-object/from16 v66, v42

    move-object/from16 v67, v14

    move-object/from16 v68, v0

    move-object/from16 v69, v8

    move-object/from16 v70, v11

    move-object/from16 v71, v1

    move-object/from16 v72, v12

    move-object/from16 v73, v9

    move-object/from16 v74, v2

    move/from16 v76, v7

    move/from16 v77, v45

    invoke-static/range {v65 .. v77}, LX/Vc2;->A00(LX/iAM;Lcom/instagram/common/session/UserSession;LX/kyt;LX/ZKa;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;LX/snk;IIZ)V

    sget-object v51, LX/2HD;->A03:LX/Ahi;

    move-object/from16 v0, v51

    invoke-static {v3, v0}, LX/AsI;->A16(LX/iAM;LX/AhQ;)LX/LjO;

    move-result-object v37

    invoke-static {v3}, LX/FnT;->A06(LX/iAM;)LX/FnY;

    move-result-object v1

    move-object/from16 v0, v37

    invoke-virtual {v1, v0}, LX/FnY;->BWi(LX/LjO;)I

    move-result v2

    invoke-static {v3}, LX/FnT;->A02(LX/iAM;)LX/FnV;

    move-result-object v1

    invoke-virtual {v1, v0}, LX/FnV;->BWi(LX/LjO;)I

    move-result v56

    if-gtz v2, :cond_5e

    const/16 p3, 0x0

    :cond_5e
    sget-object v1, LX/AR3;->A01:LX/lit;

    const/16 v0, 0x12c

    invoke-static {v1, v0, v7}, LX/AsD;->A0a(LX/lit;II)LX/AR5;

    move-result-object v8

    const/16 v1, 0x180

    move/from16 v0, v33

    invoke-static {v8, v3, v2, v1, v0}, LX/HZp;->A05(LX/lis;LX/iAM;III)LX/mqj;

    move-result-object v59

    invoke-static {v3}, LX/FnT;->A01(LX/iAM;)LX/FnV;

    move-result-object v1

    move-object/from16 v0, v37

    invoke-static {v3, v1, v0}, LX/B7f;->A1V(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v63

    if-nez v0, :cond_5f

    move-object/from16 v0, v63

    if-ne v0, v4, :cond_60

    :cond_5f
    const/16 v8, 0x10

    new-instance v2, LX/RVq;

    move-object/from16 v0, v37

    invoke-direct {v2, v8, v0, v1}, LX/RVq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3, v2}, LX/AwG;->A0S(LX/iAM;Lkotlin/jvm/functions/Function0;)LX/2gH;

    move-result-object v63

    :cond_60
    check-cast v63, LX/mqj;

    sget-object v38, LX/3Yb;->A00:LX/2hw;

    sget-object v34, LX/2KM;->A01:LX/2KN;

    sget-object v1, LX/G9v;->A00:LX/G9v;

    move-object/from16 v0, v34

    invoke-interface {v0, v1}, LX/3Yb;->HQx(LX/3Yb;)LX/3Yb;

    move-result-object v0

    invoke-static {v7}, LX/AtD;->A0y(Z)LX/lpy;

    move-result-object v9

    invoke-static {v3}, LX/2Ku;->A01(LX/iAM;)J

    move-result-wide v1

    const/16 v53, 0x20

    invoke-static {v1, v2}, LX/AsD;->A0P(J)I

    move-result v8

    invoke-static/range {v30 .. v30}, LX/2EJ;->A04(LX/2EJ;)LX/IaH;

    move-result-object v2

    invoke-static {v3, v0}, LX/2Kv;->A01(LX/iAM;LX/3Yb;)LX/3Yb;

    move-result-object v11

    sget-object v62, LX/2LB;->A00:Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, v30

    iget-object v0, v0, LX/2EJ;->A0W:LX/FdL;

    if-nez v0, :cond_71

    invoke-static {}, LX/2Ku;->A03()V

    invoke-static {}, LX/002;->createAndThrow()LX/002;

    move-result-object v0

    throw v0

    :cond_61
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_62
    const v0, -0x4df38ff8

    invoke-static {v3, v0, v7}, LX/AwG;->A0T(LX/iAM;IZ)LX/2EJ;

    move-result-object v30

    goto/16 :goto_7

    :cond_63
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_64
    if-eqz v14, :cond_65

    const/16 v31, 0x0

    :cond_65
    if-eqz v13, :cond_66

    const/16 v50, 0x0

    :cond_66
    if-eqz v12, :cond_67

    const/16 v32, 0x0

    :cond_67
    if-eqz v11, :cond_68

    const/16 v48, 0x1

    :cond_68
    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_69

    const v0, -0x1c00001

    and-int/2addr v5, v0

    move/from16 v47, v48

    :cond_69
    if-eqz v6, :cond_6a

    const/16 v46, 0x0

    :cond_6a
    if-eqz v4, :cond_6b

    const/16 v49, 0x0

    :cond_6b
    const/16 v101, 0x0

    if-nez v2, :cond_11

    goto/16 :goto_4

    :cond_6c
    and-int/lit8 v0, p10, 0x6

    if-nez v0, :cond_6d

    invoke-static {v3, v8}, LX/BPg;->A0g(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int v10, p10, v0

    goto/16 :goto_3

    :cond_6d
    move/from16 v10, p5

    goto/16 :goto_3

    :cond_6e
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x6000

    if-nez v0, :cond_3

    move-object/from16 v0, v50

    invoke-static {v3, v0}, LX/BPg;->A0a(LX/iAM;Ljava/lang/Object;)I

    move-result v0

    or-int/2addr v5, v0

    goto/16 :goto_2

    :cond_6f
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xc00

    if-nez v0, :cond_2

    move/from16 v0, v31

    invoke-static {v3, v0}, LX/BPg;->A0t(LX/iAM;Z)I

    move-result v0

    or-int/2addr v5, v0

    goto/16 :goto_1

    :cond_70
    move/from16 v5, v16

    goto/16 :goto_0

    :cond_71
    move-object/from16 v1, v30

    move-object/from16 v0, v62

    invoke-static {v3, v1, v0}, LX/BQD;->A0g(LX/iAM;LX/2EJ;Lkotlin/jvm/functions/Function0;)V

    sget-object v13, LX/2LB;->A04:LX/snk;

    invoke-static {v3, v9, v13}, LX/AsD;->A1A(LX/iAM;Ljava/lang/Object;LX/snk;)LX/snk;

    move-result-object v9

    invoke-static {v3, v2, v9, v8}, LX/BQD;->A0d(LX/iAM;Ljava/lang/Object;LX/snk;I)LX/snk;

    move-result-object v61

    sget-object v8, LX/2LB;->A02:Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v11, v8}, LX/AxE;->A0U(LX/iAM;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)LX/snk;

    move-result-object v60

    sget-object v58, LX/2LG;->A00:LX/2LG;

    sget-object v11, LX/2KY;->A00:LX/ljy;

    move-object/from16 v0, v39

    invoke-interface {v3, v0}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_72

    if-ne v2, v4, :cond_73

    :cond_72
    const/16 v1, 0x14

    new-instance v2, LX/alQ;

    move-object/from16 v0, v39

    invoke-direct {v2, v0, v1}, LX/alQ;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v2}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_73
    move-object/from16 v1, v38

    move-object/from16 v0, v43

    invoke-static {v1, v2, v0}, LX/AtD;->A0s(LX/3Yb;Ljava/lang/Object;Ljava/lang/Object;)LX/3Yb;

    move-result-object v0

    sget-object v2, LX/2LJ;->A07:LX/lmu;

    const/16 v43, 0x30

    move/from16 v1, v43

    invoke-static {v2, v3, v11, v1}, LX/2LN;->A03(LX/lmu;LX/iAM;LX/ljy;I)LX/lpy;

    move-result-object v14

    invoke-static {v3}, LX/AxE;->A03(LX/iAM;)I

    move-result v12

    invoke-static/range {v30 .. v30}, LX/2EJ;->A04(LX/2EJ;)LX/IaH;

    move-result-object v11

    invoke-static {v3, v0}, LX/2Kv;->A01(LX/iAM;LX/3Yb;)LX/3Yb;

    move-result-object v2

    move-object/from16 v1, v30

    move-object/from16 v0, v62

    invoke-static {v3, v1, v0}, LX/BQD;->A0g(LX/iAM;LX/2EJ;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v3, v14, v13}, LX/2LE;->A01(LX/iAM;Ljava/lang/Object;LX/snk;)V

    invoke-static {v3, v11, v9}, LX/2LE;->A01(LX/iAM;Ljava/lang/Object;LX/snk;)V

    move-object/from16 v0, v61

    invoke-static {v3, v8, v0, v12}, LX/BO9;->A13(LX/iAM;Lkotlin/jvm/functions/Function1;LX/snk;I)V

    move-object/from16 v0, v60

    invoke-static {v3, v2, v0}, LX/AsD;->A0c(LX/iAM;Ljava/lang/Object;LX/snk;)LX/2LZ;

    move-result-object v9

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_74

    move-object/from16 v0, v40

    invoke-static {v0, v7}, LX/5B5;->A0U(Ljava/lang/Object;I)V

    invoke-static/range {v40 .. v40}, LX/0E2;->A0G(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static/range {v40 .. v40}, LX/254;->A06(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, LX/AtE;->A0r(LX/iAM;I)Ljava/lang/Integer;

    move-result-object v0

    :cond_74
    invoke-static {v0}, LX/011;->A03(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v3}, LX/2LH;->A03(LX/iAM;)F

    move-result v0

    invoke-static {v3, v0}, LX/IdX;->A00(LX/iAM;F)F

    move-result p0

    invoke-static {v3, v4}, LX/BQE;->A0Z(LX/iAM;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX/2Sw;

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-boolean v0, v0, LX/DSA;->A0P:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v3, v10, v2}, LX/B7f;->A1U(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_75

    if-ne v1, v4, :cond_76

    :cond_75
    new-instance v1, LX/aJq;

    move-object/from16 v0, v44

    invoke-direct {v1, v2, v10, v0}, LX/aJq;-><init>(LX/2Sw;LX/mqj;LX/HAU;)V

    move-object v0, v3

    check-cast v0, LX/2EJ;

    invoke-virtual {v0, v1}, LX/2EJ;->A0a(Ljava/lang/Object;)V

    :cond_76
    invoke-static {v3, v1, v8}, LX/AsD;->A1Q(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v8, LX/2KM;->A02:LX/2KN;

    const/high16 v40, 0x3f800000    # 1.0f

    move/from16 v1, v40

    move/from16 v0, v45

    invoke-virtual {v9, v8, v1, v0}, LX/2LZ;->Hb4(LX/3Yb;FZ)LX/3Yb;

    move-result-object v0

    invoke-static {v0}, LX/2MZ;->A00(LX/3Yb;)LX/3Yb;

    move-result-object v1

    invoke-interface {v3, v2}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v9, :cond_77

    if-ne v0, v4, :cond_78

    :cond_77
    const/16 v0, 0x6b

    invoke-static {v3, v2, v0}, LX/B7f;->A0x(LX/iAM;Ljava/lang/Object;I)LX/C1W;

    move-result-object v0

    :cond_78
    invoke-static {v1, v0}, LX/AsI;->A0m(LX/3Yb;Ljava/lang/Object;)LX/3Yb;

    move-result-object v1

    new-instance v0, LX/fkl;

    move-object/from16 v88, v0

    move-object/from16 v89, v22

    move-object/from16 v90, v27

    move-object/from16 v91, v17

    move-object/from16 v92, v26

    move-object/from16 v93, v64

    move-object/from16 v94, v54

    move-object/from16 v95, v59

    move-object/from16 v96, v10

    move-object/from16 v97, v63

    move-object/from16 v98, v42

    move-object/from16 v99, v6

    move-object/from16 v100, v35

    move/from16 p2, v87

    move/from16 p4, v52

    invoke-direct/range {v88 .. v106}, LX/fkl;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;LX/mqj;LX/mqj;LX/mqj;Lcom/instagram/common/session/UserSession;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/0kU;LX/Ul7;FIZZZ)V

    const v2, 0x6e2ec88

    invoke-static {v3, v0, v2}, LX/2DF;->A00(LX/iAM;Ljava/lang/Object;I)LX/2DG;

    move-result-object v0

    invoke-static {v3, v1, v0}, LX/C5V;->A02(LX/iAM;LX/3Yb;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-boolean v0, v0, LX/DSA;->A0U:Z

    if-eqz v0, :cond_a5

    const v0, -0x49b4a6f5

    invoke-interface {v3, v0}, LX/iAM;->HO8(I)V

    const v0, 0x7f135149

    invoke-static {v3, v0}, LX/5OW;->A02(LX/iAM;I)Ljava/lang/String;

    move-result-object v1

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v8, v0}, LX/BPF;->A0P(LX/3Yb;F)LX/3Yb;

    move-result-object v0

    invoke-static {v3, v0, v1}, LX/BQE;->A0l(LX/iAM;LX/3Yb;Ljava/lang/String;)V

    :goto_8
    move-object/from16 v0, v30

    invoke-static {v0, v10, v7}, LX/AtE;->A0y(LX/2EJ;LX/mqj;Z)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, LX/DSA;

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v69

    check-cast v69, LX/kyb;

    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v66

    check-cast v66, LX/k4m;

    invoke-static/range {v26 .. v26}, Landroidx/compose/runtime/MutableState;->A01(Landroidx/compose/runtime/MutableState;)Z

    move-result v86

    invoke-static/range {v22 .. v22}, Landroidx/compose/runtime/MutableState;->A01(Landroidx/compose/runtime/MutableState;)Z

    move-result v88

    invoke-static/range {v55 .. v55}, Landroidx/compose/runtime/MutableState;->A01(Landroidx/compose/runtime/MutableState;)Z

    move-result v92

    invoke-static/range {v57 .. v57}, Landroidx/compose/runtime/MutableState;->A01(Landroidx/compose/runtime/MutableState;)Z

    move-result v93

    invoke-static/range {v54 .. v54}, Landroidx/compose/runtime/MutableState;->A01(Landroidx/compose/runtime/MutableState;)Z

    move-result v94

    invoke-static/range {v25 .. v25}, Landroidx/compose/runtime/MutableState;->A01(Landroidx/compose/runtime/MutableState;)Z

    move-result v90

    invoke-static/range {v23 .. v23}, Landroidx/compose/runtime/MutableState;->A01(Landroidx/compose/runtime/MutableState;)Z

    move-result v91

    invoke-interface/range {v20 .. v20}, LX/iAz;->C9O()F

    move-result v81

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-boolean v0, v0, LX/DSA;->A0R:Z

    if-eqz v0, :cond_a4

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-boolean v1, v0, LX/DSA;->A0D:Z

    if-eqz v1, :cond_a4

    iget-boolean v0, v0, LX/DSA;->A0M:Z

    if-nez v0, :cond_a4

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-object v0, v0, LX/DSA;->A04:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    :goto_9
    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    if-ne v0, v4, :cond_79

    const/16 v1, 0x113

    move-object/from16 v0, v22

    invoke-static {v3, v0, v1}, LX/AtF;->A17(LX/iAM;Ljava/lang/Object;I)LX/C8t;

    move-result-object v27

    :cond_79
    check-cast v27, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_7a

    const/16 v1, 0x114

    move-object/from16 v0, v22

    invoke-static {v3, v0, v1}, LX/AtF;->A17(LX/iAM;Ljava/lang/Object;I)LX/C8t;

    move-result-object v26

    :cond_7a
    check-cast v26, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3, v15}, LX/iAM;->AZc(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v14

    if-nez v0, :cond_7b

    if-ne v14, v4, :cond_7c

    :cond_7b
    const/16 v1, 0x53

    move-object/from16 v0, v23

    invoke-static {v3, v0, v15, v1}, LX/AwG;->A16(LX/iAM;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;I)LX/D8D;

    move-result-object v14

    :cond_7c
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v4, :cond_7d

    const/16 v1, 0x115

    move-object/from16 v0, v25

    invoke-static {v3, v0, v1}, LX/AtF;->A17(LX/iAM;Ljava/lang/Object;I)LX/C8t;

    move-result-object v13

    :cond_7d
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v4, :cond_7e

    const/16 v1, 0x116

    move-object/from16 v0, v23

    invoke-static {v3, v0, v1}, LX/AtF;->A17(LX/iAM;Ljava/lang/Object;I)LX/C8t;

    move-result-object v12

    :cond_7e
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3, v15}, LX/iAM;->AZc(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v11

    if-nez v0, :cond_7f

    if-ne v11, v4, :cond_80

    :cond_7f
    const/16 v1, 0x54

    move-object/from16 v0, v23

    invoke-static {v3, v0, v15, v1}, LX/AxE;->A0s(LX/iAM;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;I)LX/D8D;

    move-result-object v11

    :cond_80
    check-cast v11, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p14

    invoke-interface {v3, v0}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v8

    if-nez v0, :cond_81

    if-ne v8, v4, :cond_82

    :cond_81
    new-instance v8, LX/pxj;

    move-object/from16 v2, v36

    move/from16 v1, v45

    move-object/from16 v0, p14

    invoke-direct {v8, v1, v2, v0}, LX/pxj;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v8}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_82
    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, v42

    move-object/from16 v0, p14

    invoke-static {v3, v1, v0}, LX/BO9;->A1V(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v9

    if-nez v0, :cond_83

    if-ne v9, v4, :cond_84

    :cond_83
    const/16 v9, 0x11

    move-object/from16 v2, v28

    move-object/from16 v0, p14

    invoke-static {v3, v2, v1, v0, v9}, LX/B55;->A1D(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)LX/GVE;

    move-result-object v9

    :cond_84
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_85

    const/16 v1, 0x6a

    move-object/from16 v0, v20

    invoke-static {v3, v0, v1}, LX/AtF;->A15(LX/iAM;Ljava/lang/Object;I)LX/C1W;

    move-result-object v2

    :cond_85
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v6}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_86

    if-ne v1, v4, :cond_87

    :cond_86
    const/16 v0, 0xf

    new-instance v1, LX/G36;

    invoke-direct {v1, v6, v0}, LX/G36;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v1}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_87
    check-cast v1, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v5, v5, 0x6

    and-int/lit8 v0, v5, 0xe

    const v15, 0x30c00

    invoke-static {v0, v15, v5}, LX/AsD;->A0M(III)I

    move-result v83

    const/16 v84, 0x6000

    const/high16 v82, 0xd80000

    move-object/from16 v64, v35

    move-object/from16 v68, v6

    move-object/from16 v70, v27

    move-object/from16 v71, v26

    move-object/from16 v72, v14

    move-object/from16 v73, v13

    move-object/from16 v74, v12

    move-object/from16 v75, v11

    move-object/from16 v76, v8

    move-object/from16 v77, v9

    move-object/from16 v78, v1

    move-object/from16 v79, v2

    move-object/from16 v80, p12

    move/from16 v85, v7

    move/from16 v89, v31

    invoke-static/range {v64 .. v94}, LX/XcZ;->A01(Landroid/graphics/Bitmap;LX/iAM;LX/k4m;LX/DSA;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/kyb;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;LX/1nm;FIIIIZZZZZZZZZ)V

    move-object/from16 v1, v30

    move/from16 v0, v45

    invoke-static {v1, v10, v0}, LX/AtE;->A0y(LX/2EJ;LX/mqj;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/DSA;

    iget-object v1, v0, LX/DSA;->A07:LX/MF6;

    iget-boolean v0, v0, LX/DSA;->A0L:Z

    if-nez v0, :cond_88

    const/4 v1, 0x0

    :cond_88
    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-object v0, v0, LX/DSA;->A0C:Ljava/util/List;

    invoke-static {v3, v1, v0}, LX/B7f;->A1V(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v11

    if-nez v0, :cond_89

    if-ne v11, v4, :cond_8c

    :cond_89
    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-object v5, v0, LX/DSA;->A07:LX/MF6;

    iget-boolean v0, v0, LX/DSA;->A0L:Z

    if-nez v0, :cond_8a

    const/4 v5, 0x0

    :cond_8a
    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-object v2, v0, LX/DSA;->A0C:Ljava/util/List;

    sget-wide v0, LX/XBL;->A00:J

    move/from16 v0, v45

    invoke-static {v2, v0}, LX/5B5;->A0U(Ljava/lang/Object;I)V

    if-eqz v5, :cond_a3

    invoke-static {v5}, LX/Sq2;->A00(LX/MF6;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8b

    instance-of v0, v2, Ljava/util/Collection;

    if-eqz v0, :cond_a1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a1

    :cond_8b
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_a
    invoke-static {v2, v0}, LX/Ata;->A1N(Ljava/lang/Iterable;Ljava/util/Collection;)LX/0gR;

    move-result-object v11

    invoke-interface {v3, v11}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_8c
    check-cast v11, LX/0gR;

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-boolean v0, v0, LX/DSA;->A0K:Z

    if-eqz v0, :cond_a0

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-boolean v0, v0, LX/DSA;->A0J:Z

    if-eqz v0, :cond_a0

    invoke-static/range {v63 .. v63}, LX/BO9;->A1b(LX/mqj;)Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a0

    const v0, 0x262a8faa

    invoke-static {v3, v10, v0}, LX/AtE;->A0w(LX/iAM;LX/mqj;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/DSA;

    iget-object v14, v0, LX/DSA;->A0A:Ljava/lang/String;

    iget-boolean v0, v0, LX/DSA;->A0L:Z

    if-nez v0, :cond_8d

    const/4 v14, 0x0

    :cond_8d
    invoke-interface {v3, v6}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v9

    if-nez v0, :cond_8e

    if-ne v9, v4, :cond_8f

    :cond_8e
    move/from16 v0, v33

    invoke-static {v3, v6, v0}, LX/AxE;->A1C(LX/iAM;Ljava/lang/Object;I)LX/E2w;

    move-result-object v9

    :cond_8f
    check-cast v9, LX/Lmt;

    invoke-interface {v3, v6}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v8

    if-nez v0, :cond_90

    if-ne v8, v4, :cond_91

    :cond_90
    const/16 v0, 0x9

    invoke-static {v3, v6, v0}, LX/AxE;->A1C(LX/iAM;Ljava/lang/Object;I)LX/E2w;

    move-result-object v8

    :cond_91
    check-cast v8, LX/Lmt;

    invoke-interface {v3, v6}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_92

    if-ne v5, v4, :cond_93

    :cond_92
    const/16 v0, 0xa

    invoke-static {v3, v6, v0}, LX/AxE;->A1C(LX/iAM;Ljava/lang/Object;I)LX/E2w;

    move-result-object v5

    :cond_93
    check-cast v5, LX/Lmt;

    move-object/from16 v1, v58

    move-object/from16 v0, v38

    invoke-static {v1, v0}, LX/AsI;->A0T(LX/2LG;LX/3Yb;)LX/3Yb;

    move-result-object v13

    move/from16 v1, v56

    move-object/from16 v0, v59

    invoke-static {v3, v0, v1}, LX/BO9;->A1S(LX/iAM;Ljava/lang/Object;I)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_94

    if-ne v2, v4, :cond_95

    :cond_94
    const/16 v12, 0x16

    new-instance v2, LX/D4c;

    move-object/from16 v0, v59

    invoke-direct {v2, v0, v1, v12}, LX/D4c;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v3, v2}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_95
    invoke-static {v13, v2}, LX/AsI;->A0j(LX/3Yb;Ljava/lang/Object;)LX/3Yb;

    move-result-object v0

    invoke-static {v0}, LX/2La;->A0P(LX/3Yb;)LX/3Yb;

    move-result-object v60

    check-cast v9, Lkotlin/jvm/functions/Function0;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, v39

    invoke-static {v3, v6, v0}, LX/BO9;->A1V(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_96

    if-ne v2, v4, :cond_97

    :cond_96
    new-instance v2, LX/aez;

    move-object/from16 v1, v39

    move/from16 v0, v41

    invoke-direct {v2, v0, v1, v6}, LX/aez;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v2}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_97
    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object/from16 v59, v3

    move-object/from16 v61, v14

    move-object/from16 v62, v9

    move-object/from16 v63, v8

    move-object/from16 v64, v5

    move-object/from16 v65, v2

    move-object/from16 v66, v11

    move/from16 v67, v7

    move/from16 v68, v7

    invoke-static/range {v59 .. v68}, LX/XBL;->A03(LX/iAM;LX/3Yb;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;LX/0gR;II)V

    :goto_b
    move-object/from16 v0, v30

    invoke-static {v0, v10, v7}, LX/AtE;->A0y(LX/2EJ;LX/mqj;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, LX/2OI;->A00(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, LX/2OI;->A00(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget-boolean v1, v0, LX/DSA;->A0O:Z

    invoke-static {v3, v2, v5}, LX/B7f;->A1V(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v8, :cond_98

    if-ne v0, v4, :cond_99

    :cond_98
    const/16 v0, 0x23

    invoke-static {v3, v2, v5, v0}, LX/AxE;->A0t(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;I)LX/QT1;

    move-result-object v0

    :cond_99
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v0, v7, v7, v1}, LX/Soh;->A00(LX/iAM;Lkotlin/jvm/functions/Function0;IIZ)V

    move-object/from16 v1, v58

    move-object/from16 v0, v38

    invoke-static {v1, v0}, LX/AsI;->A0T(LX/2LG;LX/3Yb;)LX/3Yb;

    move-result-object v0

    const/4 v11, 0x0

    invoke-static {v0}, LX/2La;->A0P(LX/3Yb;)LX/3Yb;

    move-result-object p7

    move-object/from16 p6, v3

    move-object/from16 p8, v18

    move-object/from16 p9, v44

    move/from16 p10, v33

    invoke-static/range {p6 .. p11}, LX/SCF;->A00(LX/iAM;LX/3Yb;Lcom/instagram/compose/ui/snackbar/SnackbarHostState;Lkotlin/jvm/functions/Function3;II)V

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v4, :cond_9a

    sget-object v0, LX/2kD;->A04:LX/2kD;

    invoke-static {v3, v0}, LX/BQD;->A0B(LX/iAM;Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v12

    :cond_9a
    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_9b

    const-string v1, "com.instagram.quicksnap.camera.ui.rememberBackToSchoolCreationConfigurator (BackToSchoolCreationParticles.kt:45)"

    const v0, -0x4e26d3cc

    invoke-static {v1, v0}, LX/2GI;->A01(Ljava/lang/String;I)V

    :cond_9b
    move-object/from16 v0, v51

    invoke-static {v3, v0}, LX/AsI;->A16(LX/iAM;LX/AhQ;)LX/LjO;

    move-result-object v8

    invoke-interface {v3, v8}, LX/iAM;->AZc(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_9c

    if-ne v0, v4, :cond_9d

    :cond_9c
    const/high16 v0, -0x3ce00000    # -160.0f

    invoke-static {v8, v0}, LX/AsD;->A00(LX/LjO;F)F

    move-result v1

    const/high16 v0, -0x3c740000    # -280.0f

    invoke-static {v8, v0}, LX/AsD;->A00(LX/LjO;F)F

    move-result v0

    invoke-static {v1}, LX/AsD;->A0R(F)J

    move-result-wide v17

    invoke-static {v0}, LX/AsD;->A0R(F)J

    move-result-wide v0

    shl-long v17, v17, v53

    const-wide v13, 0xffffffffL

    and-long/2addr v0, v13

    or-long v0, v0, v17

    const/high16 v2, 0x43200000    # 160.0f

    invoke-static {v8, v2}, LX/AsD;->A00(LX/LjO;F)F

    move-result v5

    const/high16 v2, -0x3c4c0000    # -360.0f

    invoke-static {v8, v2}, LX/AsD;->A00(LX/LjO;F)F

    move-result v2

    invoke-static {v5, v2}, LX/BQE;->A08(FF)J

    move-result-wide v14

    const/high16 v2, -0x3de00000    # -40.0f

    invoke-static {v8, v2}, LX/AsD;->A00(LX/LjO;F)F

    move-result v5

    const/high16 v2, -0x3d600000    # -80.0f

    invoke-static {v8, v2}, LX/AsD;->A00(LX/LjO;F)F

    move-result v2

    invoke-static {v5, v2}, LX/AsD;->A1J(FF)LX/2TM;

    move-result-object v20

    const/high16 v5, 0x40200000    # 2.5f

    const/high16 v2, 0x40600000    # 3.5f

    invoke-static {v5, v2}, LX/AsD;->A1J(FF)LX/2TM;

    move-result-object v18

    const v2, 0x3e4ccccd    # 0.2f

    new-instance v9, LX/2TM;

    invoke-direct {v9, v2, v2}, LX/2TM;-><init>(FF)V

    const/high16 v5, 0x3f000000    # 0.5f

    move/from16 v2, v40

    invoke-static {v5, v2}, LX/AsD;->A1J(FF)LX/2TM;

    move-result-object v17

    const v2, 0x3f19999a    # 0.6f

    new-instance v8, LX/2TM;

    invoke-direct {v8, v2, v2}, LX/2TM;-><init>(FF)V

    new-instance v5, LX/2TM;

    move/from16 v13, v40

    invoke-direct {v5, v13, v13}, LX/2TM;-><init>(FF)V

    new-instance v13, LX/2TM;

    invoke-direct {v13, v11, v11}, LX/2TM;-><init>(FF)V

    const/high16 v11, -0x3cf00000    # -144.0f

    const/high16 v2, 0x43100000    # 144.0f

    invoke-static {v11, v2}, LX/AsD;->A1J(FF)LX/2TM;

    move-result-object v11

    move-object/from16 v2, v20

    invoke-static {v2, v0, v1, v14, v15}, LX/BPF;->A0e(LX/4ts;JJ)Lcom/instagram/compose/ui/emitter/ParticleConfigurator;

    move-result-object v0

    iput-object v9, v0, Lcom/instagram/compose/ui/emitter/ParticleConfigurator;->A09:LX/4ts;

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8, v5, v13}, LX/AwG;->A1W(Lcom/instagram/compose/ui/emitter/ParticleConfigurator;LX/4ts;LX/4ts;LX/4ts;LX/4ts;)V

    move-object/from16 v1, v18

    invoke-static {v3, v0, v11, v1, v7}, LX/BPF;->A0w(LX/iAM;Lcom/instagram/compose/ui/emitter/ParticleConfigurator;LX/4ts;LX/4ts;Z)V

    :cond_9d
    check-cast v0, Lcom/instagram/compose/ui/emitter/ParticleConfigurator;

    invoke-static {}, LX/2GI;->A02()Z

    move-result v1

    if-eqz v1, :cond_9e

    const v1, -0x39c61bb3

    invoke-static {v1}, LX/2GI;->A00(I)V

    :cond_9e
    invoke-static {v3, v0, v7, v7}, LX/SBl;->A00(LX/iAM;Lcom/instagram/compose/ui/emitter/ParticleConfigurator;II)Lcom/instagram/compose/ui/emitter/AnimatedParticleEffectState;

    move-result-object v8

    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_9f

    const-string v1, "com.instagram.quicksnap.camera.ui.rememberBackToSchoolCreationParticleTypes (BackToSchoolCreationParticles.kt:86)"

    const v0, 0xb794c42

    invoke-static {v1, v0}, LX/2GI;->A01(Ljava/lang/String;I)V

    :cond_9f
    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_a7

    sget-object v0, LX/iJ9;->A00:Ljava/util/List;

    invoke-static {v0}, LX/011;->A0c(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-static {v2}, LX/020;->A0J(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/instagram/compose/ui/emitter/ParticleType$Emoji;

    invoke-direct {v0, v1}, Lcom/instagram/compose/ui/emitter/ParticleType$Emoji;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_a0
    const v0, 0x22cdfdce

    invoke-interface {v3, v0}, LX/iAM;->HO8(I)V

    goto/16 :goto_b

    :cond_a1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/MF6;

    invoke-static {v0}, LX/Sq2;->A00(LX/MF6;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    :cond_a3
    sget-object v0, LX/56z;->A00:LX/56z;

    goto/16 :goto_a

    :cond_a4
    const/16 v35, 0x0

    goto/16 :goto_9

    :cond_a5
    const v0, -0x4ce0381c

    invoke-interface {v3, v0}, LX/iAM;->HO8(I)V

    goto/16 :goto_8

    :cond_a6
    invoke-interface {v3, v5}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_a7
    invoke-static {}, LX/2GI;->A02()Z

    move-result v0

    if-eqz v0, :cond_a8

    const v0, -0x2dfd62eb

    invoke-static {v0}, LX/2GI;->A00(I)V

    :cond_a8
    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_a9

    const/16 v0, 0x1a

    invoke-static {v3, v12, v0}, LX/Ata;->A1F(LX/iAM;Ljava/lang/Object;I)LX/C2T;

    move-result-object v1

    :cond_a9
    move-object/from16 v0, v34

    invoke-static {v0, v1}, LX/AsI;->A0h(LX/3Yb;Ljava/lang/Object;)LX/3Yb;

    move-result-object v1

    move/from16 v0, v43

    invoke-static {v3, v1, v8, v0, v7}, LX/SBj;->A00(LX/iAM;LX/3Yb;Lcom/instagram/compose/ui/emitter/AnimatedParticleEffectState;II)V

    invoke-static {v10}, LX/AsI;->A1F(LX/mqj;)LX/DSA;

    move-result-object v0

    iget v0, v0, LX/DSA;->A00:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v10}, LX/iAM;->AZc(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v0, v37

    invoke-static {v3, v0, v5, v8, v1}, LX/BQE;->A1U(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v1

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_aa

    if-ne v0, v4, :cond_ab

    :cond_aa
    new-instance v0, LX/DPd;

    move-object/from16 v51, v0

    move-object/from16 v52, v12

    move-object/from16 v53, v10

    move-object/from16 v54, v37

    move-object/from16 v55, v8

    move-object/from16 v56, v5

    move-object/from16 v57, v44

    move/from16 v58, v41

    invoke-direct/range {v51 .. v58}, LX/DPd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;LX/HAU;I)V

    invoke-interface {v3, v0}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_ab
    invoke-static {v3, v0, v2}, LX/AsD;->A1Q(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v2, v30

    move-object/from16 v1, v21

    move/from16 v0, v45

    invoke-static {v2, v1, v0}, LX/BPg;->A1Z(LX/2EJ;Landroidx/compose/runtime/MutableState;Z)Z

    move-result v0

    if-eqz v0, :cond_c0

    const v0, -0x4a5e0328

    invoke-interface {v3, v0}, LX/iAM;->HO8(I)V

    invoke-static/range {v42 .. v42}, LX/8vI;->A02(Lcom/instagram/common/session/UserSession;)LX/8vI;

    move-result-object v8

    invoke-static/range {v19 .. v19}, Landroidx/compose/runtime/MutableState;->A01(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    const v0, 0x7f134593

    if-eqz v1, :cond_ac

    const v0, 0x7f134590

    :cond_ac
    invoke-static {v3, v0}, LX/5OW;->A02(LX/iAM;I)Ljava/lang/String;

    move-result-object v54

    const v0, 0x7f134591

    if-eqz v1, :cond_ad

    const v0, 0x7f13458f

    :cond_ad
    invoke-static {v3, v0}, LX/5OW;->A02(LX/iAM;I)Ljava/lang/String;

    move-result-object v55

    invoke-interface {v3, v8}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_ae

    if-ne v1, v4, :cond_af

    :cond_ae
    const/16 v0, 0x17

    new-instance v1, LX/lwE;

    invoke-direct {v1, v8, v0}, LX/lwE;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v1}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_af
    move-object/from16 v0, v38

    invoke-static {v0, v1}, LX/AtD;->A0r(LX/3Yb;Ljava/lang/Object;)LX/3Yb;

    move-result-object v52

    invoke-interface {v3, v8}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_b0

    if-ne v5, v4, :cond_b1

    :cond_b0
    const/16 v0, 0x47

    new-instance v5, LX/F8G;

    move-object/from16 v1, v21

    invoke-direct {v5, v1, v8, v0}, LX/F8G;-><init>(Landroidx/compose/runtime/MutableState;LX/8vI;I)V

    invoke-interface {v3, v5}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_b1
    check-cast v5, Lkotlin/jvm/functions/Function0;

    const v0, 0x7f134594

    invoke-static {v3, v0}, LX/5OW;->A02(LX/iAM;I)Ljava/lang/String;

    move-result-object v56

    invoke-interface {v3, v8}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_b2

    if-ne v2, v4, :cond_b3

    :cond_b2
    const/16 v0, 0x48

    new-instance v2, LX/F8G;

    move-object/from16 v1, v21

    invoke-direct {v2, v1, v8, v0}, LX/F8G;-><init>(Landroidx/compose/runtime/MutableState;LX/8vI;I)V

    invoke-interface {v3, v2}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_b3
    check-cast v2, Lkotlin/jvm/functions/Function0;

    const v0, 0x7f134592

    invoke-static {v3, v0}, LX/5OW;->A02(LX/iAM;I)Ljava/lang/String;

    move-result-object v57

    invoke-interface {v3, v8}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_b4

    if-ne v1, v4, :cond_b5

    :cond_b4
    const/16 v9, 0x49

    new-instance v1, LX/F8G;

    move-object/from16 v0, v21

    invoke-direct {v1, v0, v8, v9}, LX/F8G;-><init>(Landroidx/compose/runtime/MutableState;LX/8vI;I)V

    invoke-interface {v3, v1}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_b5
    check-cast v1, Lkotlin/jvm/functions/Function0;

    const v63, 0xfc90

    move-object/from16 v51, v3

    move-object/from16 v53, v44

    move-object/from16 v58, v5

    move-object/from16 v59, v2

    move-object/from16 v60, v1

    move/from16 v61, v7

    move/from16 v62, v7

    invoke-static/range {v51 .. v63}, LX/VGh;->A01(LX/iAM;LX/3Yb;LX/gfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;III)V

    move-object/from16 v0, v30

    invoke-static {v0, v7}, LX/2EJ;->A0Q(LX/2EJ;Z)V

    const v0, -0x4df38ff8

    :goto_d
    invoke-static/range {v29 .. v29}, Landroidx/compose/runtime/MutableState;->A01(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    if-eqz v1, :cond_bf

    const v0, -0x4a470318

    invoke-interface {v3, v0}, LX/iAM;->HO8(I)V

    invoke-static/range {v42 .. v42}, LX/8vI;->A02(Lcom/instagram/common/session/UserSession;)LX/8vI;

    move-result-object v5

    const v0, 0x7f136622

    invoke-static {v3, v0}, LX/5OW;->A02(LX/iAM;I)Ljava/lang/String;

    move-result-object v54

    const v0, 0x7f136620

    invoke-static {v3, v0}, LX/5OW;->A02(LX/iAM;I)Ljava/lang/String;

    move-result-object v55

    invoke-interface {v3, v5}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_b6

    if-ne v1, v4, :cond_b7

    :cond_b6
    const/16 v0, 0x18

    new-instance v1, LX/lwE;

    invoke-direct {v1, v5, v0}, LX/lwE;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v1}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_b7
    move-object/from16 v0, v38

    invoke-static {v0, v1}, LX/AtD;->A0r(LX/3Yb;Ljava/lang/Object;)LX/3Yb;

    move-result-object v52

    invoke-interface {v3, v5}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_b8

    if-ne v2, v4, :cond_b9

    :cond_b8
    const/16 v0, 0x4a

    new-instance v2, LX/F8G;

    move-object/from16 v1, v29

    invoke-direct {v2, v1, v5, v0}, LX/F8G;-><init>(Landroidx/compose/runtime/MutableState;LX/8vI;I)V

    invoke-interface {v3, v2}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_b9
    check-cast v2, Lkotlin/jvm/functions/Function0;

    const v0, 0x7f136623

    invoke-static {v3, v0}, LX/5OW;->A02(LX/iAM;I)Ljava/lang/String;

    move-result-object v56

    invoke-static {v3, v5, v6}, LX/BO9;->A1V(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_ba

    if-ne v1, v4, :cond_bb

    :cond_ba
    const/16 v0, 0x12

    move-object/from16 v1, v29

    invoke-static {v3, v6, v1, v5, v0}, LX/B55;->A1D(LX/iAM;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)LX/GVE;

    move-result-object v1

    :cond_bb
    check-cast v1, Lkotlin/jvm/functions/Function0;

    const v0, 0x7f136621

    invoke-static {v3, v0}, LX/5OW;->A02(LX/iAM;I)Ljava/lang/String;

    move-result-object v57

    invoke-interface {v3, v5}, LX/iAM;->AZe(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3}, LX/iAM;->GXF()Ljava/lang/Object;

    move-result-object v0

    if-nez v6, :cond_bc

    if-ne v0, v4, :cond_bd

    :cond_bc
    const/16 v6, 0x4b

    new-instance v0, LX/F8G;

    move-object/from16 v4, v29

    invoke-direct {v0, v4, v5, v6}, LX/F8G;-><init>(Landroidx/compose/runtime/MutableState;LX/8vI;I)V

    invoke-interface {v3, v0}, LX/iAM;->HXW(Ljava/lang/Object;)V

    :cond_bd
    check-cast v0, Lkotlin/jvm/functions/Function0;

    const v63, 0xfc90

    move-object/from16 v51, v3

    move-object/from16 v53, v44

    move-object/from16 v58, v2

    move-object/from16 v59, v1

    move-object/from16 v60, v0

    move/from16 v61, v7

    move/from16 v62, v7

    invoke-static/range {v51 .. v63}, LX/VGh;->A01(LX/iAM;LX/3Yb;LX/gfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;III)V

    :goto_e
    move-object/from16 v0, v30

    invoke-static {v0, v7}, LX/AtE;->A1a(LX/2EJ;Z)Z

    move-result v0

    if-eqz v0, :cond_be

    const v0, -0x29df82c2

    invoke-static {v0}, LX/2GI;->A00(I)V

    :cond_be
    move-object/from16 v8, v101

    goto :goto_f

    :cond_bf
    invoke-interface {v3, v0}, LX/iAM;->HO8(I)V

    goto :goto_e

    :cond_c0
    const v0, -0x4df38ff8

    invoke-interface {v3, v0}, LX/iAM;->HO8(I)V

    invoke-static {v2, v7}, LX/2EJ;->A0Q(LX/2EJ;Z)V

    goto/16 :goto_d

    :cond_c1
    invoke-static {}, LX/AtE;->A0q()Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_c2
    invoke-interface {v3}, LX/iAM;->HM3()V

    :goto_f
    invoke-interface {v3}, LX/iAM;->BB4()LX/2GH;

    move-result-object v1

    if-eqz v1, :cond_c3

    new-instance v0, LX/daM;

    move-object/from16 v97, v0

    move-object/from16 v98, p12

    move-object/from16 v99, v46

    move-object/from16 v100, v8

    move-object/from16 v101, v49

    move-object/from16 p0, v50

    move-object/from16 p1, v32

    move-object/from16 p2, p13

    move-object/from16 p3, p14

    move/from16 p4, v16

    move/from16 p6, v24

    move/from16 p7, v45

    move/from16 p8, v47

    move/from16 p9, v48

    move/from16 p10, v31

    invoke-direct/range {v97 .. v112}, LX/daM;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIIIZZZ)V

    iput-object v0, v1, LX/2GH;->A06:LX/snk;

    :cond_c3
    return-void
.end method

.method public static final A0D(LX/k4m;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    if-eqz p0, :cond_0

    iget-object p0, p0, LX/k4m;->A0P:LX/lQG;

    const/16 v1, 0x11

    new-instance v0, LX/b72;

    invoke-direct {v0, v1, p2, p1}, LX/b72;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, LX/lQG;->A0A(LX/MtM;)V

    return-void

    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final A0E(LX/k4m;Z)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    iget-boolean v0, p0, LX/k4m;->A0Y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LX/k4m;->A0P:LX/lQG;

    invoke-virtual {v0}, LX/lQG;->A0F()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LX/k4m;->A02()LX/oSy;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    iget-object v1, v2, LX/oSy;->A04:LX/lQG;

    invoke-virtual {v1}, LX/lQG;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, LX/lQG;->A04()LX/T1V;

    move-result-object v0

    check-cast v0, Lcom/facebook/onecamera/outputcontrollers/camera/basic/BasicCameraOutputController;

    iget-object v0, v0, Lcom/facebook/onecamera/outputcontrollers/camera/basic/BasicCameraOutputController;->A04:LX/42B;

    if-eqz v0, :cond_0

    iget-object v0, v0, LX/42B;->A0V:LX/41v;

    iput-boolean v3, v0, LX/41v;->A06:Z

    iget-object v0, v0, LX/41v;->A00:LX/k2l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, LX/k2l;->A05(Z)V

    :cond_0
    invoke-static {v2}, LX/oSy;->A00(LX/oSy;)V

    :cond_1
    return v3

    :cond_2
    invoke-static {v2}, LX/oSy;->A01(LX/oSy;)V

    return v3
.end method
