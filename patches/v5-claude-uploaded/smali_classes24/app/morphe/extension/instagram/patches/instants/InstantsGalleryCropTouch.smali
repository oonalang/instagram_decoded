.class public final Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;

.field private final view:Landroid/widget/ImageView;
.field private final photo:Landroid/graphics/Bitmap;
.field private final aspectW:I
.field private final aspectH:I
.field private zoom:F
.field private panX:F
.field private panY:F
.field private lastX:F
.field private lastY:F
.field private lastSpan:F

.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->view:Landroid/widget/ImageView;
    iput-object p2, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->photo:Landroid/graphics/Bitmap;
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->cropWidth()I
    move-result v0
    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->aspectW:I
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->cropHeight()I
    move-result v1
    iput v1, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->aspectH:I
    const/high16 v0, 0x3f800000
    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->zoom:F
    const/4 v0, 0x0
    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->panX:F
    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->panY:F
    return-void
.end method

.method private viewport()Landroid/graphics/Rect;
    .locals 11
    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->view:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I
    move-result v0
    iget-object v1, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->view:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I
    move-result v1
    if-lez v0, :empty
    if-lez v1, :empty
    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->aspectW:I
    iget v3, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->aspectH:I
    if-lez v2, :empty
    if-lez v3, :empty
    int-to-long v4, v0
    int-to-long v6, v3
    mul-long/2addr v4, v6
    int-to-long v6, v1
    int-to-long v8, v2
    mul-long/2addr v6, v8
    cmp-long v8, v4, v6
    if-gtz v8, :height_limited
    move v4, v0
    mul-int v5, v0, v3
    div-int/2addr v5, v2
    goto :make
    :height_limited
    move v5, v1
    mul-int v4, v1, v2
    div-int/2addr v4, v3
    :make
    sub-int v6, v0, v4
    div-int/lit8 v6, v6, 0x2
    sub-int v7, v1, v5
    div-int/lit8 v7, v7, 0x2
    new-instance v8, Landroid/graphics/Rect;
    add-int/2addr v4, v6
    add-int/2addr v5, v7
    invoke-direct {v8, v6, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V
    return-object v8
    :empty
    const/4 v0, 0x0
    return-object v0
.end method

.method private refresh()V
    .locals 14
    invoke-direct {p0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->viewport()Landroid/graphics/Rect;
    move-result-object v1
    if-eqz v1, :done
    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->view:Landroid/widget/ImageView;
    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I
    move-result v2
    int-to-float v2, v2
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I
    move-result v3
    int-to-float v3, v3
    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->photo:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v4
    int-to-float v4, v4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v5
    int-to-float v5, v5
    div-float v6, v2, v4
    div-float v7, v3, v5
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F
    move-result v6
    iget v7, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->zoom:F
    mul-float/2addr v6, v7
    mul-float/2addr v4, v6
    mul-float/2addr v5, v6
    const/high16 v13, 0x3f000000
    sub-float v9, v4, v2
    mul-float/2addr v9, v13
    const/4 v7, 0x0
    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F
    move-result v9
    iget v8, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->panX:F
    neg-float v10, v9
    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F
    move-result v8
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F
    move-result v8
    iput v8, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->panX:F
    sub-float v9, v5, v3
    mul-float/2addr v9, v13
    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F
    move-result v9
    iget v8, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->panY:F
    neg-float v10, v9
    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F
    move-result v8
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F
    move-result v8
    iput v8, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->panY:F
    new-instance v10, Landroid/graphics/Matrix;
    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V
    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V
    iget v11, v1, Landroid/graphics/Rect;->left:I
    int-to-float v11, v11
    sub-float/2addr v2, v4
    mul-float/2addr v2, v13
    add-float/2addr v11, v2
    iget v12, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->panX:F
    add-float/2addr v11, v12
    iget v12, v1, Landroid/graphics/Rect;->top:I
    int-to-float v12, v12
    sub-float/2addr v3, v5
    mul-float/2addr v3, v13
    add-float/2addr v12, v3
    iget v9, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->panY:F
    add-float/2addr v12, v9
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    :done
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    invoke-direct {p0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->refresh()V
    return-void
.end method

.method private static midpoint(Landroid/view/MotionEvent;Z)F
    .locals 4
    if-eqz p1, :get_y
    const/4 v0, 0x0
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F
    move-result v1
    const/4 v0, 0x1
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F
    move-result v2
    goto :average
    :get_y
    const/4 v0, 0x0
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F
    move-result v1
    const/4 v0, 0x1
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F
    move-result v2
    :average
    add-float/2addr v1, v2
    const/high16 v3, 0x3f000000
    mul-float/2addr v1, v3
    return v1
.end method

.method private static span(Landroid/view/MotionEvent;)F
    .locals 7
    const/4 v0, 0x0
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F
    move-result v1
    const/4 v0, 0x1
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F
    move-result v2
    sub-float/2addr v1, v2
    mul-float/2addr v1, v1
    const/4 v0, 0x0
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F
    move-result v2
    const/4 v0, 0x1
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F
    move-result v3
    sub-float/2addr v2, v3
    mul-float/2addr v2, v2
    add-float/2addr v1, v2
    float-to-double v4, v1
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D
    move-result-wide v4
    double-to-float v0, v4
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    if-nez v0, :maybe_second
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
    move-result v1
    iput v1, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
    move-result v1
    iput v1, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastY:F
    const/4 v1, 0x0
    iput v1, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastSpan:F
    goto :consumed
    :maybe_second
    const/4 v1, 0x5
    if-ne v0, v1, :maybe_move
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I
    move-result v1
    const/4 v2, 0x2
    if-lt v1, v2, :consumed
    invoke-static {p2}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->span(Landroid/view/MotionEvent;)F
    move-result v1
    iput v1, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastSpan:F
    const/4 v2, 0x1
    invoke-static {p2, v2}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->midpoint(Landroid/view/MotionEvent;Z)F
    move-result v3
    iput v3, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastX:F
    const/4 v2, 0x0
    invoke-static {p2, v2}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->midpoint(Landroid/view/MotionEvent;Z)F
    move-result v3
    iput v3, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastY:F
    goto :consumed
    :maybe_move
    const/4 v1, 0x2
    if-ne v0, v1, :maybe_up
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I
    move-result v1
    const/4 v2, 0x2
    if-lt v1, v2, :single
    invoke-static {p2}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->span(Landroid/view/MotionEvent;)F
    move-result v3
    iget v4, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastSpan:F
    const/4 v5, 0x0
    cmpg-float v6, v4, v5
    if-lez v6, :two_pan
    div-float v6, v3, v4
    iget v7, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->zoom:F
    mul-float/2addr v7, v6
    const/high16 v8, 0x3f800000
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F
    move-result v7
    const/high16 v8, 0x40a00000
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F
    move-result v7
    iput v7, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->zoom:F
    :two_pan
    iput v3, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastSpan:F
    const/4 v2, 0x1
    invoke-static {p2, v2}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->midpoint(Landroid/view/MotionEvent;Z)F
    move-result v3
    const/4 v2, 0x0
    invoke-static {p2, v2}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->midpoint(Landroid/view/MotionEvent;Z)F
    move-result v4
    goto :pan
    :single
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
    move-result v3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
    move-result v4
    iget v5, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastSpan:F
    const/4 v6, 0x0
    cmpg-float v7, v5, v6
    if-gez v7, :pan
    iput v3, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastX:F
    iput v4, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastY:F
    iput v6, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastSpan:F
    goto :consumed
    :pan
    iget v5, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastX:F
    sub-float v5, v3, v5
    iget v6, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->panX:F
    add-float/2addr v6, v5
    iput v6, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->panX:F
    iget v5, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastY:F
    sub-float v5, v4, v5
    iget v6, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->panY:F
    add-float/2addr v6, v5
    iput v6, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->panY:F
    iput v3, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastX:F
    iput v4, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastY:F
    invoke-direct {p0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->refresh()V
    goto :consumed
    :maybe_up
    const/4 v1, 0x6
    if-ne v0, v1, :maybe_end
    const/high16 v1, -0x40800000
    iput v1, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastSpan:F
    goto :consumed
    :maybe_end
    const/4 v1, 0x0
    iput v1, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryCropTouch;->lastSpan:F
    :consumed
    const/4 v0, 0x1
    return v0
.end method

.method public static capture(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 11
    if-eqz p0, :none
    invoke-virtual {p0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;
    move-result-object v0
    if-eqz v0, :none
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
    move-result v1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I
    move-result v2
    if-lez v1, :none
    if-lez v2, :none
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
    move-result v3
    const/16 v4, 0x500
    if-le v3, v4, :keep_size
    int-to-float v4, v4
    int-to-float v3, v3
    div-float/2addr v4, v3
    int-to-float v3, v1
    mul-float/2addr v3, v4
    float-to-int v1, v3
    int-to-float v3, v2
    mul-float/2addr v3, v4
    float-to-int v2, v3
    :keep_size
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v4
    new-instance v5, Landroid/graphics/Canvas;
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    const/high16 v6, -0x1000000
    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I
    int-to-float v6, v1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
    move-result v7
    int-to-float v7, v7
    div-float/2addr v6, v7
    int-to-float v7, v2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I
    move-result v8
    int-to-float v8, v8
    div-float/2addr v7, v8
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V
    iget v6, v0, Landroid/graphics/Rect;->left:I
    neg-int v6, v6
    int-to-float v6, v6
    iget v7, v0, Landroid/graphics/Rect;->top:I
    neg-int v7, v7
    int-to-float v7, v7
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V
    invoke-virtual {p0, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V
    return-object v4
    :none
    const/4 v0, 0x0
    return-object v0
.end method
