.class Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;
.super Landroid/content/BroadcastReceiver;
.source "FMListPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->registerMediaButtonProcessListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/16 v11, 0x28

    const/4 v10, 0x4

    const/4 v9, 0x1

    const-wide/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.fm.listplayer.Media_Button_Recieved"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    const-string v4, "com.sec.android.fm.listplayer.button"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 139
    .local v2, mediaButton:I
    const-string v4, "com.sec.android.fm.listplayer.repeat"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 140
    .local v3, repeatecount:I
    const-string v4, "com.sec.android.fm.listplayer.iskeydown"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 142
    .local v1, isKeyDown:Z
    if-eqz v1, :cond_7

    .line 143
    const-string v4, "FMListPlayerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerMediaButtonProcessListener() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    packed-switch v2, :pswitch_data_0

    .line 230
    .end local v1           #isKeyDown:Z
    .end local v2           #mediaButton:I
    .end local v3           #repeatecount:I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 149
    .restart local v1       #isKeyDown:Z
    .restart local v2       #mediaButton:I
    .restart local v3       #repeatecount:I
    :pswitch_1
    if-nez v3, :cond_0

    .line 150
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->pausePlay()V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPaused()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 153
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->resumePlay()V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    #getter for: Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mCurrentPlayingId:J
    invoke-static {v4}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$000(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 159
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    #getter for: Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mCurrentPlayingId:J
    invoke-static {v6}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$000(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->startPlay(Landroid/net/Uri;)Z

    goto :goto_0

    .line 170
    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$100()I

    move-result v4

    if-le v4, v11, :cond_4

    .line 171
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    #setter for: Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->TempLongKeyCnt:I
    invoke-static {v4, v10}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$202(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;I)I

    .line 176
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPosition()I

    move-result v0

    .line 178
    .local v0, cpos:I
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    #getter for: Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->TempLongKeyCnt:I
    invoke-static {v4}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$200(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v0, v4

    .line 180
    invoke-static {}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$100()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_3

    .line 181
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v4, v0, v9}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->seek(IZ)V

    .line 184
    :cond_3
    invoke-static {}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$108()I

    goto :goto_0

    .line 173
    .end local v0           #cpos:I
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-static {}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$100()I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    #setter for: Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->TempLongKeyCnt:I
    invoke-static {v4, v5}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$202(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;I)I

    goto :goto_1

    .line 190
    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$100()I

    move-result v4

    if-le v4, v11, :cond_6

    .line 191
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    #setter for: Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->TempLongKeyCnt:I
    invoke-static {v4, v10}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$202(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;I)I

    .line 196
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPosition()I

    move-result v0

    .line 198
    .restart local v0       #cpos:I
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    #getter for: Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->TempLongKeyCnt:I
    invoke-static {v4}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$200(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit16 v4, v4, 0x3e8

    sub-int/2addr v0, v4

    .line 200
    invoke-static {}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$100()I

    move-result v4

    rem-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_5

    .line 201
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v4, v0, v9}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->seek(IZ)V

    .line 204
    :cond_5
    invoke-static {}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$108()I

    goto/16 :goto_0

    .line 193
    .end local v0           #cpos:I
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-static {}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$100()I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    #setter for: Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->TempLongKeyCnt:I
    invoke-static {v4, v5}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$202(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;I)I

    goto :goto_2

    .line 216
    :cond_7
    packed-switch v2, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_0

    .line 218
    :pswitch_5
    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;->this$0:Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->stopPlay()V

    goto/16 :goto_0

    .line 223
    :pswitch_6
    invoke-static {v6}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->access$102(I)I

    goto/16 :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 216
    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
