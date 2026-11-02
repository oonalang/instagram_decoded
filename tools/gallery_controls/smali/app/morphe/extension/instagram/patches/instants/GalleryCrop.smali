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

.method public static open(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 12

    const/4 v6, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v5, 0xc

    const/4 v11, 0x1

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
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, -0x1000000

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "Drag to position \u00b7 Pinch to zoom"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v2, 0x18

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;

    iget v0, p2, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryWidth:I

    iget v2, p2, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryHeight:I

    invoke-direct {v5, p0, p1, v0, v2}, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;-><init>(Landroid/app/Activity;Landroid/graphics/Bitmap;II)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "Cancel"

    aput-object v0, v7, v1

    const-string v0, "\u2212"

    aput-object v0, v7, v11

    const/4 v0, 0x2

    const-string v2, "+"

    aput-object v2, v7, v0

    const/4 v0, 0x3

    const-string v2, "Reset"

    aput-object v2, v7, v0

    const/4 v0, 0x4

    const-string v2, "Use photo"

    aput-object v2, v7, v0

    move v0, v1

    :goto_75
    array-length v2, v7

    if-ge v0, v2, :cond_ae

    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    aget-object v2, v7, v0

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-ne v0, v11, :cond_a3

    const-string v2, "Zoom out"

    :goto_86
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_ac

    const v2, 0x3fcccccd    # 1.6f

    :goto_92
    invoke-direct {v9, v1, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;

    invoke-direct {v2, v0, p0, v5, p2}, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;-><init>(ILandroid/app/Activity;Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    :cond_a3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_a9

    const-string v2, "Zoom in"

    goto :goto_86

    :cond_a9
    aget-object v2, v7, v0

    goto :goto_86

    :cond_ac
    move v2, v3

    goto :goto_92

    :cond_ae
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_17
.end method
