.class public final Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;
.super Landroid/view/View;
.source "GalleryCrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/morphe/extension/instagram/patches/instants/GalleryCrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CropView"
.end annotation


# instance fields
.field private base:F

.field final box:Landroid/graphics/RectF;

.field private dragId:I

.field private final image:Landroid/graphics/Bitmap;

.field private lastX:F

.field private lastY:F

.field private final paint:Landroid/graphics/Paint;

.field private final pinch:Landroid/view/ScaleGestureDetector;

.field private scale:F

.field private final targetHeight:I

.field private final targetWidth:I

.field private x:F

.field private y:F


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/graphics/Bitmap;II)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->paint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->dragId:I

    iput-object p2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->image:Landroid/graphics/Bitmap;

    iput p3, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->targetWidth:I

    iput p4, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->targetHeight:I

    const-string v0, "Photo crop. Drag in any direction or pinch to zoom."

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView$1;

    invoke-direct {v1, p0}, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView$1;-><init>(Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->pinch:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method clamp()V
    .locals 3

    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->x:F

    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->y:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->y:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->base:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v3, 0x3e75c28f    # 0.24f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->scale:F

    iget v3, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->scale:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->x:F

    iget v3, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->image:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_a
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    const/high16 v2, 0x42000000    # 32.0f

    const/high16 v7, 0x40000000    # 2.0f

    int-to-float v0, p1

    sub-float/2addr v0, v2

    int-to-float v1, p2

    sub-float/2addr v1, v2

    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->targetWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->targetHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1a

    :goto_19
    return-void

    :cond_1a
    iget v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->targetHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->targetWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    int-to-float v3, p1

    sub-float/2addr v3, v0

    div-float/2addr v3, v7

    int-to-float v4, p2

    sub-float/2addr v4, v1

    div-float/2addr v4, v7

    int-to-float v5, p1

    add-float/2addr v5, v0

    div-float/2addr v5, v7

    int-to-float v6, p2

    add-float/2addr v6, v1

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->base:F

    invoke-virtual {p0}, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->reset()V

    goto :goto_19
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->pinch:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->dragId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->lastY:F

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_26
    :goto_26
    return v1

    :cond_27
    const/4 v3, 0x6

    if-ne v2, v3, :cond_44

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-nez v2, :cond_31

    move v0, v1

    :cond_31
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->dragId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->lastX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->lastY:F

    goto :goto_26

    :cond_44
    const/4 v3, 0x2

    if-ne v2, v3, :cond_82

    iget v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->dragId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v1, :cond_7d

    iget-object v3, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->pinch:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_7d

    iget v3, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->x:F

    iget v4, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->lastX:F

    sub-float v4, v2, v4

    add-float/2addr v3, v4

    iput v3, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->x:F

    iget v3, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->y:F

    iget v4, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->lastY:F

    sub-float v4, v0, v4

    add-float/2addr v3, v4

    iput v3, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->y:F

    invoke-virtual {p0}, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->clamp()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7d
    iput v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->lastX:F

    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->lastY:F

    goto :goto_26

    :cond_82
    if-eq v2, v1, :cond_87

    const/4 v3, 0x3

    if-ne v2, v3, :cond_26

    :cond_87
    const/4 v2, -0x1

    iput v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->dragId:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_26
.end method

.method render()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v4, 0x1

    iget v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->base:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preview not laid out"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x44a00000    # 1280.0f

    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->targetWidth:I

    iget v3, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->targetHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->targetWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->targetHeight:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iget v5, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->scale:F

    int-to-float v6, v1

    mul-float/2addr v5, v6

    iget-object v6, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v5, v6

    iget v6, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->scale:F

    int-to-float v7, v0

    mul-float/2addr v6, v7

    iget-object v7, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v5, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->x:F

    iget-object v6, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    int-to-float v1, v1

    mul-float/2addr v1, v5

    iget-object v5, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v1, v5

    iget v5, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->y:F

    iget-object v6, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    int-to-float v0, v0

    mul-float/2addr v0, v5

    iget-object v5, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v0, v5

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->image:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v2
.end method

.method reset()V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->base:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->base:F

    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->scale:F

    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->scale:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->x:F

    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->scale:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->y:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_9
.end method

.method zoom(FFF)V
    .locals 3

    iget v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->base:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_13

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->base:F

    iget v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->base:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->scale:F

    mul-float/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->scale:F

    div-float v1, v0, v1

    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->x:F

    sub-float v2, p2, v2

    mul-float/2addr v2, v1

    sub-float v2, p2, v2

    iput v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->x:F

    iget v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->y:F

    sub-float v2, p3, v2

    mul-float/2addr v1, v2

    sub-float v1, p3, v1

    iput v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->y:F

    iput v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->scale:F

    invoke-virtual {p0}, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->clamp()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_13
.end method
