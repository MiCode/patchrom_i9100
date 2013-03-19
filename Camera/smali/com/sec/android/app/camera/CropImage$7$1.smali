.class Lcom/sec/android/app/camera/CropImage$7$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CropImage$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CropImage$7;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage$7;)V
    .locals 0
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 782
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 783
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 784
    .local v1, rect:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    #calls: Lcom/sec/android/app/camera/CropImage$7;->handleBlinkFace(Landroid/graphics/RectF;)V
    invoke-static {v3, v1}, Lcom/sec/android/app/camera/CropImage$7;->access$900(Lcom/sec/android/app/camera/CropImage$7;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 786
    .end local v1           #rect:Landroid/graphics/RectF;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    const v4, 0x7f0900bd

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 789
    .local v2, t:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 792
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #t:Landroid/widget/Toast;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-boolean v3, v3, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-boolean v3, v3, Lcom/sec/android/app/camera/CropImage;->mRectCrop:Z

    if-eqz v3, :cond_3

    .line 793
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    #calls: Lcom/sec/android/app/camera/CropImage$7;->makeDefault()V
    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage$7;->access$1000(Lcom/sec/android/app/camera/CropImage$7;)V

    .line 794
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CropImageView;->invalidate()V

    .line 795
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v6, :cond_3

    .line 796
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v4, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    #getter for: Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;
    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v5, v5, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CropImage;->getBlinkRectCnt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/HighlightView;

    iput-object v3, v4, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    .line 797
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/HighlightView;->setFocus(Z)V

    .line 798
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/HighlightView;->invalidate()V

    .line 833
    :cond_3
    return-void
.end method
