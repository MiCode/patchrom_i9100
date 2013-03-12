.class Landroid/webkit/ZoomManager$PostScale;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostScale"
.end annotation


# instance fields
.field final mInPortraitMode:Z

.field final mInZoomOverviewBeforeSizeChange:Z

.field final mUpdateTextWrap:Z

.field final synthetic this$0:Landroid/webkit/ZoomManager;


# direct methods
.method public constructor <init>(Landroid/webkit/ZoomManager;ZZZ)V
    .locals 0
    .parameter
    .parameter "updateTextWrap"
    .parameter "inZoomOverview"
    .parameter "inPortraitMode"

    .prologue
    .line 1396
    iput-object p1, p0, Landroid/webkit/ZoomManager$PostScale;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1397
    iput-boolean p2, p0, Landroid/webkit/ZoomManager$PostScale;->mUpdateTextWrap:Z

    .line 1398
    iput-boolean p3, p0, Landroid/webkit/ZoomManager$PostScale;->mInZoomOverviewBeforeSizeChange:Z

    .line 1399
    iput-boolean p4, p0, Landroid/webkit/ZoomManager$PostScale;->mInPortraitMode:Z

    .line 1400
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1403
    iget-object v1, p0, Landroid/webkit/ZoomManager$PostScale;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1407
    iget-object v1, p0, Landroid/webkit/ZoomManager$PostScale;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v0

    .line 1408
    .local v0, newScale:F
    iget-object v1, p0, Landroid/webkit/ZoomManager$PostScale;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/ZoomManager$PostScale;->mInPortraitMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/ZoomManager$PostScale;->mInZoomOverviewBeforeSizeChange:Z

    if-eqz v1, :cond_0

    .line 1411
    iget-object v1, p0, Landroid/webkit/ZoomManager$PostScale;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    .line 1413
    :cond_0
    iget-object v1, p0, Landroid/webkit/ZoomManager$PostScale;->this$0:Landroid/webkit/ZoomManager;

    iget-boolean v2, p0, Landroid/webkit/ZoomManager$PostScale;->mUpdateTextWrap:Z

    const/4 v3, 0x1

    #calls: Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V
    invoke-static {v1, v0, v2, v3}, Landroid/webkit/ZoomManager;->access$2200(Landroid/webkit/ZoomManager;FZZ)V

    .line 1415
    iget-object v1, p0, Landroid/webkit/ZoomManager$PostScale;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->updateZoomPicker()V

    .line 1417
    iget-object v1, p0, Landroid/webkit/ZoomManager$PostScale;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 1420
    .end local v0           #newScale:F
    :cond_1
    return-void
.end method
