.class Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$10;
.super Ljava/lang/Object;
.source "RecordedFileListPlayerActivity.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$10;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 5
    .parameter "parentView"
    .parameter "hpw"

    .prologue
    const/4 v4, 0x1

    .line 616
    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 617
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$10;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    const v3, 0x7f0a0075

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$10;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #getter for: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$1000(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    invoke-virtual {p2, v0}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    .line 620
    return v4
.end method
