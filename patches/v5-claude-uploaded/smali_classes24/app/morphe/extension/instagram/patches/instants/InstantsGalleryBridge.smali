.class public final Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;
.super Ljava/lang/Object;
.source "InstantsGalleryBridge.java"

.field private static pending:LX/gAI;
.field private static uiContext:Landroid/content/Context;
.field private static cropW:I
.field private static cropH:I

.method public static openGallery(Landroid/content/Context;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 5
    sget-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->pending:LX/gAI;
    if-eqz v0, :start
    return-void

    :start
    invoke-static {p1}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->rememberSize(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    iget v0, p1, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryWidth:I
    iget v2, p1, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryHeight:I
    if-lez v0, :crop_fallback
    if-lez v2, :crop_fallback
    goto :crop_sizes
    :crop_fallback
    const/16 v0, 0x9
    const/16 v2, 0x10
    :crop_sizes
    sput v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->cropW:I
    sput v2, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->cropH:I
    const/16 v0, 0x11
    new-instance v1, LX/gAI;
    invoke-direct {v1, v0, p0, p1}, LX/gAI;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    sput-object v1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->pending:LX/gAI;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    move-result-object v2
    sput-object v2, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->uiContext:Landroid/content/Context;

    :try_start_0
    new-instance v2, Landroid/content/Intent;
    const-class v3, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryPickerActivity;
    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    const/high16 v3, 0x10000000
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_start
    return-void

    :catch_start
    move-exception v4
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->cancel()V
    const-string v0, "InstantsGallery"
    const-string v1, "Unable to start gallery picker"
    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method

.method public static cancel()V
    .locals 1
    const/4 v0, 0x0
    sput-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->pending:LX/gAI;
    return-void
.end method

.method public static dispatch(Landroid/graphics/Bitmap;Z)V
    .locals 1
    const-string v0, ""
    invoke-static {p0, v0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->dispatchCaption(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    return-void
.end method

.method public static dispatchCaption(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6
    sget-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->pending:LX/gAI;
    if-eqz v0, :missing_pending
    if-eqz p0, :clear
    # The callback must run with the original active QuickSnap ViewModel.
    # Cancel only after completion, not before dispatch.

    :try_start_0
    const/4 v1, 0x0
    move-object v2, p1
    if-nez v2, :caption_ok
    const-string v2, ""
    :caption_ok
    const/4 v3, 0x0
    invoke-virtual {v0, p0, v1, v2, v3}, LX/gAI;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_dispatch
    const-string v1, "InstantsGallery"
    const-string v2, "QuickSnap callback returned without a synchronous exception"
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->cancel()V
    return-void

    :catch_dispatch
    move-exception v4
    const-string v1, "InstantsGallery"
    const-string v2, "QuickSnap photo callback failed"
    invoke-static {v1, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    const-string v1, "Instant send failed. Check Logcat (InstantsGallery)."
    invoke-static {v1}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->notice(Ljava/lang/String;)V
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->cancel()V
    return-void

    :missing_pending
    const-string v1, "QuickSnap session expired. Return to Instants and retry."
    invoke-static {v1}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->notice(Ljava/lang/String;)V
    const-string v1, "InstantsGallery"
    const-string v2, "Gallery result arrived without an active QuickSnap callback"
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    return-void

    :clear
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->cancel()V
    :finish
    return-void
.end method

.method public static notice(Ljava/lang/String;)V
    .locals 2
    sget-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->uiContext:Landroid/content/Context;
    if-eqz v0, :finish
    const/4 v1, 0x1
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :finish
    return-void
.end method

.method public static squareCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v1
    if-ne v0, v1, :crop
    return-object p0

    :crop
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    move-result v2
    sub-int v3, v0, v2
    div-int/lit8 v3, v3, 0x2
    sub-int v4, v1, v2
    div-int/lit8 v4, v4, 0x2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static {v2, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v6
    new-instance v7, Landroid/graphics/Canvas;
    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    neg-int v3, v3
    neg-int v4, v4
    int-to-float v3, v3
    int-to-float v4, v4
    const/4 v5, 0x0
    invoke-virtual {v7, p0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_crop
    return-object v6

    :catch_crop
    move-exception v0
    const-string v1, "InstantsGallery"
    const-string v2, "Square crop failed; using original aspect"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-object p0
.end method

.method public static cropWidth()I
    .locals 1
    sget v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->cropW:I
    if-gtz v0, :return_size
    const/16 v0, 0x9
    :return_size
    return v0
.end method

.method public static cropHeight()I
    .locals 1
    sget v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->cropH:I
    if-gtz v0, :return_size
    const/16 v0, 0x10
    :return_size
    return v0
.end method
