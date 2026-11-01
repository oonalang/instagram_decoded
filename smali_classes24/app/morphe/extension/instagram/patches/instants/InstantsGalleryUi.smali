.class public final Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;
.super Ljava/lang/Object;
.source "InstantsGalleryUi.java"

.implements Landroid/view/View$OnClickListener;

.field private static button:Landroid/widget/ImageButton;
.field private static parent:Landroid/view/ViewGroup;
.field private static vm:Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;
.field private static context:Landroid/content/Context;

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static install(Landroid/content/Context;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 14

    sget-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->vm:Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;
    if-ne v0, p1, :new_vm
    sget-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->button:Landroid/widget/ImageButton;
    if-eqz v0, :new_vm
    return-void

    :new_vm
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->hideAll()V
    move-object v0, p0

    :unwrap
    instance-of v1, v0, Landroid/app/Activity;
    if-nez v1, :have_activity
    instance-of v1, v0, Landroid/content/ContextWrapper;
    if-eqz v1, :done
    check-cast v0, Landroid/content/ContextWrapper;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;
    move-result-object v0
    if-eqz v0, :done
    goto :unwrap

    :have_activity
    check-cast v0, Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
    move-result v1
    if-nez v1, :done
    const v1, 0x1020002
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    move-result-object v2
    instance-of v1, v2, Landroid/view/ViewGroup;
    if-eqz v1, :done
    move-object v3, v2
    check-cast v3, Landroid/view/ViewGroup;

    # Gallery image icon, shown below the original flash control.
    new-instance v4, Landroid/widget/ImageButton;
    invoke-direct {v4, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V
    const-string v1, "Choose photo from gallery"
    invoke-virtual {v4, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    const/4 v1, 0x1
    invoke-virtual {v4, v1}, Landroid/view/View;->setClickable(Z)V
    invoke-virtual {v4, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v5
    const-string v6, "ic_menu_gallery"
    const-string v7, "drawable"
    const-string v8, "android"
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v6
    if-lez v6, :icon_done
    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setImageResource(I)V
    :icon_done
    const/4 v6, -0x1
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setColorFilter(I)V
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    const/16 v6, 0xa
    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V
    const v1, -0x66000000
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    const/high16 v1, 0x42400000
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v5
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v5
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x42400000
    mul-float v6, v6, v5
    float-to-int v6, v6
    const/high16 v7, 0x42400000
    mul-float v7, v7, v5
    float-to-int v7, v7
    const/16 v8, 0x53
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v9, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
    const/high16 v10, 0x41800000
    mul-float v10, v10, v5
    float-to-int v10, v10
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I
    const/high16 v10, 0x42100000
    mul-float v10, v10, v5
    float-to-int v10, v10
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    new-instance v11, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;
    invoke-direct {v11}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;-><init>()V
    invoke-virtual {v4, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start
    invoke-virtual {v3, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :catch_ui

    sput-object v4, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->button:Landroid/widget/ImageButton;
    sput-object v3, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->parent:Landroid/view/ViewGroup;
    sput-object p1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->vm:Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;
    sput-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->context:Landroid/content/Context;
    goto :done
    :catch_ui
    move-exception v12
    :done
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    sget-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->context:Landroid/content/Context;
    sget-object v1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->vm:Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;
    if-eqz v0, :done
    if-eqz v1, :done
    invoke-static {v0, v1}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->openGallery(Landroid/content/Context;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    :done
    return-void
.end method

.method public static hide(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 1
    sget-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->vm:Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;
    if-ne v0, p0, :done
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->hideAll()V
    :done
    return-void
.end method

.method public static hideAll()V
    .locals 3
    sget-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->parent:Landroid/view/ViewGroup;
    sget-object v1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->button:Landroid/widget/ImageButton;
    if-eqz v0, :clear
    if-eqz v1, :clear
    :try_start
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :catch_remove
    goto :clear
    :catch_remove
    move-exception v2
    :clear
    const/4 v2, 0x0
    sput-object v2, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->parent:Landroid/view/ViewGroup;
    sput-object v2, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->button:Landroid/widget/ImageButton;
    sput-object v2, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->vm:Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;
    sput-object v2, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->context:Landroid/content/Context;
    return-void
.end method
