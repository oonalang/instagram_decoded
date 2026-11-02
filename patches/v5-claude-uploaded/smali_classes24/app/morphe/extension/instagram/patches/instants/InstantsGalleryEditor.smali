.class public final Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;
.super Ljava/lang/Object;
.source "InstantsGalleryEditor.java"

.implements Landroid/view/View$OnClickListener;

.field private static bitmap:Landroid/graphics/Bitmap;
.field private static index:I
.field private static preview:Landroid/widget/ImageView;
.field private static label:Landroid/widget/TextView;
.field private static caption:Landroid/widget/EditText;
.field private static sendBtn:Landroid/widget/Button;
.field private static host:Landroid/app/Activity;
.field private static sent:Z

.field private final mode:I

.method public constructor <init>(I)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput p1, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->mode:I
    return-void
.end method

.method public static dp(Landroid/content/Context;I)I
    .locals 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    int-to-float v1, p1
    mul-float/2addr v1, v0
    const/high16 v2, 0x3f000000
    add-float/2addr v1, v2
    float-to-int v1, v1
    return v1
.end method

.method public static show(Landroid/app/Activity;Landroid/graphics/Bitmap;)V
    .locals 2
    const/4 v0, 0x0
    const-string v1, ""
    invoke-static {p0, p1, v0, v1}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->build(Landroid/app/Activity;Landroid/graphics/Bitmap;ILjava/lang/String;)V
    return-void
.end method

.method public static restore(Landroid/app/Activity;)V
    .locals 4
    sget-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :done
    const-string v1, ""
    sget-object v2, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->caption:Landroid/widget/EditText;
    if-eqz v2, :no_text
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v2
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v1
    :no_text
    sget v3, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->index:I
    invoke-static {p0, v0, v3, v1}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->build(Landroid/app/Activity;Landroid/graphics/Bitmap;ILjava/lang/String;)V
    :done
    return-void
.end method

.method public static clear()V
    .locals 2
    const/4 v0, 0x0
    sput-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->bitmap:Landroid/graphics/Bitmap;
    sput-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->preview:Landroid/widget/ImageView;
    sput-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->label:Landroid/widget/TextView;
    sput-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->caption:Landroid/widget/EditText;
    sput-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->sendBtn:Landroid/widget/Button;
    sput-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->host:Landroid/app/Activity;
    const/4 v1, 0x0
    sput v1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->index:I
    sput-boolean v1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->sent:Z
    return-void
.end method

.method public static build(Landroid/app/Activity;Landroid/graphics/Bitmap;ILjava/lang/String;)V
    .locals 9

    sput-object p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->host:Landroid/app/Activity;
    sput-object p1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->bitmap:Landroid/graphics/Bitmap;
    const/4 v0, 0x0
    sput-boolean v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->sent:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    const/16 v1, 0x10
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    # root column
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V
    const/high16 v1, -0x1000000
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    # filter label
    new-instance v1, Landroid/widget/TextView;
    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const/16 v2, 0x11
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V
    const/4 v2, -0x1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    const/high16 v2, 0x41800000
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V
    const/16 v2, 0xc
    invoke-static {p0, v2}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->dp(Landroid/content/Context;I)I
    move-result v2
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, -0x1
    const/4 v5, -0x2
    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    sput-object v1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->label:Landroid/widget/TextView;
    new-instance v2, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;
    const/4 v3, 0x2
    invoke-direct {v2, v3}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;-><init>(I)V
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    # preview (swipe target)
    new-instance v1, Landroid/widget/ImageView;
    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    const-string v2, "Drag photo to reposition. Pinch with two fingers to zoom. Tap filter name above to change filter."
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    new-instance v2, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;
    invoke-direct {v2, v1, p1}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, -0x1
    const/4 v5, 0x0
    const/high16 v6, 0x3f800000
    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    sput-object v1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->preview:Landroid/widget/ImageView;

    # caption field (max 100 chars, single line)
    new-instance v1, Landroid/widget/EditText;
    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
    const-string v2, "Add a caption\u2026"
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V
    const/4 v2, -0x1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    const v2, -0x66000001
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V
    const/4 v2, 0x1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V
    const/4 v2, 0x6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V
    const/4 v2, 0x1
    new-array v2, v2, [Landroid/text/InputFilter;
    const/4 v3, 0x0
    new-instance v4, Landroid/text/InputFilter$LengthFilter;
    const/16 v5, 0x64
    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V
    aput-object v4, v2, v3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/16 v2, 0xc
    invoke-static {p0, v2}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->dp(Landroid/content/Context;I)I
    move-result v2
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, -0x1
    const/4 v5, -0x2
    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    sput-object v1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->caption:Landroid/widget/EditText;

    # button row
    new-instance v1, Landroid/widget/LinearLayout;
    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    const/4 v2, 0x0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/Button;
    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
    const-string v3, "Cancel"
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    new-instance v3, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;
    const/4 v4, 0x1
    invoke-direct {v3, v4}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;-><init>(I)V
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0
    const/4 v5, -0x2
    const/high16 v6, 0x3f800000
    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/Button;
    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
    const-string v3, "Send"
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    new-instance v3, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;
    const/4 v4, 0x0
    invoke-direct {v3, v4}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;-><init>(I)V
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0
    const/4 v5, -0x2
    const/high16 v6, 0x3f800000
    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    sput-object v2, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->sendBtn:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, -0x1
    const/4 v5, -0x2
    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V
    invoke-static {p2}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->select(I)V
    return-void
.end method

.method public static nameFor(I)Ljava/lang/String;
    .locals 2
    const/4 v1, 0x1
    if-eq p0, v1, :n1
    const/4 v1, 0x2
    if-eq p0, v1, :n2
    const/4 v1, 0x3
    if-eq p0, v1, :n3
    const/4 v1, 0x4
    if-eq p0, v1, :n4
    const/4 v1, 0x5
    if-eq p0, v1, :n5
    const-string v0, "\u2039  Original  \u203a"
    return-object v0
    :n1
    const-string v0, "\u2039  Mono  \u203a"
    return-object v0
    :n2
    const-string v0, "\u2039  Warm  \u203a"
    return-object v0
    :n3
    const-string v0, "\u2039  Cool  \u203a"
    return-object v0
    :n4
    const-string v0, "\u2039  Vivid  \u203a"
    return-object v0
    :n5
    const-string v0, "\u2039  Fade  \u203a"
    return-object v0
.end method

.method public static filterFor(I)Landroid/graphics/ColorMatrixColorFilter;
    .locals 4
    if-eqz p0, :none
    new-instance v0, Landroid/graphics/ColorMatrix;
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V
    const/4 v1, 0x1
    if-eq p0, v1, :mono
    const/4 v1, 0x2
    if-eq p0, v1, :warm
    const/4 v1, 0x3
    if-eq p0, v1, :cool
    const/4 v1, 0x4
    if-eq p0, v1, :vivid
    const/4 v1, 0x5
    if-eq p0, v1, :fade
    goto :none

    :mono
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V
    goto :make

    :warm
    const v1, 0x3f8ccccd
    const/high16 v2, 0x3f800000
    const v3, 0x3f666666
    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V
    goto :make

    :cool
    const v1, 0x3f666666
    const/high16 v2, 0x3f800000
    const v3, 0x3f8ccccd
    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V
    goto :make

    :vivid
    const v1, 0x3fcccccd
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V
    goto :make

    :fade
    const v1, 0x3f0ccccd
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    :make
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;
    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V
    return-object v1

    :none
    const/4 v0, 0x0
    return-object v0
.end method

.method public static select(I)V
    .locals 4
    sput p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->index:I
    invoke-static {p0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->filterFor(I)Landroid/graphics/ColorMatrixColorFilter;
    move-result-object v0
    sget-object v1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->preview:Landroid/widget/ImageView;
    if-eqz v1, :no_preview
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :no_preview
    sget-object v1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->label:Landroid/widget/TextView;
    if-eqz v1, :done
    invoke-static {p0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->nameFor(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :done
    return-void
.end method

.method public static step(Z)V
    .locals 2
    sget v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->index:I
    if-eqz p0, :prev
    add-int/lit8 v0, v0, 0x1
    goto :wrap
    :prev
    add-int/lit8 v0, v0, -0x1
    :wrap
    add-int/lit8 v0, v0, 0x6
    rem-int/lit8 v0, v0, 0x6
    invoke-static {v0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->select(I)V
    return-void
.end method

.method public static bake()Landroid/graphics/Bitmap;
    .locals 2
    sget-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->preview:Landroid/widget/ImageView;
    invoke-static {v0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->capture(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    move-result-object v1
    if-eqz v1, :fallback
    return-object v1
    :fallback
    sget-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    iget v0, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->mode:I
    const/4 v2, 0x2
    if-ne v0, v2, :not_filter
    const/4 v2, 0x1
    invoke-static {v2}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->step(Z)V
    return-void
    :not_filter
    if-eqz v0, :send

    # Cancel: return to QuickSnap, nothing is uploaded.
    sget-object v1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->host:Landroid/app/Activity;
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->cancel()V
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->clear()V
    if-eqz v1, :end
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :end
    return-void

    :send
    sget-boolean v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->sent:Z
    if-nez v0, :end
    const/4 v0, 0x1
    sput-boolean v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->sent:Z
    sget-object v1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->sendBtn:Landroid/widget/Button;
    if-eqz v1, :no_btn
    const/4 v2, 0x0
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V
    :no_btn
    sget-object v3, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->host:Landroid/app/Activity;

    :try_start_0
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->bake()Landroid/graphics/Bitmap;
    move-result-object v1
    sget-object v2, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->caption:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v2
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v2
    const-string v0, "InstantsGallery"
    const-string p1, "Editor Send pressed; dispatching edited photo"
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->dispatchCaption(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_send

    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->clear()V
    if-eqz v3, :end
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    return-void

    :catch_send
    move-exception v0
    const-string v1, "InstantsGallery"
    const-string v2, "Editor failed to prepare or send the photo"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    const-string v1, "Could not send the edited photo. See InstantsGallery in Logcat."
    invoke-static {v1}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->notice(Ljava/lang/String;)V
    const/4 v0, 0x0
    sput-boolean v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->sent:Z
    sget-object v1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->sendBtn:Landroid/widget/Button;
    if-eqz v1, :end
    const/4 v2, 0x1
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V
    return-void
.end method
