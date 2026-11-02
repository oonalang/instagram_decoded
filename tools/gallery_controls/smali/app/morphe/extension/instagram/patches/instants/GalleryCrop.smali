.class public final Lapp/morphe/extension/instagram/patches/instants/GalleryCrop;
.super Ljava/lang/Object;
.source "GalleryCrop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cropContext(Landroid/app/Activity;)Landroid/content/Context;
    .locals 4

    const v3, 0x1030009

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-object v0
.end method

.method public static open(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 13

    const/4 v7, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v6, 0xc

    const/4 v12, 0x1

    const/4 v1, 0x0

    iget v0, p2, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryWidth:I

    if-lez v0, :cond_f

    iget v0, p2, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryHeight:I

    if-gtz v0, :cond_18

    :cond_f
    const-string v0, "Open the QuickSnap camera and choose the photo again."

    invoke-static {v0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->notice(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_17
    return-void

    :cond_18
    invoke-static {p0}, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop;->cropContext(Landroid/app/Activity;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, -0x1000000

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "Drag to position \u00b7 Pinch to zoom"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v2, 0x18

    invoke-virtual {v0, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;

    iget v0, p2, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryWidth:I

    iget v2, p2, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryHeight:I

    invoke-direct {v6, v4, p1, v0, v2}, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;II)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    new-array v8, v0, [Ljava/lang/String;

    const-string v0, "Cancel"

    aput-object v0, v8, v1

    const-string v0, "\u2212"

    aput-object v0, v8, v12

    const/4 v0, 0x2

    const-string v2, "+"

    aput-object v2, v8, v0

    const/4 v0, 0x3

    const-string v2, "Reset"

    aput-object v2, v8, v0

    const/4 v0, 0x4

    const-string v2, "Use photo"

    aput-object v2, v8, v0

    move v0, v1

    :goto_74
    array-length v2, v8

    if-ge v0, v2, :cond_ad

    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    aget-object v2, v8, v0

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-ne v0, v12, :cond_a2

    const-string v2, "Zoom out"

    :goto_85
    invoke-virtual {v9, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_ab

    const v2, 0x3fcccccd    # 1.6f

    :goto_91
    invoke-direct {v10, v1, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;

    invoke-direct {v2, v0, p0, v6, p2}, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;-><init>(ILandroid/app/Activity;Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    :cond_a2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_a8

    const-string v2, "Zoom in"

    goto :goto_85

    :cond_a8
    aget-object v2, v8, v0

    goto :goto_85

    :cond_ab
    move v2, v3

    goto :goto_91

    :cond_ad
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_17
.end method
