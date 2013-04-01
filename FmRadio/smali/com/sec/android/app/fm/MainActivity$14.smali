.class Lcom/sec/android/app/fm/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->myOnCreate()V
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
    .line 2933
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$14;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 5
    .parameter "parentView"
    .parameter "hpw"

    .prologue
    const v4, 0x7f0a0075

    .line 2938
    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->getContent()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2939
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$14;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2940
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$14;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 2942
    .local v0, currentVolume:I
    if-nez v0, :cond_1

    .line 2943
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity$14;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const v3, 0x7f0a0063

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2947
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    .line 2949
    .end local v0           #currentVolume:I
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 2945
    .restart local v0       #currentVolume:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$14;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
