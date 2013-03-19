.class Lcom/sec/android/app/camera/widget/TwImageButton$1;
.super Landroid/view/OrientationEventListener;
.source "TwImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/TwImageButton;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwImageButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/TwImageButton;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 523
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton$1;->this$0:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 525
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton$1;->this$0:Lcom/sec/android/app/camera/widget/TwImageButton;

    #calls: Lcom/sec/android/app/camera/widget/TwImageButton;->roundOrientation(I)I
    invoke-static {v1, p1}, Lcom/sec/android/app/camera/widget/TwImageButton;->access$000(Lcom/sec/android/app/camera/widget/TwImageButton;I)I

    move-result v1

    add-int/lit8 v0, v1, 0x5a

    .line 531
    .local v0, degree:I
    const/16 v1, 0x168

    if-lt v0, v1, :cond_2

    .line 532
    add-int/lit16 v0, v0, -0x168

    .line 534
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton$1;->this$0:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget v1, v1, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton$1;->this$0:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton$1;->this$0:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    #calls: Lcom/sec/android/app/camera/widget/TwImageButton;->rotateButton(II)V
    invoke-static {v1, v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->access$100(Lcom/sec/android/app/camera/widget/TwImageButton;II)V

    .line 539
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton$1;->this$0:Lcom/sec/android/app/camera/widget/TwImageButton;

    iput v0, v1, Lcom/sec/android/app/camera/widget/TwImageButton;->mLastOrientation:I

    goto :goto_0
.end method
