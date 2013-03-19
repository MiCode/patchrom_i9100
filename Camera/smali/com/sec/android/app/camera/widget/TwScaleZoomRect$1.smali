.class Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;
.super Landroid/view/OrientationEventListener;
.source "TwScaleZoomRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;->this$0:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 132
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    .line 137
    .local v0, degree:I
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;->this$0:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    #calls: Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->roundOrientation(I)I
    invoke-static {v1, p1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->access$000(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;I)I

    move-result v1

    add-int/lit8 v0, v1, 0x5a

    .line 142
    const/16 v1, 0x168

    if-lt v0, v1, :cond_2

    .line 143
    add-int/lit16 v0, v0, -0x168

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;->this$0:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    #getter for: Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I
    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->access$100(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;->this$0:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    #setter for: Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->access$102(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;I)I

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;->this$0:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->invalidate()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    goto :goto_0
.end method
