.class public final Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor$Touch;
.super Ljava/lang/Object;
.source "InstantsGalleryEditor.java"

.implements Landroid/view/View$OnTouchListener;

.field private final detector:Landroid/view/GestureDetector;

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    new-instance v0, Landroid/view/GestureDetector;
    new-instance v1, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor$Swipe;
    invoke-direct {v1}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor$Swipe;-><init>()V
    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    iput-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor$Touch;->detector:Landroid/view/GestureDetector;
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    iget-object v0, p0, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryEditor$Touch;->detector:Landroid/view/GestureDetector;
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    move-result v0
    return v0
.end method
