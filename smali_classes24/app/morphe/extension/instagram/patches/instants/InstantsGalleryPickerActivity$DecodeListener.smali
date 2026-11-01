.class public final Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryPickerActivity$DecodeListener;
.super Ljava/lang/Object;
.source "InstantsGalleryPickerActivity.java"

.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 4

    const/4 v0, 0x1
    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V
    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setMutableRequired(Z)V

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;
    move-result-object v0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I
    move-result v1
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I
    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
    move-result v2
    const/4 v1, 0x1

    :sample_loop
    const/16 v0, 0x500
    if-le v2, v0, :sample_done
    div-int/lit8 v2, v2, 0x2
    mul-int/lit8 v1, v1, 0x2
    goto :sample_loop

    :sample_done
    invoke-virtual {p1, v1}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V
    return-void
.end method
