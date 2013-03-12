.class Lcom/android/internal/widget/SPenGestureView$9$1;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SPenGestureView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/SPenGestureView$9;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SPenGestureView$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1714
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v2, v2, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #calls: Lcom/android/internal/widget/SPenGestureView;->SaveImage()Z
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$7300(Lcom/android/internal/widget/SPenGestureView;)Z

    .line 1715
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1716
    .local v1, suggestionInfo:Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1717
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.SUGGESTIONAPP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1718
    const-string v2, "suggestionType"

    const-string v3, "IMAGE_CROP"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    const-string v2, "cropPath"

    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v3, v3, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mImageFilePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/widget/SPenGestureView;->access$7400(Lcom/android/internal/widget/SPenGestureView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    const-string v2, "cropUri"

    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v3, v3, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mImageUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/internal/widget/SPenGestureView;->access$7500(Lcom/android/internal/widget/SPenGestureView;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1721
    const-string v2, "cropPathForAnimation"

    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v3, v3, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/widget/SPenGestureView;->access$7600(Lcom/android/internal/widget/SPenGestureView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    const-string v2, "cropUriForAnimation"

    iget-object v3, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v3, v3, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/internal/widget/SPenGestureView;->access$7700(Lcom/android/internal/widget/SPenGestureView;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1723
    const-string v2, "cropRect"

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v4, v4, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordXForIntent:I
    invoke-static {v4}, Lcom/android/internal/widget/SPenGestureView;->access$6200(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v5, v5, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordYForIntent:I
    invoke-static {v5}, Lcom/android/internal/widget/SPenGestureView;->access$6400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v6, v6, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordXForIntent:I
    invoke-static {v6}, Lcom/android/internal/widget/SPenGestureView;->access$6100(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v7, v7, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordYForIntent:I
    invoke-static {v7}, Lcom/android/internal/widget/SPenGestureView;->access$6300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1724
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1726
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v2, v2, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$7800(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1727
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v2, v2, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$200(Lcom/android/internal/widget/SPenGestureView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1728
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v2, v2, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsStartingSuggestionService:Z
    invoke-static {v2, v8}, Lcom/android/internal/widget/SPenGestureView;->access$7802(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 1729
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v2, v2, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$7900(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1730
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v2, v2, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$3400(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1731
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v2, v2, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$4000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1734
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v2, v2, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$8000(Lcom/android/internal/widget/SPenGestureView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1735
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v2, v2, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/widget/SPenGestureView;->access$8000(Lcom/android/internal/widget/SPenGestureView;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1736
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 1737
    iget-object v2, p0, Lcom/android/internal/widget/SPenGestureView$9$1;->this$1:Lcom/android/internal/widget/SPenGestureView$9;

    iget-object v2, v2, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsLiveCropThread:Z
    invoke-static {v2, v3}, Lcom/android/internal/widget/SPenGestureView;->access$902(Lcom/android/internal/widget/SPenGestureView;Z)Z

    .line 1738
    return-void
.end method
