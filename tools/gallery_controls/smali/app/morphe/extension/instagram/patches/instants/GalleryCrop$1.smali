.class Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;
.super Ljava/lang/Object;
.source "GalleryCrop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/morphe/extension/instagram/patches/instants/GalleryCrop;->open(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:I

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$preview:Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;

.field final synthetic val$vm:Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;


# direct methods
.method constructor <init>(ILandroid/app/Activity;Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$action:I

    iput-object p2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$preview:Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;

    iput-object p4, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$vm:Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$action:I

    if-nez v0, :cond_d

    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->cancel()V

    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_c
    return-void

    :cond_d
    iget v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$action:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$preview:Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;

    const v1, 0x3f4ccccd    # 0.8f

    iget-object v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$preview:Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;

    iget-object v2, v2, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$preview:Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;

    iget-object v3, v3, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->zoom(FFF)V

    goto :goto_c

    :cond_2b
    iget v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$action:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$preview:Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;

    const/high16 v1, 0x3fa00000    # 1.25f

    iget-object v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$preview:Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;

    iget-object v2, v2, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$preview:Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;

    iget-object v3, v3, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->box:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->zoom(FFF)V

    goto :goto_c

    :cond_48
    iget v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$action:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_53

    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$preview:Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;

    invoke-virtual {v0}, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->reset()V

    goto :goto_c

    :cond_53
    :try_start_53
    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$preview:Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;

    invoke-virtual {v0}, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->render()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$vm:Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;

    invoke-static {v1, v0, v2}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->select(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_68
    .catch Ljava/lang/OutOfMemoryError; {:try_start_53 .. :try_end_68} :catch_69
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_68} :catch_70

    goto :goto_c

    :catch_69
    move-exception v0

    const-string v0, "Not enough memory. Try a smaller photo."

    invoke-static {v0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->notice(Ljava/lang/String;)V

    goto :goto_c

    :catch_70
    move-exception v0

    const-string v0, "Could not prepare this photo. Try again."

    invoke-static {v0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->notice(Ljava/lang/String;)V

    goto :goto_c
.end method
