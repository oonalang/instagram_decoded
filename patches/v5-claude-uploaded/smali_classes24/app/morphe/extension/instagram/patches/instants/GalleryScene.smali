.class public final Lapp/morphe/extension/instagram/patches/instants/GalleryScene;
.super Ljava/lang/Object;

# The file belongs to the camera ViewModel. Only this QuickSnap instance reads it.
.method public static rememberSize(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 3
    iget-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryCamera:LX/k4m;
    if-eqz v0, :done
    iget-object v0, v0, LX/k4m;->gallerySurface:Landroid/view/SurfaceView;
    if-eqz v0, :done
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I
    move-result v1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I
    move-result v2
    if-lez v1, :done
    if-lez v2, :done
    iput v1, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryWidth:I
    iput v2, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryHeight:I
    :done
    return-void
.end method

.method public static refresh(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 1
    iget-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryFile:Ljava/io/File;
    if-eqz v0, :end
    invoke-static {p0}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->install(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)Z
    :end
    return-void
.end method

.method public static bind(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/k4m;)V
    .locals 1
    iput-object p1, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryCamera:LX/k4m;
    invoke-static {p0}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->rememberSize(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    iget-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryFile:Ljava/io/File;
    if-eqz v0, :end
    invoke-static {p0}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->install(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)Z
    :end
    return-void
.end method

.method private static graph(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)LX/34o;
    .locals 1
    iget-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryCamera:LX/k4m;
    if-eqz v0, :none
    iget-object v0, v0, LX/k4m;->A0P:LX/lQG;
    invoke-virtual {v0}, LX/lQG;->A06()LX/98M;
    move-result-object v0
    instance-of p0, v0, LX/34o;
    if-eqz p0, :none
    check-cast v0, LX/34o;
    return-object v0
    :none
    const/4 v0, 0x0
    return-object v0
.end method

.method private static publish(LX/34o;)V
    .locals 3
    iget-object v0, p0, LX/34o;->A09:LX/69D;
    iget-object v1, p0, LX/34o;->A05:LX/69t;
    const/16 v2, 0x11
    invoke-virtual {v0, v1, v2}, LX/69D;->A02(LX/69t;I)V
    invoke-virtual {v1}, LX/69t;->A00()Lcom/facebook/cameracore/litecamera/mediapipeline/iglu/filter/model/FilterModel;
    invoke-virtual {v0}, LX/69D;->A01()Lcom/facebook/cameracore/litecamera/mediapipeline/iglu/filter/model/FilterModel;
    move-result-object v0
    invoke-virtual {p0, v0}, LX/34o;->Grc(Lcom/facebook/cameracore/litecamera/mediapipeline/iglu/filter/model/FilterModel;)V
    return-void
.end method

.method private static install(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)Z
    .locals 6
    invoke-static {p0}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->graph(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)LX/34o;
    move-result-object v0
    if-eqz v0, :no_graph
    iget-object v1, v0, LX/34o;->A02:LX/KBi;
    if-eqz v1, :no_graph
    iget-object v1, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryGraph:LX/34o;
    if-eq v0, v1, :ok
    invoke-static {p0}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->detach(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    iget-object v1, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, LX/8U7;->A0B(Ljava/lang/String;)Lcom/facebook/cameracore/litecamera/mediapipeline/iglu/filter/model/ValueMapFilterModel;
    move-result-object v1
    # Gallery source: decoded bitmap already has display orientation.
    invoke-virtual {v1}, Lcom/facebook/cameracore/litecamera/mediapipeline/iglu/filter/model/ValueMapFilterModel;->getTextureTransform()[F
    move-result-object v3
    const/4 v4, 0x0
    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V
    iget-object v2, v0, LX/34o;->A05:LX/69t;
    # Clear the camera pixels first, including transparent areas of the image.
    const/high16 v3, -0x1000000
    invoke-static {v3}, LX/8U7;->A06(I)Lcom/facebook/cameracore/litecamera/mediapipeline/iglu/filter/model/ValueMapFilterModel;
    move-result-object v3
    const-string v4, "instants_gallery_clear"
    const/16 v5, 0xf
    invoke-virtual {v2, v3, v4, v5}, LX/69t;->GrY(Lcom/facebook/cameracore/litecamera/mediapipeline/iglu/filter/model/FilterModel;Ljava/lang/String;I)V
    const-string v3, "instants_gallery_source"
    const/16 v4, 0x10
    invoke-virtual {v2, v1, v3, v4}, LX/69t;->GrY(Lcom/facebook/cameracore/litecamera/mediapipeline/iglu/filter/model/FilterModel;Ljava/lang/String;I)V
    iput-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryGraph:LX/34o;
    invoke-static {v0}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->publish(LX/34o;)V
    :ok
    const/4 v0, 0x1
    return v0
    :no_graph
    const/4 v0, 0
    return v0
.end method

.method private static detach(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 3
    iget-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryGraph:LX/34o;
    if-eqz v0, :end
    const/4 v1, 0
    iput-object v1, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryGraph:LX/34o;
    iget-object v1, v0, LX/34o;->A05:LX/69t;
    const-string v2, "instants_gallery_clear"
    invoke-virtual {v1, v2}, LX/69t;->GYR(Ljava/lang/String;)Z
    const-string v2, "instants_gallery_source"
    invoke-virtual {v1, v2}, LX/69t;->GYR(Ljava/lang/String;)Z
    invoke-static {v0}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->publish(LX/34o;)V
    :end
    return-void
.end method

.method public static ready(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;LX/kyb;)Z
    .locals 2
    iget-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryCamera:LX/k4m;
    if-eqz v0, :wait
    iget-object v0, v0, LX/k4m;->A0P:LX/lQG;
    iget-object v1, p1, LX/kyb;->A08:LX/lQG;
    if-ne v0, v1, :wait
    invoke-static {p0}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->graph(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)LX/34o;
    move-result-object v0
    if-eqz v0, :wait
    iget-object v1, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryGraph:LX/34o;
    if-eq v0, v1, :ready
    invoke-static {p0}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->install(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)Z
    :wait
    const/4 v0, 0
    return v0
    :ready
    const/4 v0, 1
    return v0
.end method

.method public static retry(LX/kyb;Ljava/io/File;)V
    .locals 2
    iget-object v0, p0, LX/kyb;->galleryOwner:Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;
    iget-object v1, v0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryFile:Ljava/io/File;
    if-ne v1, p1, :done
    const/4 v1, 0
    iput-boolean v1, v0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryCopyPending:Z
    const-string v1, "QuickSnap could not read the preview. Try the shutter again."
    invoke-static {v1}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->notice(Ljava/lang/String;)V
    :done
    return-void
.end method

.method public static discard(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 2
    invoke-static {p0}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->detach(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    iget-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryFile:Ljava/io/File;
    const/4 v1, 0
    iput-object v1, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryFile:Ljava/io/File;
    iput-boolean v1, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryCopyPending:Z
    if-eqz v0, :end
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :end
    return-void
.end method

.method public static release(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 1
    invoke-static {p0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->cancelFor(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    invoke-static {p0}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->discard(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    const/4 v0, 0
    iput-object v0, p0, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryCamera:LX/k4m;
    return-void
.end method

.method private static frame(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    # Fit the original into the actual camera surface with one uniform scale.
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I
    move-result v0
    const/16 v1, 0x500
    if-le v0, v1, :size
    int-to-float v0, v0
    int-to-float v1, v1
    div-float/2addr v1, v0
    int-to-float v0, p1
    mul-float/2addr v0, v1
    float-to-int p1, v0
    int-to-float v0, p2
    mul-float/2addr v0, v1
    float-to-int p2, v0
    :size
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v0
    new-instance v1, Landroid/graphics/Canvas;
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    const/high16 v2, -0x1000000
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V
    # Gallery rendering V2: center crop with overlay Y compensation.
    new-instance v4, Landroid/graphics/Matrix;
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
    move-result v2
    int-to-float v2, v2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
    move-result v3
    int-to-float v3, v3
    int-to-float v5, p1
    div-float v6, v5, v2
    int-to-float v7, p2
    div-float v8, v7, v3
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F
    move-result v6
    neg-float v8, v6
    invoke-virtual {v4, v6, v8}, Landroid/graphics/Matrix;->setScale(FF)V
    mul-float/2addr v2, v6
    sub-float/2addr v5, v2
    mul-float/2addr v3, v6
    add-float/2addr v7, v3
    const/high16 v8, 0x3f000000    # 0.5f
    mul-float/2addr v5, v8
    mul-float/2addr v7, v8
    invoke-virtual {v4, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z
    new-instance v6, Landroid/graphics/Paint;
    const/4 v7, 0x2
    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V
    invoke-virtual {v1, p0, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    return-object v0
.end method

.method public static select(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 6
    invoke-static {p2}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->rememberSize(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    iget v1, p2, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryWidth:I
    iget v2, p2, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryHeight:I
    if-lez v1, :unavailable
    if-lez v2, :unavailable
    invoke-static {p1, v1, v2}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->frame(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    move-result-object v0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    move-result-object v1
    const-string v2, "qs-gallery-"
    const-string v3, ".jpg"
    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    move-result-object v1
    :try_open
    new-instance v2, Ljava/io/FileOutputStream;
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :end_open
    .catchall {:try_open .. :end_open} :failed
    :try_write
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    const/16 v4, 0x64
    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    move-result v3
    :end_write
    .catchall {:try_write .. :end_write} :write_failed
    :try_close
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    if-nez v3, :written
    new-instance v3, Ljava/io/IOException;
    const-string v4, "Could not encode gallery frame"
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v3
    :written
    invoke-static {p2}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->discard(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    iput-object v1, p2, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryFile:Ljava/io/File;
    invoke-static {p2}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->install(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)Z
    const-string v2, "InstantsGallery"
    const-string v3, "Selected photo staged for the native QuickSnap camera"
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :end_close
    .catchall {:try_close .. :end_close} :failed
    return-void
    :write_failed
    move-exception v3
    :try_cleanup
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    throw v3
    :end_cleanup
    .catchall {:try_cleanup .. :end_cleanup} :failed
    :failed
    move-exception v3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    iget-object v0, p2, Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;->galleryFile:Ljava/io/File;
    if-ne v0, v1, :rethrow
    invoke-static {p2}, Lapp/morphe/extension/instagram/patches/instants/GalleryScene;->discard(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    :rethrow
    throw v3
    :unavailable
    const-string v0, "QuickSnap camera is not ready. Reopen the camera and choose the photo again."
    invoke-static {v0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->notice(Ljava/lang/String;)V
    return-void
.end method
