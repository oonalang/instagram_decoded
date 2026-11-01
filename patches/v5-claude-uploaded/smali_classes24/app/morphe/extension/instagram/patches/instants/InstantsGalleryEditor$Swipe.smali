.class public final Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor$Swipe;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "InstantsGalleryEditor.java"

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    const/4 v0, 0x1
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F
    move-result v0
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F
    move-result v1
    cmpl-float v2, v0, v1
    if-lez v2, :no
    const/high16 v1, 0x44480000
    cmpl-float v2, v0, v1
    if-lez v2, :no
    const/4 v2, 0x0
    cmpg-float v3, p3, v2
    if-gez v3, :prev
    const/4 v3, 0x1
    invoke-static {v3}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->step(Z)V
    goto :yes
    :prev
    const/4 v3, 0x0
    invoke-static {v3}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor;->step(Z)V
    :yes
    const/4 v0, 0x1
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method
