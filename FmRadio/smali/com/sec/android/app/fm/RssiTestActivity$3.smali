.class Lcom/sec/android/app/fm/RssiTestActivity$3;
.super Ljava/lang/Object;
.source "RssiTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RssiTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RssiTestActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RssiTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sec/android/app/fm/RssiTestActivity$3;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/RssiTestActivity$3;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    iget-object v3, p0, Lcom/sec/android/app/fm/RssiTestActivity$3;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mEditRssi:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/android/app/fm/RssiTestActivity;->access$400(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    #setter for: Lcom/sec/android/app/fm/RssiTestActivity;->mRssi:I
    invoke-static {v2, v3}, Lcom/sec/android/app/fm/RssiTestActivity;->access$202(Lcom/sec/android/app/fm/RssiTestActivity;I)I

    .line 170
    iget-object v2, p0, Lcom/sec/android/app/fm/RssiTestActivity$3;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    iget-object v3, p0, Lcom/sec/android/app/fm/RssiTestActivity$3;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mEditStartFreq:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/android/app/fm/RssiTestActivity;->access$500(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    #setter for: Lcom/sec/android/app/fm/RssiTestActivity;->mStartFreq:J
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/fm/RssiTestActivity;->access$802(Lcom/sec/android/app/fm/RssiTestActivity;J)J

    .line 171
    iget-object v2, p0, Lcom/sec/android/app/fm/RssiTestActivity$3;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    iget-object v3, p0, Lcom/sec/android/app/fm/RssiTestActivity$3;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mEditEndFreq:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/android/app/fm/RssiTestActivity;->access$600(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    #setter for: Lcom/sec/android/app/fm/RssiTestActivity;->mEndFreq:J
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/fm/RssiTestActivity;->access$902(Lcom/sec/android/app/fm/RssiTestActivity;J)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/fm/RssiTestActivity$3;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    invoke-static {v2}, Lcom/sec/android/app/fm/RssiTestActivity;->access$000(Lcom/sec/android/app/fm/RssiTestActivity;)Lcom/samsung/media/fmradio/FMPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/media/fmradio/FMPlayer;->on()Z

    .line 184
    iget-object v2, p0, Lcom/sec/android/app/fm/RssiTestActivity$3;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/RssiTestActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 185
    .local v1, volume:I
    iget-object v2, p0, Lcom/sec/android/app/fm/RssiTestActivity$3;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    iget-object v2, v2, Lcom/sec/android/app/fm/RssiTestActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 191
    .end local v1           #volume:I
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/sec/android/app/fm/RssiTestActivity$3;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    iget-object v3, p0, Lcom/sec/android/app/fm/RssiTestActivity$3;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    const-string v4, "Wrong number format"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/sec/android/app/fm/RssiTestActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/sec/android/app/fm/RssiTestActivity;->access$1002(Lcom/sec/android/app/fm/RssiTestActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 174
    iget-object v2, p0, Lcom/sec/android/app/fm/RssiTestActivity$3;->this$0:Lcom/sec/android/app/fm/RssiTestActivity;

    #getter for: Lcom/sec/android/app/fm/RssiTestActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/fm/RssiTestActivity;->access$1000(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 176
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 177
    :catch_1
    move-exception v2

    goto :goto_0

    .line 186
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 188
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_3
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 189
    :catch_3
    move-exception v2

    goto :goto_0
.end method
