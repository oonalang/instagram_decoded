.class public final Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;
.super Ljava/lang/Object;
.source "InstantsGalleryBridge.java"

.field private static pending:LX/gAI;
.field private static uiContext:Landroid/content/Context;

.method public static openGallery(Landroid/content/Context;Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)V
    .locals 5
    sget-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->pending:LX/gAI;
    if-eqz v0, :start
    return-void

    :start
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
    .locals 6
    sget-object v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->pending:LX/gAI;
    if-eqz v0, :missing_pending
    if-eqz p0, :clear
    # The callback must run with the original active QuickSnap ViewModel.
    # Cancel only after completion, not before dispatch.

    :try_start_0
    const/4 v1, 0x0
    const-string v2, ""
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
