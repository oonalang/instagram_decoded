.class public final Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi$ThumbTask;
.super Ljava/lang/Object;
.source "InstantsGalleryUi.java"

.implements Ljava/lang/Runnable;

.field private static last:J

.field private final mode:I
.field private final button:Landroid/widget/ImageButton;
.field private final bmp:Landroid/graphics/Bitmap;

.method public constructor <init>(ILandroid/widget/ImageButton;Landroid/graphics/Bitmap;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput p1, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi$ThumbTask;->mode:I
    iput-object p2, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi$ThumbTask;->button:Landroid/widget/ImageButton;
    iput-object p3, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi$ThumbTask;->bmp:Landroid/graphics/Bitmap;
    return-void
.end method

.method public static start(Landroid/widget/ImageButton;Z)V
    .locals 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    if-nez p1, :go
    sget-wide v2, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi$ThumbTask;->last:J
    sub-long v4, v0, v2
    const-wide/16 v2, 0x7d0
    cmp-long v4, v4, v2
    if-ltz v4, :done
    :go
    sput-wide v0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi$ThumbTask;->last:J
    new-instance v2, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi$ThumbTask;
    const/4 v3, 0x0
    const/4 v4, 0x0
    invoke-direct {v2, v3, p0, v4}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi$ThumbTask;-><init>(ILandroid/widget/ImageButton;Landroid/graphics/Bitmap;)V
    new-instance v3, Ljava/lang/Thread;
    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :done
    return-void
.end method

.method private static query(Landroid/content/ContentResolver;Z)Landroid/net/Uri;
    .locals 10
    const/4 v0, 0x0
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
    new-instance v2, Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    const/4 v4, 0x1
    const/4 v6, 0x0
    new-array v5, v4, [Ljava/lang/String;
    const-string v7, "date_added"
    aput-object v7, v5, v6
    const-string v3, "android:query-arg-sort-columns"
    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    const-string v3, "android:query-arg-sort-direction"
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    const-string v3, "android:query-arg-limit"
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    if-eqz p1, :no_sel
    const-string v3, "android:query-arg-sql-selection"
    const-string v7, "relative_path LIKE ?"
    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    new-array v7, v4, [Ljava/lang/String;
    const-string v8, "DCIM/%"
    aput-object v8, v7, v6
    const-string v3, "android:query-arg-sql-selection-args"
    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :no_sel
    new-array v5, v4, [Ljava/lang/String;
    const-string v7, "_id"
    aput-object v7, v5, v6
    const/4 v7, 0x0
    invoke-virtual {p0, v1, v5, v2, v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    move-result-object v0
    if-eqz v0, :ret_null_nc
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    move-result v3
    if-eqz v3, :ret_null
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J
    move-result-wide v8
    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_q
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    return-object v1

    :ret_null
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :ret_null_nc
    const/4 v1, 0x0
    return-object v1

    :catch_q
    move-exception v1
    const-string v2, "InstantsGallery"
    const-string v3, "Recent photo query unavailable"
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    if-eqz v0, :ret_null_nc
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    goto :ret_null_nc
.end method

.method public run()V
    .locals 8
    iget v0, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi$ThumbTask;->mode:I
    if-nez v0, :load_mode
    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->current()Landroid/widget/ImageButton;
    move-result-object v1
    iget-object v2, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi$ThumbTask;->button:Landroid/widget/ImageButton;
    if-ne v1, v2, :end
    iget-object v3, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi$ThumbTask;->bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearColorFilter()V
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    const/4 v4, 0x0
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V
    :end
    return-void

    :load_mode
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 0x1d
    if-lt v0, v1, :end
    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi$ThumbTask;->button:Landroid/widget/ImageButton;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v1
    const/4 v2, 0x1
    invoke-static {v1, v2}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi$ThumbTask;->query(Landroid/content/ContentResolver;Z)Landroid/net/Uri;
    move-result-object v3
    if-nez v3, :have
    const/4 v2, 0x0
    invoke-static {v1, v2}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi$ThumbTask;->query(Landroid/content/ContentResolver;Z)Landroid/net/Uri;
    move-result-object v3
    if-eqz v3, :end
    :have
    new-instance v4, Landroid/util/Size;
    const/16 v5, 0x100
    invoke-direct {v4, v5, v5}, Landroid/util/Size;-><init>(II)V
    const/4 v5, 0x0
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    move-result-object v4
    if-eqz v4, :end
    new-instance v5, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi$ThumbTask;
    const/4 v6, 0x1
    invoke-direct {v5, v6, v0, v4}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi$ThumbTask;-><init>(ILandroid/widget/ImageButton;Landroid/graphics/Bitmap;)V
    invoke-virtual {v0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_t
    return-void

    :catch_t
    move-exception v0
    const-string v1, "InstantsGallery"
    const-string v2, "Thumbnail load failed; keeping gallery icon"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method
