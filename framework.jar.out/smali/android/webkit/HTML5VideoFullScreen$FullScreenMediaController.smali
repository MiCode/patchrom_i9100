.class Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;
.super Landroid/widget/MediaController;
.source "HTML5VideoFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FullScreenMediaController"
.end annotation


# instance fields
.field mVideoView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0
    .parameter "context"
    .parameter "video"
    .parameter "useFastForward"

    .prologue
    .line 448
    invoke-direct {p0, p1, p3}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    .line 449
    iput-object p2, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    .line 450
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 466
    :cond_0
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    .line 467
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 454
    invoke-super {p0}, Landroid/widget/MediaController;->show()V

    .line 455
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 458
    :cond_0
    return-void
.end method
