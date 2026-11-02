.class public final Lapp/morphe/extension/instagram/patches/instants/GalleryIconScope;
.super Ljava/lang/Object;
.source "GalleryIconScope.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private final fragment:LX/XPO;

.field private final root:Landroid/view/View;


# direct methods
.method private constructor <init>(LX/XPO;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryIconScope;->fragment:LX/XPO;

    iput-object p2, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryIconScope;->root:Landroid/view/View;

    return-void
.end method

.method public static watch(LX/XPO;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lapp/morphe/extension/instagram/patches/instants/GalleryIconScope;

    invoke-direct {v1, p0, p1}, Lapp/morphe/extension/instagram/patches/instants/GalleryIconScope;-><init>(LX/XPO;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->current()Landroid/widget/ImageButton;

    move-result-object v3

    if-eqz v3, :cond_3a

    iget-object v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryIconScope;->fragment:LX/XPO;

    iget-object v1, v1, LX/XPO;->A03:Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;

    invoke-static {v1}, Lapp/morphe/extension/instagram/patches/instants/InstantsGalleryUi;->owns(Lcom/instagram/quicksnap/camera/domain/QuickSnapCameraViewModel;)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryIconScope;->fragment:LX/XPO;

    invoke-virtual {v1}, LX/XPO;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryIconScope;->root:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lapp/morphe/extension/instagram/patches/instants/GalleryIconScope;->fragment:LX/XPO;

    iget-object v1, v1, LX/XPO;->A0C:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, LX/Zss;->A02:LX/Zss;

    if-ne v1, v4, :cond_3b

    move v1, v2

    :goto_2f
    if-eqz v1, :cond_3d

    :goto_31
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_3a

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3a
    return v2

    :cond_3b
    move v1, v0

    goto :goto_2f

    :cond_3d
    const/16 v0, 0x8

    goto :goto_31
.end method
