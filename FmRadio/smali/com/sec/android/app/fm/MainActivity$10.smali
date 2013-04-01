.class Lcom/sec/android/app/fm/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2705
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$10;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2708
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$10;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2709
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$10;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2710
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$10;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2711
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$10;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$6800(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 2714
    :goto_0
    return-void

    .line 2713
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$10;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$6800(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    goto :goto_0
.end method
