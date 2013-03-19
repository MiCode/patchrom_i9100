.class Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$1;
.super Landroid/view/OrientationEventListener;
.source "TwGLThumnailListMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 80
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {p1}, Lcom/sec/android/glview/TwGLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    .line 84
    .local v0, newOrientation:I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mLastOrientation:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->onMenuRotated(I)V

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->mLastOrientation:I
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;->access$102(Lcom/sec/android/app/camera/glwidget/TwGLThumnailListMenu;I)I

    goto :goto_0
.end method
