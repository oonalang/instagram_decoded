.class Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GalleryCrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;


# direct methods
.method constructor <init>(Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;)V
    .locals 0

    iput-object p1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView$1;->this$0:Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView$1;->this$0:Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lapp/morphe/extension/instagram/patches/instants/GalleryCrop$CropView;->zoom(FFF)V

    const/4 v0, 0x1

    return v0
.end method
