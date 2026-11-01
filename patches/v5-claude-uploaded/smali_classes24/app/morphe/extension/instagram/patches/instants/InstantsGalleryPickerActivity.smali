.class public final Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryPickerActivity;
.super Landroid/app/Activity;
.source "InstantsGalleryPickerActivity.java"

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    return-void
.end method

.method private message(Ljava/lang/String;)V
    .locals 2
    const-string v0, "InstantsGallery"
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    const/4 v1, 0x1
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
    if-nez p1, :already_open

    :try_start_0
    new-instance v0, Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    const-string v1, "image/*"
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    const/16 v1, 0x771
    const-string v2, "InstantsGallery"
    const-string v1, "Launching gallery picker"
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    const/16 v1, 0x771
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_picker
    return-void

    :catch_picker
    move-exception v2
    const-string v0, "InstantsGallery"
    const-string v1, "Unable to open photo picker"
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    invoke-direct {p0, v1}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryPickerActivity;->message(Ljava/lang/String;)V
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->cancel()V
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    return-void

    :already_open
    invoke-static {p0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->restore(Landroid/app/Activity;)V
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "InstantsGallery"
    const-string v1, "Photo picker returned to Instants"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x771
    if-ne p1, v0, :wrong_request
    const/4 v0, -0x1
    if-ne p2, v0, :user_cancel
    if-eqz p3, :no_uri
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    move-result-object v1
    if-nez v1, :have_uri

    # Some gallery apps return the chosen image in ClipData instead of data.
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;
    move-result-object v2
    if-eqz v2, :no_uri
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I
    move-result v3
    if-lez v3, :no_uri
    const/4 v3, 0x0
    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;
    move-result-object v2
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;
    move-result-object v1
    if-eqz v1, :no_uri

    :have_uri
    :try_start_0
    const-string v2, "InstantsGallery"
    const-string v3, "Image URI received, decoding bitmap"
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v0
    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;
    move-result-object v0
    new-instance v1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryPickerActivity$DecodeListener;
    invoke-direct {v1}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryPickerActivity$DecodeListener;-><init>()V
    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;
    move-result-object v2
    if-eqz v2, :decode_null
    const-string v3, "InstantsGallery"
    const-string v4, "Bitmap decoded; submitting to original QuickSnap callback"
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v2}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->squareCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    move-result-object v2
    const-string v3, "InstantsGallery"
    const-string v4, "Opening editor preview; nothing is uploaded until Send"
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p0, v2}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->show(Landroid/app/Activity;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_decode
    return-void

    :decode_null
    const-string v0, "Failed to decode selected image."
    invoke-direct {p0, v0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryPickerActivity;->message(Ljava/lang/String;)V
    goto :cancel

    :catch_decode
    move-exception v6
    const-string v0, "InstantsGallery"
    const-string v1, "Image decoding or callback failed"
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    const-string v0, "Selected photo failed. See InstantsGallery in Logcat."
    invoke-direct {p0, v0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryPickerActivity;->message(Ljava/lang/String;)V
    goto :cancel

    :no_uri
    const-string v0, "Gallery returned no image URI. Try another gallery app."
    invoke-direct {p0, v0}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryPickerActivity;->message(Ljava/lang/String;)V
    goto :cancel

    :wrong_request
    const-string v0, "InstantsGallery"
    const-string v1, "Unexpected photo picker request code"
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    return-void

    :user_cancel
    const-string v0, "InstantsGallery"
    const-string v1, "Gallery selection canceled"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cancel
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->cancel()V
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->clear()V
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    return-void
.end method

.method public onBackPressed()V
    .locals 0
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryBridge;->cancel()V
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->clear()V
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    return-void
.end method

.method protected onDestroy()V
    .locals 1
    # Do not unconditionally cancel here. Android can destroy this intermediate
    # Activity while the platform picker is on screen.
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z
    move-result v0
    if-eqz v0, :keep
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->clear()V
    :keep
    return-void
.end method
